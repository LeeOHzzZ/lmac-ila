// ============================================================================
// Instruction-Level Abstraction of LeWiz Communications Ethernet MAC
//
// This Instruction-Level Abstraction (ILA) description is derived based on the
// LeWiz Communications Ethernet MAC (LMAC), which is licensed under GNU LGPL.
// Check "LICENSE" which comes with this distribution for more information.
// ============================================================================
//
// File Name: main.cc

#include <lmac/core2/lmac_core_top.h>
#include <lmac_core_2/lmac_core_2.h>

using namespace ilang;

int main() {

  ExportLmacCore2ToFile();

  auto core2 = LmacCore2::New();

  return 0;
}
