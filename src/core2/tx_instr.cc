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
    instr.SetUpdate( storage, Store(storage, wptr(FIFO_IDX_WIDTH-1,0), w_data_in) );

    instr.SetUpdate(TXFIFO_BUFF, Store(TXFIFO_BUFF, TXFIFO_BUFF_WR_PTR, m.input(TX_DATA)) );
    instr.SetUpdate(m.state(TXFIFO_BUFF_WR_PTR), m.state(TXFIFO_BUFF_WR_PTR) + 1);
    instr.SetUpdate(m.state(TXFIFO_WUSED_QWD), m.state(TXFIFO_WUSED_QWD) + 1);
    instr.SetUpdate(m.state(TX_FIFO_FULL), Ite((m.state(TXFIFO_WUSED_QWD) == 1024), 1, 0));
  }
}



void WrPktByteCnt(Ila& m, const std::string& name) {
  // handle the bytecount of the ethernet packet. The first QWord doesn't go to the output. only contain the byte count information for control and record

  // This has two child instructions. One for 1G and one for the rest of the modes

  { // handling the byte count for mode 1G
    auto instr = m.NewInstr("WR_PKT_BYTE_CNT_1G")；

    // decode
    auto mode_config = (m.input(MODE_1G) == 1);
    
  }

  

  return;
}

void WrPktPayLoad(Ila& m, const std::string& name) {
  //

  return;
}

void WrPktLastOne(Ila& m, const std::string& name) {
  //

  return;
}

}; // namespace ilang
