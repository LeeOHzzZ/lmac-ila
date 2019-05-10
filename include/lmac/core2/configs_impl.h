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

#ifndef LMAC_CORE2_CONFIGS_IMPL_H__
#define LMAC_CORE2_CONFIGS_IMPL_H__

#include <lmac/core2/configs_spec.h>

namespace ilang {

// bit-width of the TX FIFO buffer address (index)
#define TXFIFO_BUFF_ADDR_BWID                                                  \
  (TX_DATA_PKT_BYTE_CNT_END - TX_DATA_PKT_BYTE_CNT_BEG + 1)
// bit-width of the TX FIFO buffer data
#define TXFIFO_BUFF_DATA_BWID TX_DATA_BWID
// depth of the TX FIFO buffer
#define TXFIFO_BUFF_DEPTH 1024

}; // namespace ilang

#endif // LMAC_CORE2_CONFIGS_IMPL_H__

