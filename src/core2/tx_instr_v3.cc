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

#include <iostream>

#include <ilang/util/log.h>

namespace ilang {

void WrPktFIFO(Ila& m, const std::string& name = "TX_WR_PKT_FIFO");
void SetB2BCntr(Ila& m, const std::string& name = "TX_SET_B2B_CNTR");
void RdByteCnt(Ila& m, const std::string& name = "TX_Rd_BYTE_CNT");
void WrPktPayload(Ila& m, const std::string& name = "TX_WR_PKT_PAYLOAD");
void WrPktLastOne(Ila& m, const std::string& name = "TX_WR_LAST_ONE");


void LmacCore2::SetupTxInstr(Ila& m) {

// 1. Write the FIFO of the TX path
  //ILA_INFO << "before setting WrFIFO instr";
  WrPktFIFO(m);
// 2. Set the TX path back-to-back counter. (interval between two packets)
  //ILA_INFO << "before setting B2Bcounter instr";
  SetB2BCntr(m);
// 3. Read the package byte count
  //ILA_INFO << "before setting RdByteCnt instr";
  RdByteCnt(m);
// 4. Write the payload
  //ILA_INFO << "before setting WrPktPayload instr";
  WrPktPayload(m);
// 5. Write the last QWord of the packet -- CRC code and EOF
  //ILA_INFO << "before setting WrPktLastOne instr";
  WrPktLastOne(m);


  return;
}

/********** Added by Yi Li **************/
auto crc_polynomial = BvConst(0xEDB88320, 32);

// crc look up table for half-byte crc generation.
unsigned CRC_Lut[16] = {
  0x00000000,0x1DB71064,0x3B6E20C8,0x26D930AC,0x76DC4190,0x6B6B51F4,0x4DB26158,0x5005713C,
  0xEDB88320,0xF00F9344,0xD6D6A3E8,0xCB61B38C,0x9B64C2B0,0x86D3D2D4,0xA00AE278,0xBDBDF21C
};

ExprRef lut_read(const ExprRef& idx) {
  assert(idx.bit_width() == 4);

  ExprRef ret = BvConst(CRC_Lut[0], 32);
  for (int i = 1; i < 16; i++) {
    ret = Ite(idx == i, BvConst(CRC_Lut[i], 32), ret);
  }
  return ret;
}

void WrPktFIFO(Ila& m, const std::string& name) {
  // This instruction model the writing data into FIFO of TX
  {
    //ILA_INFO << "WrFIFO: before new instr";
    auto instr = m.NewInstr("WR_PKT_DATA_FIFO");

    // decode
    //ILA_INFO << "WrFIFO: before decode";
    auto wr_enable = (m.input(TX_WE) == TX_WE_V_VALID);
    auto fifo_non_full = (m.state(TXFIFO_FULL) != TXFIFO_FULL_V_FULL);
    
    instr.SetDecode(wr_enable & fifo_non_full);
    //ILA_INFO << "decode " << instr.GetDecode();
    

    auto fifo = m.state(TXFIFO_BUFF);
    auto wr_ptr = m.state(TXFIFO_BUFF_WR_PTR);
    auto data_in = m.input(TX_DATA);
    //ILA_INFO << "before writing fifo";
    //for (auto i = 0; i != m.state_num(); i++) {
//	    ILA_INFO << m.state(i);
  //  }
    // ILA_NOT_NULL(fifo);
    ILA_INFO << fifo << wr_ptr << data_in;
    // update
    instr.SetUpdate(fifo, Store(fifo, wr_ptr, data_in) );
    ILA_INFO << "before updating wr_ptr";
    instr.SetUpdate(m.state(TXFIFO_BUFF_WR_PTR), m.state(TXFIFO_BUFF_WR_PTR) + 0x1);
    ILA_INFO << "before updating wused_qwd";
    instr.SetUpdate(m.state(TXFIFO_WUSED_QWD), m.state(TXFIFO_WUSED_QWD) + 0x1);
    instr.SetUpdate(m.state(TXFIFO_FULL), Ite((m.state(TXFIFO_WUSED_QWD) == 1024), BvConst(0x1, TXFIFO_FULL_BWID), BvConst(0x0, TXFIFO_FULL_BWID)));
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
    auto state_encap_idle = (m.state(TX_STATE_ENCAP) == TX_STATE_ENCAP_IDLE);
    auto cntr_non_zero = (m.state(TX_B2B_CNTR) > 0);

    instr.SetDecode(mode_10G & state_idle & state_encap_idle & cntr_non_zero);

    // State Update
    instr.SetUpdate(m.state(TX_B2B_CNTR), m.state(TX_B2B_CNTR) - 1); // 1 clk
    instr.SetUpdate(m.state(XGMII_DOUT_REG), Concat(BvConst(0x07070707, 32), BvConst(0x07070707, 32))); // 1 clk
    instr.SetUpdate(m.state(XGMII_COUT_REG), BvConst(0xFF, XGMII_COUT_REG_BWID)); // 1 clk

  }

  return;
}


void RdByteCnt(Ila& m, const std::string& name) {
  // This instruction is to read the first qword of the packet from user, which contains the size of the packet
  // Corresponding to the state GET_WAIT_2 of the state machine in xgmii
  {
    auto instr = m.NewInstr("READ_BYTE_CNT_10G");

    // decode 
    auto mode_10G = (m.input(MODE_10G) == 1);
    auto state_idle = (m.state(TX_STATE) == TX_STATE_IDLE);
    auto state_encap_idle = (m.state(TX_STATE_ENCAP) == TX_STATE_ENCAP_IDLE);
    auto b2b_ok = (m.state(TX_B2B_CNTR) == 0);
    auto fifo_non_empty = (m.state(TXFIFO_WUSED_QWD) > 0);

    instr.SetDecode(mode_10G & b2b_ok & state_idle & state_encap_idle & fifo_non_empty);

    // State Update
    // read FIFO
    instr.SetUpdate(m.state(TXFIFO_RD_OUTPUT), Load(m.state(TXFIFO_BUFF), m.state(TXFIFO_BUFF_RD_PTR)));
    instr.SetUpdate(m.state(TXFIFO_BUFF_RD_PTR), m.state(TXFIFO_BUFF_RD_PTR) + 1);
    instr.SetUpdate(m.state(TXFIFO_WUSED_QWD), m.state(TXFIFO_WUSED_QWD) - 1);

    // states update

    // Updating the qword count in bytes
    auto bcnt_h = Extract(m.state(TX_PACKET_BYTE_CNT), 15, 3);
    auto bcnt_l = Extract(m.state(TX_PACKET_BYTE_CNT), 2, 0);
    auto nbytes = Ite((bcnt_l > 0), Concat((bcnt_h + 1), BvConst(0x0, 3)), Concat(bcnt_h, BvConst(0x0, 3)));

    instr.SetUpdate(m.state(TX_PACKET_BYTE_CNT), Extract(m.state(TXFIFO_RD_OUTPUT), 15, 0)); // 4 clk
    instr.SetUpdate(m.state(TX_WCNT), (nbytes - 1)); // 5 clk
    instr.SetUpdate(m.state(TX_WCNT_INI), (nbytes - 1));

    // State machine update
    instr.SetUpdate(m.state(TX_STATE), TX_STATE_DAT); // 5 clk
    instr.SetUpdate(m.state(TX_STATE_ENCAP), TX_STATE_ENCAP_DAT); // 4 clk

    // Output Update 
    // Be Careful!!! The output state is actually 1 clk behind the other arch states in this step!

    // I put the B2B CNTR here 
    instr.SetUpdate(m.state(XGMII_DOUT_REG), Concat(BvConst(0xD5555555, 32), BvConst(0x555555FB, 32))); // 6 clk
    instr.SetUpdate(m.state(XGMII_COUT_REG), BvConst(0x01, XGMII_COUT_REG_BWID)); // 6 clk 
    instr.SetUpdate(m.state(TX_B2B_CNTR), TX_B2B_CNTR_INITIAL);



    // Set initial value of the CRC. This initial value is the output data. However the one that participates in the generation is different.
    auto rb = Extract(m.state(TX_PACKET_BYTE_CNT), 2, 0); // rb stands for residual bytes
    instr.SetUpdate(m.state(CRC), Ite((rb == 0x0), BvConst(0x00000000, CRC_BWID), 
                                  Ite((rb == 0x1), BvConst(0x56a579b9, CRC_BWID),
                                  Ite((rb == 0x2), BvConst(0xe962b350, CRC_BWID),
                                  Ite((rb == 0x3), BvConst(0x3306840b, CRC_BWID),
                                  Ite((rb == 0x4), BvConst(0x9d0ad96d, CRC_BWID),
                                  Ite((rb == 0x5), BvConst(0x7ed9d15c, CRC_BWID),
                                  Ite((rb == 0x6), BvConst(0x6f62e365, CRC_BWID),
                                                   BvConst(0x26706a0f, CRC_BWID))))))))
                    );
    
    instr.SetUpdate(m.state(CRC_IN), Ite((rb == 0x0), BvConst(0xffffffff, CRC_IN_BWID),
                                  Ite((rb == 0x1), BvConst(0x46865aa9, CRC_IN_BWID),
                                  Ite((rb == 0x2), BvConst(0xaf4c9d16, CRC_IN_BWID),
                                  Ite((rb == 0x3), BvConst(0xf47bf9cc, CRC_IN_BWID),
                                  Ite((rb == 0x4), BvConst(0x9226f562, CRC_IN_BWID),
                                  Ite((rb == 0x5), BvConst(0xa32e2681, CRC_IN_BWID),
                                  Ite((rb == 0x6), BvConst(0x9a1c9d90, CRC_IN_BWID),
                                                   BvConst(0xf0958fd9, CRC_IN_BWID))))))))
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
    // when wcnt < 0, we have taken all the data. No need to fetch from the fifo and update the crc output.
    auto wcnt = m.state(TX_WCNT);

    // Read data from FIFO
    instr.SetUpdate(m.state(TXFIFO_RD_OUTPUT), Ite((wcnt > 0), Load(m.state(TXFIFO_BUFF), m.state(TXFIFO_BUFF_RD_PTR)), m.state(TXFIFO_RD_OUTPUT)));
    instr.SetUpdate(m.state(TXFIFO_BUFF_RD_PTR), Ite((wcnt > 0), m.state(TXFIFO_BUFF_RD_PTR) + 1, m.state(TXFIFO_BUFF_RD_PTR)));
    instr.SetUpdate(m.state(TXFIFO_WUSED_QWD), Ite((wcnt > 0), m.state(TXFIFO_WUSED_QWD) - 1, m.state(TXFIFO_WUSED_QWD)));

    // CRC code Update

    // fq stands for first qword of the whole packet. When the remaining bytes equals to the byte count, it is the fisrt qword.
    auto fq = (m.state(TX_WCNT) == m.state(TX_WCNT_INI));
    auto rb = Extract(m.state(TX_PACKET_BYTE_CNT), 2, 0);

    // CRC code update
    instr.SetUpdate(m.state(CRC_DAT_IN), Ite(fq, Ite((rb == 0x0), m.state(TXFIFO_RD_OUTPUT),
                                              Ite((rb == 0x1), Concat(Extract(m.state(TXFIFO_RD_OUTPUT),  7, 0), Concat(BvConst(0x0, 32), BvConst(0x0, 24))),
                                              Ite((rb == 0x2), Concat(Extract(m.state(TXFIFO_RD_OUTPUT), 15, 0), Concat(BvConst(0x0, 32), BvConst(0x0, 16))),
                                              Ite((rb == 0x3), Concat(Extract(m.state(TXFIFO_RD_OUTPUT), 23, 0), Concat(BvConst(0x0, 32), BvConst(0x0, 8))),
                                              Ite((rb == 0x4), Concat(Extract(m.state(TXFIFO_RD_OUTPUT), 31, 0), BvConst(0x0, 32)),
                                              Ite((rb == 0x5), Concat(Extract(m.state(TXFIFO_RD_OUTPUT), 39, 0), BvConst(0x0, 24)),
                                              Ite((rb == 0x6), Concat(Extract(m.state(TXFIFO_RD_OUTPUT), 47, 0), BvConst(0x0, 16)),
                                                               Concat(Extract(m.state(TXFIFO_RD_OUTPUT), 55, 0), BvConst(0x0, 8))))))))),

                                              Ite((rb == 0x0), m.state(TXFIFO_RD_OUTPUT),
                                              Ite((rb == 0x1), Concat(Extract(m.state(TXFIFO_RD_OUTPUT),  7, 0), Extract(m.state(TX_BUF),  63, 8)),
                                              Ite((rb == 0x2), Concat(Extract(m.state(TXFIFO_RD_OUTPUT), 15, 0), Extract(m.state(TX_BUF),  63, 16)),
                                              Ite((rb == 0x3), Concat(Extract(m.state(TXFIFO_RD_OUTPUT), 23, 0), Extract(m.state(TX_BUF),  63, 24)),
                                              Ite((rb == 0x4), Concat(Extract(m.state(TXFIFO_RD_OUTPUT), 31, 0), Extract(m.state(TX_BUF),  63, 32)),
                                              Ite((rb == 0x5), Concat(Extract(m.state(TXFIFO_RD_OUTPUT), 39, 0), Extract(m.state(TX_BUF),  63, 40)),
                                              Ite((rb == 0x6), Concat(Extract(m.state(TXFIFO_RD_OUTPUT), 47, 0), Extract(m.state(TX_BUF),  63, 48)),
                                                               Concat(Extract(m.state(TXFIFO_RD_OUTPUT), 55, 0), Extract(m.state(TX_BUF),  63, 56))))))))))
                    );
    
    // This buffer should be placed after the CRC update.
    instr.SetUpdate(m.state(TX_BUF), m.state(TXFIFO_RD_OUTPUT));

    // CRC generation, using half_byte algorithm. reference: https://create.stephan-brumme.com/crc32/#half-byte
    auto crc_g = m.state(CRC_IN);
    auto data = m.state(CRC_DAT_IN);
    // The current stores the byte that generator takes. 
    
    for (auto len = 0; len < 8; len++) {
      auto current = Extract(data, (8*len + 7), 8*len);
      crc_g = lut_read((crc_g ^ current) & BvConst(0x0F, 8)) ^ (crc_g >> 4);
      crc_g = lut_read((crc_g ^ (current >> 4)) & BvConst(0x0F, 8)) ^ (crc_g >> 4);
    }

    // update CRC code input for the generator;
    instr.SetUpdate(m.state(CRC_IN), Ite((wcnt > 0), crc_g, m.state(CRC_IN)));
    // update the CRC output. Needs transformation.
    auto crc_code = ~(((crc_g >> 24) & 0x000000FF) | ((crc_g >> 8) & 0x0000FF00) | ((crc_g << 8) & 0x00FF0000) | ((crc_g << 24) & 0xFF000000));
    instr.SetUpdate(m.state(CRC), Ite((wcnt > 0), crc_code, m.state(CRC)));

    // when output the crc code, we need to change the endian of the code.
    auto crc_output = ((m.state(CRC) >> 24) & 0x000000FF) | ((m.state(CRC) >> 8) & 0x0000FF00) | ((m.state(CRC) << 8) & 0x00FF0000) | ((m.state(CRC) << 24) & 0xFF000000);

    // difference between crc_code and crc_output is that crc_code is the value in the crc register, however, when
    // outputing the value to txd, we need to change the endian. crc_output is for txd.
    /******* CRC code update  finished ***********/

    // Update output
    // txd & txc take 2 clk to update
    instr.SetUpdate(m.state(XGMII_COUT_REG),  Ite((wcnt > 7),   BvConst(0x00, XGMII_COUT_REG_BWID),
                                              Ite((wcnt <= 7),  Ite((rb == 0), BvConst(0x00, XGMII_COUT_REG_BWID),
                                                                Ite((rb == 1), BvConst(0xE0, XGMII_COUT_REG_BWID),
                                                                Ite((rb == 2), BvConst(0xC0, XGMII_COUT_REG_BWID),
                                                                Ite((rb == 3), BvConst(0x80, XGMII_COUT_REG_BWID),
                                                                Ite((rb == 4), BvConst(0x00, XGMII_COUT_REG_BWID),
                                                                Ite((rb == 5), BvConst(0x00, XGMII_COUT_REG_BWID),
                                                                Ite((rb == 6), BvConst(0x00, XGMII_COUT_REG_BWID),
                                                                               BvConst(0x00, XGMII_COUT_REG_BWID)))))))), 
                                              Ite((wcnt < 0),   Ite((rb == 0), BvConst(0xF0, XGMII_COUT_REG_BWID),
                                                                Ite((rb == 1), BvConst(0xFF, XGMII_COUT_REG_BWID),
                                                                Ite((rb == 2), BvConst(0xFF, XGMII_COUT_REG_BWID),
                                                                Ite((rb == 3), BvConst(0xFF, XGMII_COUT_REG_BWID),
                                                                Ite((rb == 4), BvConst(0xFF, XGMII_COUT_REG_BWID),
                                                                Ite((rb == 5), BvConst(0xFE, XGMII_COUT_REG_BWID),
                                                                Ite((rb == 6), BvConst(0xFC, XGMII_COUT_REG_BWID),
                                                                               BvConst(0xF8, XGMII_COUT_REG_BWID)))))))),  
                                              BvConst(0xFF, 8)))));
                                                              
                                                              
    auto dat = m.state(TXFIFO_RD_OUTPUT);
    instr.SetUpdate(m.state(XGMII_DOUT_REG),  Ite((wcnt > 7), dat,
                                              Ite((wcnt <= 7),  Ite((rb == 0), m.state(TXFIFO_RD_OUTPUT),
                                                                Ite((rb == 1), Concat(BvConst(0x0707FD, 24), Concat(crc_output, Extract(dat, 7, 0))),
                                                                Ite((rb == 2), Concat(BvConst(0x07FD, 16), Concat(crc_output, Extract(dat, 15, 0))),
                                                                Ite((rb == 3), Concat(BvConst(0xFD, 8), Concat(crc_output, Extract(dat, 23, 0))),
                                                                Ite((rb == 4), Concat(crc_output, dat),
                                                                Ite((rb == 5), Concat(Extract(crc_output, 23, 0), Extract(dat, 39, 0)),
                                                                Ite((rb == 6), Concat(Extract(crc_output, 15, 0), Extract(dat, 47, 0)),
                                                                              Concat(Extract(crc_output, 7, 0), Extract(dat, 55, 0))))))))),

                                              Ite((wcnt < 0),   Ite((rb == 0), Concat(BvConst(0x070707FD, 32), crc_output),
                                                                Ite((rb == 1), Concat(BvConst(0x07070707, 32), BvConst(0x07070707, 32)),
                                                                Ite((rb == 2), Concat(BvConst(0x07070707, 32), BvConst(0x07070707, 32)),
                                                                Ite((rb == 3), Concat(BvConst(0x07070707, 32), BvConst(0x07070707, 32)),
                                                                Ite((rb == 4), Concat(BvConst(0x07070707, 32), BvConst(0x070707FD, 32)),
                                                                Ite((rb == 5), Concat(Concat(BvConst(0x07070707, 32), BvConst(0x0707FD, 24)), Extract(crc_output, 31, 24)),
                                                                Ite((rb == 6), Concat(Concat(BvConst(0x07070707, 32), BvConst(0x07FD, 16)), Extract(crc_output, 31, 16)),
                                                                                Concat(Concat(BvConst(0x07070707, 32), BvConst(0xFD, 8)), Extract(crc_output, 31, 8))))))))), 
                                                                             
                                              Concat(BvConst(0x07070707, 32), BvConst(0x07070707, 32))))));
                                                              
    // Update the wcnt
    auto b2b_cnt = m.state(TX_B2B_CNTR);
    auto st_encap = m.state(TX_STATE_ENCAP);

    instr.SetUpdate(m.state(TX_B2B_CNTR), Ite((st_encap == TX_STATE_ENCAP_IDLE), b2b_cnt - 1, b2b_cnt)); // 1 clk
    instr.SetUpdate(m.state(TX_STATE), Ite((wcnt < 0), TX_STATE_DAT, TX_STATE_CRC)); // 1 clk
    instr.SetUpdate(m.state(TX_STATE_ENCAP), Ite((wcnt < 16), TX_STATE_ENCAP_IDLE, st_encap)); // 1 clk
    instr.SetUpdate(m.state(TX_WCNT), wcnt - 8); // 1 clk
  }
  
  
  return;
}

void WrPktLastOne(Ila& m, const std::string& name) {
  // This is for writing the EOF and the remaining CRC code
  {
    auto instr = m.NewInstr("WR_PKT_LASTONE_10G");

    // decode 
    auto mode_10G = (m.input(MODE_10G) == 1);
    auto state_crc = (m.state(TX_STATE) == TX_STATE_CRC);

    instr.SetDecode(mode_10G & state_crc);

    // State Update
    // auto rb = Extract(m.state(TX_PACKET_BYTE_CNT, 2, 0));

    // instr.SetUpdate(m.state(XGMII_COUT_REG), Ite((rb == 0), 0xF0,
    //                                          Ite((rb == 1), 0xFF,
    //                                          Ite((rb == 2), 0xFF,
    //                                          Ite((rb == 3), 0xFF,
    //                                          Ite((rb == 4), 0xFF,
    //                                          Ite((rb == 5), 0xFE,
    //                                          Ite((rb == 6), 0xFC,
    //                                                         0xF8))))))));
    
    // instr.SetUpdate(m.state(XGMII_DOUT_REG), Ite((rb == 0), Concat(BvConst(0x070707FD, 32), crc_output),
    //                                          Ite((rb == 1), BvConst(0x0707070707070707, 64),
    //                                          Ite((rb == 2), BvConst(0x0707070707070707, 64),
    //                                          Ite((rb == 3), BvConst(0x0707070707070707, 64),
    //                                          Ite((rb == 4), BvConst(0x07070707070707FD, 64),
    //                                          Ite((rb == 5), Concat(BvConst(0x070707070707FD, 56), Extract(crc_output, 31, 24)),
    //                                          Ite((rb == 6), Concat(BvConst(0x0707070707FD, 48), Extract(crc_output, 31, 16)),
    //                                                         Concat(BvConst(0x07070707FD, 40), Extract(crc_output, 31, 8))))))))));

    instr.SetUpdate(m.state(TX_PKT_SENT), m.state(TX_PKT_SENT) + 1); // 2 clk
    instr.SetUpdate(m.state(TX_BYTE_SENT), m.state(TX_BYTE_SENT) + m.state(TX_PACKET_BYTE_CNT)); // 2 clk
    instr.SetUpdate(m.state(TX_STATE), TX_STATE_IDLE); // 1 clk
    instr.SetUpdate(m.state(TX_B2B_CNTR), Ite((m.state(TX_STATE_ENCAP) == TX_STATE_ENCAP_IDLE), m.state(TX_B2B_CNTR) - 1, m.state(TX_B2B_CNTR))); // 1 clk
  }

  return;
}
}
