// ============================================================================
// Instruction-Level Abstraction of LeWiz Communications Ethernet MAC
//
// This Instruction-Level Abstraction (ILA) description is derived based on the
// LeWiz Communications Ethernet MAC (LMAC), which is licensed under GNU LGPL.
// Check "LICENSE" which comes with this distribution for more information.
// ============================================================================
//
// File Name: tx_internal.cc

// TX FIFO internal state variables
//  - non-interface
//  - implementation specific

#include <lmac/core2/lmac_core_top.h>

#include <lmac/core2/configs.h>
#include <lmac/utils.h>

namespace ilang {

void LmacCore2::SetupTxInternal(Ila& m) {
  // TX FIFO internal buffer
  auto tx_fifo_buff =
      m.NewMemState(TXFIFO_BUFF, TXFIFO_BUFF_ADDR_BWID, TXFIFO_BUFF_DATA_BWID);
  tx_fifo_buff.SetEntryNum(TXFIFO_BUFF_DEPTH);

  // read pointer
  NewState(m, TXFIFO_BUFF_RD_PTR, TXFIFO_BUFF_RD_PTR_BWID);

  // write pointer
  NewState(m, TXFIFO_BUFF_WR_PTR, TXFIFO_BUFF_WR_PTR_BWID);

  ///////////////// Modified by Yi Li //////////////

  // operating mode, only 1G mode would have significant difference.
  // This input affect both the RX and TX. It is placed here temperally  
  NewInput(m, MODE_1G, MODE_1G_BWID);

  // Read Enable signal for TX FIFO
  NewInput(m, TXFIFO_RD_EN, TXFIFO_RD_EN_BWID);

  // Read output of the TX FIFO
  NewState(m, TXFIFO_RD_OUTPUT, TXFIFO_RD_OUTPUTBWID);

  // register for result output, xgmii or gmii
  NewState(m, XGMII_DOUT_REG, XGMII_DOUT_REG_BWID);

  // register for output control, bytes valid information, 8bits signal for 8bytes(64bit) output
  NewState(m, XGMII_COUT_REG, XGMII_COUT_REG_BWID);

  // register for CRC, store the 4byte CRC
  NewState(m, CRC, CRC_BWID);

  // register for byte count, store at the reading the first QWord of ethernet package.
  NewState(m, TX_PACKET_BYTE_CNT, TX_PACKET_BYTE_CNT_BWID);
  
  // register the remaining bytes to transmit
  NewState(m, TX_PACKET_BYTES_REMAIN, TX_PACKET_BYTES_REMAIN_CNT_BWID);



  return;
}

}; // namespace ilang

