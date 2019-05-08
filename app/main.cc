// main.cc
//
// Entry point for the executable to generate LMAC-CORE-2 ILA.
//
// References:
// - https://github.com/lewiz-support/LMAC_CORE2

#include <iostream>
#include <lmac/core2/lmac_core_top.h>
#include <lmac_core_2/lmac_core_2.h>

using namespace ilang;

int main() {

  // ExportLmacCore2ToFile("LMacCore2", "LMacCore2.json");
  ExportLmacCore2ToFile();

  auto core2 = LmacCore2::New();

  return 0;
}
