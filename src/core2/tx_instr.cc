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
//  - write package byte count
//  - write pay load (body)
//  - write pay load (tail)

#include <lmac/core2/lmac_core_top.h>

#include <ilang/util/log.h>

namespace ilang {

void WrPktFIFO(Ila& m, const std::string& name = "TX_WR_PKT_FIFO");
void WrPktByteCnt(Ila& m, const std::string& name = "TX_WR_PKT_BYTE_CNT");
void WrPktPayLoad(Ila& m, const std::string& name = "TX_WR_PKT_PAY_LOAD");
void WrPktLastOne(Ila& m, const std::string& name = "TX_WR_PKT_LAST_ONE");

void LmacCore2::SetupTxInstr(Ila& m) {

  /********** Added by Yi Li **************/
  // Write bytes into FIFO
  WrPktFIFO(m);
  /********** Added by Yi Li **************/

  // send the byte count of the packet
  WrPktByteCnt(m);

  // send the payload (except the last one)
  WrPktPayLoad(m);

  // send the last chunk in the payload
  WrPktLastOne(m);

  return;
}

/********** Added by Yi Li **************/
void WrPktFIFO(Ila& m, const std::string& name) {
  // This instruction model the writing data into FIFO of TX
  {
    auto instr = m.NewInstr("WR_PKT_DATA_FIFO");

    // decode
    auto wr_enable = (m.input(TX_WE) == TX_WE_V_VALID);
    auto fifo_non_full = (m.state(TXFIFO_FULL) != TXFIFO_FULL_V_FULL);
    instr.SetDecode(wr_enable && fifo_non_full);

    // update
    instr.SetUpdate(TXFIFO_BUFF, Store(TXFIFO_BUFF, TXFIFO_BUFF_WR_PTR, m.input(TX_DATA)) );
    instr.SetUpdate(m.state(TXFIFO_BUFF_WR_PTR), m.state(TXFIFO_BUFF_WR_PTR) + 0x1);
    instr.SetUpdate(m.state(TXFIFO_WUSED_QWD), m.state(TXFIFO_WUSED_QWD) + 0x1);
    instr.SetUpdate(m.state(TX_FIFO_FULL), Ite((m.state(TXFIFO_WUSED_QWD) == 1024), 1, 0));
  }

  return;

}



void WrPktByteCnt(Ila& m, const std::string& name) {
  // handle the bytecount of the ethernet packet. The first QWord doesn't go to the output. only contain the byte count information for control and record


  { // handling recording the byte counts
    auto instr = m.NewInstr("WR_PKT_BYTE_CNT");

    // decode 
    // auto remain_bytes_zero = (m.state(TX_PACKET_BYTES_REMAIN) <= 0);
    auto fifo_non_empty = (m.state(TXFIFO_WUSED_QWD) > 0);
    auto tx_non_busy = (m.state(TX_BUSY) == 0);
    // auto read_en = (m.input(TXFIFO_RD_EN) == 1);

    // instr.SetDecode(read_en & remain_bytes_zero & fifo_non_empty);
    instr.SetDecode(fifo_non_empty & tx_non_busy);

    // state update
    instr.SetUpdate(m.state(TX_BUSY), 1);

    // Read FIFO
    instr.SetUpdate(m.state(TXFIFO_RD_OUTPUT), Load(TXFIFO_BUFF, TXFIFO_BUFF_RD_PTR));
    instr.SetUpdate(m.state(TXFIFO_BUFF_RD_PTR), m.state(TXFIFO_BUFF_RD_PTR) + 1);
    instr.SetUpdate(m.state(TXFIFO_WUSED_QWD), m.state(TXFIFO_WUSED_QWD) - 1);

    // Read the byte count information
    instr.SetUpdate(m.state(TX_PACKET_BYTE_CNT), ilang::Extract(m.state(TXFIFO), 15, 0));
    // update remaining bytes number. Not sure why subracted by 8. (may not needed)
    instr.SetUpdate(m.state(TX_PACKET_BYTES_REMAIN), m.state(TX_PACKET_BYTE_CNT));
    // update the frame needed to transmit the packet.
    instr.SetUpdate(m.state(TX_FRAME_CNTR), (m.state(TX_PACKET_BYTE_CNT) >> 3) + 1);
    // Set 1G mode counter to zero
    instr.SetUpdate(m.state(TX_1G_PAYLOAD_CNTR), 0x0);
    // Set the CRC counter for 1G to zero
    instr.SetUpdate(m.state(TX_1G_CRC_CNTR), 0x0);

    // Set the TX control signal. Different control signal for mode 1G and the others
    instr.SetUpdate(m.state(XGMII_COUT_REG), Ite(m.input(MODE_1G), 0xFE, 0x01));

    // Set initial value of the CRC
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

  }

  return;
}

void WrPktPayLoad(Ila& m, const std::string& name) {
  //writing the payload of the frame
  // different behaviour for mode_1G and the other.

  {// handling the instruction for mode_1G
    auto instr = m.NewInstr("WR_PKT_PAYLOAD_1G");

    // decode 
    auto mode_1G = (m.input(MODE_1G) == 1);
    auto fifo_non_empty = (m.state(TXFIFO_WUSED_QWD) > 0);
    auto bytes_remained = (m.state(TX_PACKET_BYTES_REMAIN) > 0);
    auto tx_busy = (m.state(TX_BUSY) == 1);
    instr.SetDecode(mode_1G & fifo_non_empty & bytes_remained & tx_busy);

    // Read data from FIFO
    auto read_new_data == (m.state(TX_1G_PAYLOAD_CNTR) == 0);
    instr.SetUpdate(m.state(TXFIFO_RD_OUTPUT), Ite(read_new_data, Load(TXFIFO_BUFF, TXFIFO_BUFF_RD_PTR), m.state(TXFIFO_RD_OUTPUT)));
    instr.SetUpdate(m.state(TXFIFO_BUFF_RD_PTR), Ite(read_new_data, m.state(TXFIFO_BUFF_RD_PTR) + 1, m.state(TXFIFO_BUFF_RD_PTR)));
    instr.SetUpdate(m.state(TXFIFO_WUSED_QWD), Ite(read_new_data, m.state(TXFIFO_WUSED_QWD) - 1, m.state(TXFIFO_WUSED_QWD)));
    
    // update
    // CRC code update


    // update output and control
    auto h_idx = m.state(TX_1G_PAYLOAD_CNTR) * 8 + 7;
    auto l_idx = m.state(TX_1G_PAYLOAD_CNTR) * 8;
    instr.SetUpdate(m.state(XGMII_DOUT_REG), ilang::Concat(0x07070707070707, ilang::Extract(m.state(TXFIFO_RD_OUTPUT), h_idx, l_idx)));
    instr.SetUpdate(m.state(XGMII_COUT_REG), 0xFE);

    // update bytes counts and frame count
    instr.SetUpdate(m.state(TX_PACKET_BYTES_REMAIN), m.state(TX_PACKET_BYTES_REMAIN) - 1);
    // instr.SetUpdate(m.state(TX_FRAME_CNTR), Ite((m.state(TX_1G_PAYLOAD_CNTR) == 7), m.state(TX_FRAME_CNTR) - 1, m.state(TX_FRAME_CNTR)));
    instr.SetUpdate(m.state(TX_1G_PAYLOAD_CNTR), m.state(TX_1G_PAYLOAD_CNTR) + 0x1);

  }

  {// instuction for mode other than 1G
    auto instr = m.NewInstr("WR_PKT_PAYLOAD");

    // decode 
    auto non_mode_1G = (m.input(MODE_1G) == 0);
    auto fifo_non_empty = (m.state(TXFIFO_WUSED_QWD) > 0);
    auto frames_remained = (m.state(TX_FRAME_CNTR) > 1);
    auto tx_busy = (m.state(TX_BUSY) == 1);
    instr.SetDecode(non_mode_1G & fifo_non_empty & frames_remained & tx_busy);

    // Read Data from FIFO
    instr.SetUpdate(m.state(TXFIFO_RD_OUTPUT), Load(TXFIFO_BUFF, TXFIFO_BUFF_RD_PTR));
    instr.SetUpdate(m.state(TXFIFO_BUFF_RD_PTR), m.state(TXFIFO_BUFF_RD_PTR) + 1);
    instr.SetUpdate(m.state(TXFIFO_WUSED_QWD), m.state(TXFIFO_WUSED_QWD) - 1);
  
    // Updates
    // update CRC code


    // update output and control !!! doesn't use ilang:: namespace here. Caution for errors.
    auto residue = ilang::Extract(TX_PACKET_BYTE_CNT, 2, 0);
    instr.SetUpdate(m.state(XGMII_COUT_REG), 0x00);
    instr.SetUpdate(m.state(XGMII_DOUT_REG), Ite((m.state(TX_FRAME_CNTR) > 2), m.state(TXFIFO_RD_OUTPUT),
                                             Ite((residue == 5),Concat(Extract(m.state(CRC), 23, 0), Extract(m.state(TXFIFO_RD_OUTPUT), 39, 0)),
                                             Ite((residue == 6),Concat(Extract(m.state(CRC), 15, 0), Extract(m.state(TXFIFO_RD_OUTPUT), 47, 0)),
                                             Ite((residue == 7),Concat(Extract(m.state(CRC), 7, 0), Extract(m.state(TXFIFO_RD_OUTPUT), 55, 0)),
                                             m.state(TXFIFO_RD_OUTPUT))))));
    // update frame counts
    instr.SetUpdate(m.state(TX_FRAME_CNTR), m.state(TX_FRAME_CNTR) - 1);

  }

  return;
}

void WrPktLastOne(Ila& m, const std::string& name) {
  // Two instructions, one for mode 1G and one for the others 

  {// instruction for mode 1G
    auto instr = m.NewInstr("WR_PKT_LASTONE_1G");

    // decode
    auto mode_1G = (m.input(MODE_1G) == 1);
    auto no_bytes = (m.state(TX_PACKET_BYTES_REMAIN) == 0);
    auto tx_busy = (m.state(TX_BUSY) == 1);

    instr.SetDecode(mode_1G & no_bytes & tx_busy);

    // Update

    // CRC code should be complete at this step; only need to update the result.

    // update output
    auto crc_finish = (m.state(TX_1G_CRC_CNTR) == 3);
    auto h_idx = m.state(TX_1G_CRC_CNTR) * 8 + 7;
    auto l_idx = m.state(TX_1G_CRC_CNTR) * 8;

    instr.SetUpdate(m.state(XGMII_COUT_REG), 0xFE);
    instr.SetUpdate(m.state(XGMII_DOUT_REG), Concat(0x07070707070707, Extract(m.state(CRC), h_idx, l_idx)));

    // update control states
    instr.SetUpdate(m.state(TX_1G_CRC_CNTR), m.state(TX_1G_CRC_CNTR) + 1);
    instr.SetUpdate(m.state(TX_BUSY), Ite(crc_finish, 0, m.state(TX_BUSY)));
    
  }

  {// instruction for the rest modes
    auto instr = m.NewInstr("WR_PKT_LASTONE");

    // decode 
    auto non_mode_1G = (m.input(MODE_1G) == 0);
    auto last_frame = (m.state(TX_FRAME_CNTR) == 1);
    auto tx_busy = (m.state(TX_BUSY) == 1);

    // Update
    auto residue = ilang::Extract(TX_PACKET_BYTE_CNT, 2, 0);
    auto dat = m.state(TXFIFO_RD_OUTPUT);
    auto crc = m.state(CRC);

    instr.SetUpdate(m.state(XGMII_DOUT_REG), Ite((residue == 0), Concat(0xf7f7f7FD, crc),
                                             Ite((residue == 1), Concat(0xf7f7FD, Concat(crc, Extract(dat, 7, 0))),
                                             Ite((residue == 2), Concat(0xf7FD, Concat(crc, Extract(dat, 15, 0))),
                                             Ite((residue == 3), Concat(0xFD, Concat(crc, Extract(dat, 23, 0))),
                                             Ite((residue == 4), Concat(crc, dat),
                                             Ite((residue == 5), Concat(0xf7f7f7f7f7f7FD, Extract(crc, 31, 24)),
                                             Ite((residue == 6), Concat(0xf7f7f7f7f7FD, Extract(crc, 31, 16)),
                                                                 Concat(0xf7f7f7f7FD, Extract(crc, 31, 8))))))))));
    
    instr.SetUpdate(m.state(XGMII_COUT_REG), Ite((residue == 0), 0xF0,
                                             Ite((residue == 1), 0xE0,
                                             Ite((residue == 2), 0xC0,
                                             Ite((residue == 3), 0x80,
                                             Ite((residue == 4), 0x00,
                                             Ite((residue == 5), 0xFE,
                                             Ite((residue == 6), 0xFC,
                                                                 0xF8))))))));

    instr.SetUpdate(m.state(TX_BUSY), 0);

  }

  return;
}

}; // namespace ilang
