// lmac_core_2.h
//
// The header of the LMAC-CORE-2 ILA.
//
// References:
// - https://github.com/lewiz-support/LMAC_CORE2

#ifndef LMAC_CORE_2_H__
#define LMAC_CORE_2_H__

#include <ilang/ilang++.h>
#include <string>

/// \brief Construct the ILA model of LMAC-CORE-2 with the given name.
ilang::Ila GetLMacCore2Ila(const std::string& model_name = "LMacCore2");

/// \brief Construct the ILA of LMAC-CORE-2 and write the portable to file.
void ExportLmacCore2ToFile(const std::string& model_name = "LMacCore2",
                           const std::string& file_name = "LMacCore2.json");

#endif // LMAC_CORE_2_H__

