// ============================================================================
// Instruction-Level Abstraction of LeWiz Communications Ethernet MAC
//
// This Instruction-Level Abstraction (ILA) description is derived based on the
// LeWiz Communications Ethernet MAC (LMAC), which is licensed under GNU LGPL.
// Check "LICENSE" which comes with this distribution for more information.
// ============================================================================
//
// File Name: lmac_core_top.h

#ifndef LMAC_CORE2_LMAC_CORE_TOP_H__
#define LMAC_CORE2_LMAC_CORE_TOP_H__

#include <ilang/ilang++.h>
#include <string>

namespace ilang {

class LmacCore2 {
public:
  LmacCore2();
  ~LmacCore2();

  static Ila New(const std::string& name = "LMAC_CORE_2");

protected:
  //

private:
  //

}; // class LmacCore2

}; // namespace ilang

#endif // LMAC_CORE2_LMAC_CORE_TOP_H__
