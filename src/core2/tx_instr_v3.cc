// ============================================================================
// Instruction-Level Abstraction of LeWiz Communications Ethernet MAC
//
// This Instruction-Level Abstraction (ILA) description is derived based on the
// LeWiz Communications Ethernet MAC (LMAC), which is licensed under GNU LGPL.
// Check "LICENSE" which comes with this distribution for more information.
// ============================================================================
//
// File Name: tx_instr.cc

// TX FIFO instructions
// 1. Write the FIFO of the TX path
// 2. Set the TX path back-to-back counter. (interval between two packets)
// 3. Read the package byte count
// 4. Write the payload
// 5. Write the last QWord of the packet -- CRC code and EOF

// There are also Pause Function from RX waiting to be implemented.


#include <lmac/core2/lmac_core_top.h>
#include <lmac/core2/configs.h>

#include <ilang/util/log.h>

namespace ilang {

void WrPktFIFO(Ila& m, const std::string& name = "TX_WR_PKT_FIFO");
void SetB2BCntr(Ila& m, const std::string& name = "TX_SET_B2B_CNTR");
void RdByteCnt(Ila& m, const std::string& name = "TX_Rd_BYTE_CNT");
void WrPktPayload(Ila& m, const std::string& name = "TX_WR_PKT_PAYLOAD");
void WrLastOne(Ila& m, const std::string& name = "TX_WR_LAST_ONE");


void LmacCore2::SetupTxInstr(Ila& m) {

// 1. Write the FIFO of the TX path
  WrPktFIFO(m);
// 2. Set the TX path back-to-back counter. (interval between two packets)
  SetB2BCntr(m);
// 3. Read the package byte count
  RdByteCnt(m);
// 4. Write the payload
  WrPktPayload(m);
// 5. Write the last QWord of the packet -- CRC code and EOF
  WrLastOne(m;)


  return;
}

/********** Added by Yi Li **************/
auto crc_polynomial = ilang::BvConst(0xEDB88320, 32);

// crc look up table for half-byte crc generation.
unsigned CRC_Lut[16] = {
  0x00000000,0x1DB71064,0x3B6E20C8,0x26D930AC,0x76DC4190,0x6B6B51F4,0x4DB26158,0x5005713C,
  0xEDB88320,0xF00F9344,0xD6D6A3E8,0xCB61B38C,0x9B64C2B0,0x86D3D2D4,0xA00AE278,0xBDBDF21C
};

void WrPktFIFO(Ila& m, const std::string& name) {
  // This instruction model the writing data into FIFO of TX
  {
    auto instr = m.NewInstr("WR_PKT_DATA_FIFO");

    // decode
    auto wr_enable = (m.input(TX_WE) == TX_WE_V_VALID);
    auto fifo_non_full = (m.state(TXFIFO_FULL) != TXFIFO_FULL_V_FULL);
    // instr.SetDecode(BoolConst(true));

    // update
    instr.SetUpdate(TXFIFO_BUFF, Store(TXFIFO_BUFF, TXFIFO_BUFF_WR_PTR, m.input(TX_DATA)) );
    instr.SetUpdate(m.state(TXFIFO_BUFF_WR_PTR), m.state(TXFIFO_BUFF_WR_PTR) + 0x1);
    instr.SetUpdate(m.state(TXFIFO_WUSED_QWD), m.state(TXFIFO_WUSED_QWD) + 0x1);
    instr.SetUpdate(m.state(TXFIFO_FULL), Ite((m.state(TXFIFO_WUSED_QWD) == 1024), 1, 0));
  }

  return;

}

void SetB2BCntr(Ila& m, const std::string& name) {
  // This instruction is to set the b2b counter, controlling the interval between two packets.
  // When the TX is at idle state, the b2b counter needs to count down from a given state.
  // we first focus on the mode_10G
  {
    auto instr = m.NewInstr("SET_B2B_CNTR_10G");

    // decode 
    auto mode_10G = (m.input(MODE_10G) == 1);
    auto state_idle = (m.state(TX_STATE) == TX_STATE_IDLE);
    auto cntr_non_zero = (m.state(TX_B2B_CNTR) > 0);
    auto non_insert_crc = (m.state(TX_INSERT_CRC) == 0);

    instr.SetDecode(mode_10G & state_idle & cntr_non_zero & non_insert_crc);

    // State Update
    instr.SetUpdate(m.state(TX_B2B_CNTR), m.state(TX_B2B_CNTR) - 1);
    instr.SetUpdate(m.state(XGMII_DOUT_REG), 0x0707070707070707);
    instr.SetUpdate(m.state(XGMII_COUT_REG), 0xFF);

  }

  return;
}

