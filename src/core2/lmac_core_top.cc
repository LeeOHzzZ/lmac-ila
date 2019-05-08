// ============================================================================
// Instruction-Level Abstraction of LeWiz Communications Ethernet MAC
//
// This Instruction-Level Abstraction (ILA) description is derived based on the
// LeWiz Communications Ethernet MAC (LMAC), which is licensed under GNU LGPL.
// Check "LICENSE" which comes with this distribution for more information.
// ============================================================================
//
// File Name: lmac_core_top.cc

#include <lmac/core2/lmac_core_top.h>

namespace ilang {

LmacCore2::LmacCore2() {}

LmacCore2::~LmacCore2() {}

Ila LmacCore2::New(const std::string& name) {
  auto m = Ila(name);

  //

  return m;
}

}; // namespace ilang
