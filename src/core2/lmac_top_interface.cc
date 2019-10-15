// ============================================================================
// Instruction-Level Abstraction of LeWiz Communications Ethernet MAC
//
// This Instruction-Level Abstraction (ILA) description is derived based on the
// LeWiz Communications Ethernet MAC (LMAC), which is licensed under GNU LGPL.
// Check "LICENSE" which comes with this distribution for more information.
// ============================================================================
//
// File Name: lmac_top_interface.cc

// This file set up the top interface states for the LMAC model

#include <lmac/core2/lmac_core_top.h>

#include <lmac/core2/configs.h>
#include <lmac/utils.h>

namespace ilang {

void LmacCore2::SetTopInterface(Ila& m) {
  // operating modes
  // This input affect both the RX and TX. It is placed here temperally  
  NewInput(m, MODE_1G, MODE_1G_BWID);
  NewInput(m, MODE_2P5G, MODE_2P5G_BWID);
  NewInput(m, MODE_5G, MODE_5G_BWID);
  NewInput(m, MODE_10G, MODE_10G_BWID);

  return;
}

}; // namespace ilang