    instr.SetUpdate(m.state(TX_STATE), Ite((m.state(Tx_B2B_CNTR) == 0), TX_STATE_RD_SIZE, m.state(TX_STATE));

void RdByteCnt(Ila& m, const std::string& name) {
  // This instruction is to read the first qword of the packet from user, which contains the size of the packet
  // Corresponding to the state GET_WAIT_2 of the state machine in xgmii
  {
    auto instr = m.NewInstr("READ_BYTE_CNT_10G");

    // decode 
    auto mode_10G = (m.input(MODE_10G) == 1);
    auto b2b_ok = (m.state(TX_B2B_CNTR) == 0);
    auto fifo_non_empty = (m.state(TXFIFO_WUSED_QWD) > 0);

    instr.SetDecode(mode_10G & b2b_ok & fifo_non_empty);

    // State Update
    // read FIFO
    instr.SetUpdate(m.state(TXFIFO_RD_OUTPUT), Load(TXFIFO_BUFF, TXFIFO_BUFF_RD_PTR));
    instr.SetUpdate(m.state(TXFIFO_BUFF_RD_PTR), m.state(TXFIFO_BUFF_RD_PTR) + 1);
    instr.SetUpdate(m.state(TXFIFO_WUSED_QWD), m.state(TXFIFO_WUSED_QWD) - 1);

    // states update
    instr.SetUpdate(m.state(TX_PACKET_BYTE_CNT), Extract(m.state(TXFIFO_RD_OUTPUT), 15, 0));

    // Updating the qword count in bytes
    auto bcnt_h = Extract(m.state(TX_PACKET_BYTE_CNT), 15, 3);
    auto bcnt_l = Extract(m.state(TX_PACKET_BYTE_CNT), 2, 0);
    auto wcnt = Ite((bcnt_l > 0), Concat((bcnt_h + 1), BvConst(0x0, 3)), Concat(bcnt_h, BvConst(0x0, 3)));

    instr.SetUpdate(m.state(TX_WCNT), (wcnt - 1));
    instr.SetUpdate(m.state(TX_WCNT_INI), (wcnt - 1));

    // State machine update
    instr.SetUpdate(m.state(TX_STATE), TX_STATE_DAT);

    // Output Update 
    // Be Careful!!! The output state is actually 1 clk behind the other arch states in this step!
    // I put the B2B CNTR here 
    instr.SetUpdate(m.state(XGMII_DOUT_REG), 0xD5555555555555FB);
    instr.SetUpdate(m.state(XGMII_COUT_REG), 0x01);
    instr.SetUpdate(m.state(TX_B2B_CNTR), TX_B2B_CNTR_INITIAL);



    // Set initial value of the CRC. This initial value is the output data. However the one that participates in the generation is different.
    auto rb = ilang::Extract(m.state(TX_PACKET_BYTE_CNT, 2, 0)); // rb stands for residual bytes
    instr.SetUpdate(m.state(CRC), Ite((rb == 0x0), 0x00000000,
                                  Ite((rb == 0x1), 0x56a579b9,
                                  Ite((rb == 0x2), 0xe962b350,
                                  Ite((rb == 0x3), 0x3306840b,
                                  Ite((rb == 0x4), 0x9d0ad96d,
                                  Ite((rb == 0x5), 0x7ed9d15c,
                                  Ite((rb == 0x6), 0x6f62e365,
                                  Ite((rb == 0x7), 0x26706a0f))))))))
                    );
    
    instr.SetUpdate(m.state(CRC_IN), Ite((rb == 0x0), 0xffffffff,
                                  Ite((rb == 0x1), 0x46865aa9,
                                  Ite((rb == 0x2), 0xaf4c9d16,
                                  Ite((rb == 0x3), 0xf47bf9cc,
                                  Ite((rb == 0x4), 0x9226f562,
                                  Ite((rb == 0x5), 0xa32e2681,
                                  Ite((rb == 0x6), 0x9a1c9d90,
                                  Ite((rb == 0x7), 0xf0958fd9))))))))
                    );
  }

  return;
}

void WrPktPayload(Ila& m, const std::string& name) {
  // Writing the payload of the packet

  {
    auto instr = m.NewInstr("WR_PKT_PAYLOAD_10G");

    // decode
    auto mode_10G = (m.input(MODE_10G) == 1);
    auto state_dat = (m.state(TX_STATE) == TX_STATE_DAT);

    instr.SetDecode(mode_10G & state_dat);

    // Set Update

    // Read data from FIFO
    instr.SetUpdate(m.state(TXFIFO_RD_OUTPUT), Load(TXFIFO_BUFF, TXFIFO_BUFF_RD_PTR));
    instr.SetUpdate(m.state(TXFIFO_BUFF_RD_PTR), m.state(TXFIFO_BUFF_RD_PTR) + 1);
    instr.SetUpdate(m.state(TXFIFO_WUSED_QWD), m.state(TXFIFO_WUSED_QWD) - 1);

    // CRC code Update

    // fq stands for first qword of the whole packet. When the remaining bytes equals to the byte count, it is the fisrt qword.
    auto fq = (m.state(TX_WCNT) == m.state(TX_WCNT_INI));
    auto rb = ilang::Extract(m.state(TX_PACKET_BYTE_CNT, 2, 0));

    // CRC code update
    instr.SetUpdate(m.state(CRC_DAT_IN), Ite(fq, Ite((rb == 0x0), m.state(TXFIFO_RD_OUTPUT),
                                              Ite((rb == 0x1), ilang::Concat(ilang::Extract(m.state(TXFIFO_RD_OUTPUT),  7, 0), BvConst(0x0, 56)),
                                              Ite((rb == 0x2), ilang::Concat(ilang::Extract(m.state(TXFIFO_RD_OUTPUT), 15, 0), BvConst(0x0, 48)),
                                              Ite((rb == 0x3), ilang::Concat(ilang::Extract(m.state(TXFIFO_RD_OUTPUT), 23, 0), BvConst(0x0, 40)),
                                              Ite((rb == 0x4), ilang::Concat(ilang::Extract(m.state(TXFIFO_RD_OUTPUT), 31, 0), BvConst(0x0, 32)),
                                              Ite((rb == 0x5), ilang::Concat(ilang::Extract(m.state(TXFIFO_RD_OUTPUT), 39, 0), BvConst(0x0, 24)),
                                              Ite((rb == 0x6), ilang::Concat(ilang::Extract(m.state(TXFIFO_RD_OUTPUT), 47, 0), BvConst(0x0, 16)),
                                              Ite((rb == 0x7), ilang::Concat(ilang::Extract(m.state(TXFIFO_RD_OUTPUT), 55, 0), BvConst(0x0, 8)))))))))),

                                              Ite((rb == 0x0), m.state(TXFIFO_RD_OUTPUT),
                                              Ite((rb == 0x1), ilang::Concat(ilang::Extract(m.state(TXFIFO_RD_OUTPUT),  7, 0), ilang::Extract(m.state(TX_BUF),  63, 8)),
                                              Ite((rb == 0x2), ilang::Concat(ilang::Extract(m.state(TXFIFO_RD_OUTPUT), 15, 0), ilang::Extract(m.state(TX_BUF),  63, 16)),
                                              Ite((rb == 0x3), ilang::Concat(ilang::Extract(m.state(TXFIFO_RD_OUTPUT), 23, 0), ilang::Extract(m.state(TX_BUF),  63, 24)),
                                              Ite((rb == 0x4), ilang::Concat(ilang::Extract(m.state(TXFIFO_RD_OUTPUT), 31, 0), ilang::Extract(m.state(TX_BUF),  63, 32)),
                                              Ite((rb == 0x5), ilang::Concat(ilang::Extract(m.state(TXFIFO_RD_OUTPUT), 39, 0), ilang::Extract(m.state(TX_BUF),  63, 40)),
                                              Ite((rb == 0x6), ilang::Concat(ilang::Extract(m.state(TXFIFO_RD_OUTPUT), 47, 0), ilang::Extract(m.state(TX_BUF),  63, 48)),
                                              Ite((rb == 0x7), ilang::Concat(ilang::Extract(m.state(TXFIFO_RD_OUTPUT), 55, 0), ilang::Extract(m.state(TX_BUF),  63, 56))))))))))
                                  
                                  ));
    
    // This buffer should be placed after the CRC update.
    instr.SetUpdate(m.state(TX_BUF), m.state(TXFIFO_RD_OUTPUT));

    // CRC generation, using half_byte algorithm. reference: https://create.stephan-brumme.com/crc32/#half-byte
    auto crc_g = m.state(CRC_IN);
    auto data = m.state(CRC_DAT_IN);
    // The current stores the byte that generator takes. 
    auto current;
    
    for (auto len = 0; len < 8; len++) {
      current = ilang::Extract(data, (8*len + 7), 8*len);
      crc_g = CRC_Lut[(crc_g ^ current) & 0x0F] ^ (crc_g >> 4);
      crc_g = CRC_Lut[(crc_g ^ (current >> 4)) & 0x0F] ^ (crc_g >> 4);
    }

    // update CRC code input for the generator;
    instr.SetUpdate(m.state(CRC_IN), crc_g);
    // update the CRC output. Needs transformation.
    auto crc_code = ~(((crc_g >> 24) & 0x000000FF) | ((crc_g >> 8) & 0x0000FF00) | ((crc_g << 8) & 0x00FF0000) | ((crc_g << 24) & 0xFF000000));
    instr.SetUpdate(m.state(CRC), crc_code);
    // when output the crc code, we need to change the endian of the code.
    auto crc_output = ((crc_code >> 24) & 0x000000FF) | ((crc_code >> 8) & 0x0000FF00) | ((crc_code << 8) & 0x00FF0000) | ((crc_code << 24) & 0xFF000000);
    /******* CRC code update  finished ***********/

    // Update output
    auto wcnt = m.state(TX_WCNT);
    instr.SetUpdate(m.state(XGMII_COUT_REG), Ite((wcnt >= 0), 0x00,
                                             Ite((wcnt < 0), Ite((rb == 0), 0x00,
                                                              Ite((rb == 1), 0xE0,
                                                              Ite((rb == 2), 0xC0,
                                                              Ite((rb == 3), 0x80,
                                                              Ite((rb == 4), 0x00,
                                                              Ite((rb == 5), 0x00,
                                                              Ite((rb == 6), 0x00,
                                                                             0x00))))))), 0x00)));
                                                              
                                                              
                                                              Ite((rb == 0), 0xF0,
                                                              Ite((rb == 1), 0xFF,
                                                              Ite((rb == 2), 0xFF,
                                                              Ite((rb == 3), 0xFF,
                                                              Ite((rb == 4), 0xFF,
                                                              Ite((rb == 5), 0xFE,
                                                              Ite((rb == 6), 0xFC,
                                                                             0xF8))))))))));

