// ============================================================================
// Instruction-Level Abstraction of LeWiz Communications Ethernet MAC
//
// This Instruction-Level Abstraction (ILA) description is derived based on the
// LeWiz Communications Ethernet MAC (LMAC), which is licensed under GNU LGPL.
// Check "LICENSE" which comes with this distribution for more information.
// ============================================================================
//
// File Name: configs_impl.h

// implementation
//  - hardware paramters not-well-documented in the specification/documentation
//  - behavior PARTIALLY defined in the specification/documentation
//  - interal states.

#ifndef LMAC_CORE2_CONFIGS_IMPL_H__
#define LMAC_CORE2_CONFIGS_IMPL_H__

#include <lmac/core2/configs_spec.h>

namespace ilang {

// -------------------------------------------------------------------------- //
// TX FIFO
// -------------------------------------------------------------------------- //

// TX FIFO internal buffer
#define TXFIFO_BUFF "TXFIFO_BUFF"
// bit-width of the TX FIFO buffer address (index)
#define TXFIFO_BUFF_ADDR_BWID                                                  \
  (TX_DATA_PKT_BYTE_CNT_END - TX_DATA_PKT_BYTE_CNT_BEG + 1)
// bit-width of the TX FIFO buffer data
#define TXFIFO_BUFF_DATA_BWID TX_DATA_BWID
// depth of the TX FIFO buffer
#define TXFIFO_BUFF_DEPTH 1024

// TX FIFO read pointer
#define TXFIFO_BUFF_RD_PTR "TXFIFO_BUFF_RD_PTR"
#define TXFIFO_BUFF_RD_PTR_BWID TXFIFO_BUFF_ADDR_BWID

// TX FIFO write pointer
#define TXFIFO_BUFF_WR_PTR "TXFIFO_BUFF_WR_PTR"
#define TXFIFO_BUFF_WR_PTR_BWID TXFIFO_BUFF_ADDR_BWID

// -------------------------------------------------------------------------- //
// TX Path Internal States
// -------------------------------------------------------------------------- //

// operating mode, only 1G mode would have significant difference.
// This input affect both the RX and TX. It is placed here temperally  
#define MODE_1G "MODE_1G"
#define MODE_1G_BWID 1

// State that indicate the tx path is busy and not ready for next packet read.
#define TX_BUSY "TX_BUSY"
#define TX_BUSY_BWID 1

// State that indicates that the number of QWords to send.
// At most 1130 qwords in a single frame.
#define TX_FRAME_CNTR "TX_FRAME_CNTR"
#define TX_FRAME_CNTR_BWID 12

// Buffer for CRC Code generation, supporting non consecutive clock data.
#define TX_BUF "TX_BUF"
#define TX_BUF_BWID TX_DATA_BWID

// register for byte count, store at the reading the first QWord of ethernet package.
#define TX_PACKET_BYTE_CNT "TX_PACKET_BYTE_CNT"
#define TX_PACKET_BYTE_CNT_BWID 16

// register the remaining bytes to transmit
#define TX_PACKET_BYTES_REMAIN "TX_PACKET_BYTES_REMAIN"
#define TX_PACKET_BYTES_REMAIN_BWID TX_PACKET_BYTE_CNT_BWID

// Read output of the TX FIFO
#define TXFIFO_RD_OUTPUT "TXFIFO_RD_OUTPUT"
#define TXFIFO_RD_OUTPUT_BWID TX_DATA_BWID

// register for CRC, store the 4byte CRC
#define CRC "CRC"
#define CRC_BWID 32

// State for CRC data input
#define CRC_DAT_IN "CRC_DAT_IN"
#define CRC_DAT_IN_BWID TX_DATA_BWID

// State for previous crc code input
#define CRC_IN "CRC_IN"
#define CRC_IN_BWID CRC_BWID

// -------------------------------------------------------------------------- //
// PHY Interface. Temperally placed here
// -------------------------------------------------------------------------- //

#define XGMII_DOUT_REG "XGMII_DOUT_REG"
#define XGMII_DOUT_REG_BWID TX_DATA_BWID

#define XGMII_COUT_REG "XGMII_COUT_REG"
#define XGMII_COUT_REG_BWID 8

// -------------------------------------------------------------------------- //
// LMAC Register Interface, Configuration, Clock and Reset
// -------------------------------------------------------------------------- //

//
// MAC_CTRL1
//

// Reserved
#define MAC_CTRL1_RSV_27_V_DEFAULT 0
// Reserved
#define MAC_CTRL1_RSV_23_V_DEFAULT 0

}; // namespace ilang

#endif // LMAC_CORE2_CONFIGS_IMPL_H__

