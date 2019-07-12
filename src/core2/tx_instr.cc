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
    auto instr = m.NewInstr("WR_PKT_DATA_FIFO")；

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
    auto remain_bytes_zero = (m.state(TX_PACKET_BYTES_REMAIN) <= 0x0);
    auto fifo_non_empty = (m.state(TXFIFO_WUSED_QWD) > 0x0);
    auto read_en = (m.input(TXFIFO_RD_EN) == 1);

    instr.SetDecode(read_en & remain_bytes_zero & fifo_non_empty);

    // state update

    // Read FIFO
    instr.SetUpdate(m.state(TXFIFO_RD_OUTPUT), Load(TXFIFO_BUFF, TXFIFO_BUFF_RD_PTR));
    instr.SetUpdate(m.state(TXFIFO_BUFF_RD_PTR), m.state(TXFIFO_BUFF_RD_PTR) + 1);
    instr.SetUpdate(m.state(TXFIFO_WUSED_QWD), m.state(TXFIFO_WUSED_QWD) - 1);

    // Read the byte count information
    instr.SetUpdate(m.state(TX_PACKET_BYTE_CNT), ilang::Extract(m.state(TXFIFO), 15, 0));
    // update remaining bytes number. Not sure why subracted by 8.
    instr.SetUpdate(m.state(TX_PACKET_BYTES_REMAIN), m.state(TX_PACKET_BYTE_CNT) - 0x8);

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
    auto read_en = (m.input(TXFIFO_RD_EN) == 1)；
    auto remain
    
  }

  return;
}

void WrPktLastOne(Ila& m, const std::string& name) {
  //

  return;
}

}; // namespace ilang