    auto dat = m.state(TXFIFO_RD_OUTPUT);
    instr.SetUpdate(m.state(XGMII_DOUT_REG), Ite((wcnt >= 0), dat,
                                             Ite((wcnt < 0), Ite((rb == 0), m.state(TXFIFO_RD_OUTPUT),
                                                              Ite((rb == 1), Concat(BvConst(0x0707FD, 24), Concat(crc_output, Extract(dat, 7, 0))),
                                                              Ite((rb == 2), Concat(BvConst(0x07FD, 16), Concat(crc_output, Extract(dat, 15, 0))),
                                                              Ite((rb == 3), Concat(BvConst(0xFD, 8), Concat(crc_output, Extract(dat, 23, 0))),
                                                              Ite((rb == 4), Concat(crc_output, dat),
                                                              Ite((rb == 5), Concat(Extract(crc_output, 23, 0), Extract(dat, 39, 0)),
                                                              Ite((rb == 6), Concat(Extract(crc_output, 15, 0), Extract(dat, 47, 0)),
                                                                             Concat(Extract(crc_output, 7, 0), Extract(dat, 55, 0))))))))), dat)));
                                                              
                                                              
                                                              Ite((rb == 0), Concat(BvConst(0x070707FD, 32), crc_output),
                                                              Ite((rb == 1), BvConst(0x0707070707070707, 64),
                                                              Ite((rb == 2), BvConst(0x0707070707070707, 64),
                                                              Ite((rb == 3), BvConst(0x0707070707070707, 64),
                                                              Ite((rb == 4), BvConst(0x07070707070707FD, 64),
                                                              Ite((rb == 5), Concat(BvConst(0x070707070707FD, 56), Extract(crc_output, 31, 24)),
                                                              Ite((rb == 6), Concat(BvConst(0x0707070707FD, 48), Extract(crc_output, 31, 16)),
                                                                             Concat(BvConst(0x07070707FD, 40), Extract(crc_output, 31, 8))))))))))));
                                                                            
    // Update the wcnt
    instr.SetUpdate(m.state(TX_STATE), Ite((wcnt < 0), TX_STATE_CRC, TX_STATE_DAT));
    instr.SetUpdate(m.state(TX_WCNT), wcnt - 8);
  }
  
  
  return;
}

void WrPktLastOne(Ila& m, const std::string& name) {
  // This is for writing the EOF and the remaining CRC code
  {
    auto instr = m.NewInstr("WR_PKT_LASTONE_10G");

    // decode 
    auto 
  }
}