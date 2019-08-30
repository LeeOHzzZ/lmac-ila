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

  // operating modes
  // This input affect both the RX and TX. It is placed here temperally  
  NewInput(m, MODE_1G, MODE_1G_BWID);
  NewInput(m, MODE_2P5G, MODE_2P5G_BWID);
  NewInput(m, MODE_5G, MODE_5G_BWID);
  NewInput(m, MODE_10G, MODE_10G_BWID);

  //////////////////////////////////
  // Internal Architectual States
  //////////////////////////////////
  // TX state machine
  NewState(m, TX_STATE, TX_STATE_BWID);
  // TX B2B counter
  NewState(m, TX_B2B_CNTR, TX_B2B_CNTR_BWID);
  // State holding the packet byte count, which is in the first Qword of the packet.
  NewState(m, TX_PACKET_BYTE_CNT, TX_PACKET_BYTE_CNT_BWID);
  // State recording the frames needed to transmit the whole package in bytes. reg wcnt in xgmii
  NewState(m, TX_WCNT, TX_WCNT_BWID);
  // State for insert CRC and EOF
  NewState(m, TX_INSERT_CRC, TX_INSERT_CRC_BWID);



  //////////////////////////////////
  // Internal Non Architectual States
  //////////////////////////////////
  // State holding the initial wcnt count, used for crc input
  NewState(m, TX_WCNT_INI, TX_WCNT_INI_BWID);
  // Buffer for CRC Code generation
  NewState(m, TX_BUF, TX_BUF_BWID);




  /* These are non-architectural states */
  // State that indicate the tx path is busy and not ready for next packet read.
  NewState(m, TX_BUSY, TX_BUSY_BWID);
  // State that indicates that the number of frames to send.
  NewState(m, TX_FRAME_CNTR, TX_FRAME_CNTR_BWID);
  // register for byte count, store at the reading the first QWord of ethernet package.
  NewState(m, TX_PACKET_BYTE_CNT, TX_PACKET_BYTE_CNT_BWID);
  // register the remaining bytes to transmit
  NewState(m, TX_PACKET_BYTES_REMAIN, TX_PACKET_BYTES_REMAIN_BWID);
  // Read output of the TX FIFO
  NewState(m, TXFIFO_RD_OUTPUT, TXFIFO_RD_OUTPUT_BWID);
  // register for CRC, store the 4byte CRC
  NewState(m, CRC, CRC_BWID);

  // State for CRC data input
  NewState(m, CRC_DAT_IN, CRC_DAT_IN_BWID);
  // State for previous crc code input
  NewState(m, CRC_IN, CRC_DAT_IN_BWID);
  // State for heading to EOF state;
  NewState(m, TX_EOF, TX_EOF_BWID);



  // State counter for output data at mode 1G, 3bit
  NewState(m, MODE_1G_CNTR, MODE_1G_CNTR_BWID);



/****************** **********************************/
// These two architectural states are actually at the interface of PHY.

  // register for result output, xgmii or gmii
  NewState(m, XGMII_DOUT_REG, XGMII_DOUT_REG_BWID);

  // register for output control, bytes valid information, 8bits signal for 8bytes(64bit) output
  NewState(m, XGMII_COUT_REG, XGMII_COUT_REG_BWID);




  return;
}

}; // namespace ilang

