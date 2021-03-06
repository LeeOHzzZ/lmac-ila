// ============================================================================
// Instruction-Level Abstraction of LeWiz Communications Ethernet MAC
//
// This Instruction-Level Abstraction (ILA) description is derived based on the
// LeWiz Communications Ethernet MAC (LMAC), which is licensed under GNU LGPL.
// Check "LICENSE" which comes with this distribution for more information.
// ============================================================================
//
// File Name: main.cc

// entry point of the application
//  - create a new ila of LMAC CORE 2
//  - perform sanity check (optional)
//  - export ila portable

#include <fstream>

#include <ilang/util/log.h>

#include <argparse/argparse.hpp>
#include <lmac/core2/eqcheck.h>
#include <lmac/core2/lmac_core_top.h>

using namespace ilang;

int main(int argc, const char** argv) {
  // configure debug log
  LogToErr(true);
  // EnableDebug("LMAC");

  // create LMac Core 2 ILA
  ILA_INFO << "before creating ILA model";

  auto core2 = LmacCore2::New();

  ILA_INFO << "before export ILA portable";
  // export json target (ILA Portable)
  // ExportIlaPortable(core2, "LmacCore2.json");

  // export verilog target (w/ child program)
  ILA_INFO << "before exporting verilog target";
  std::string verilog_file_name = "LmacCore2.v";
  std::ofstream fw_verilog0(verilog_file_name);
  core2.ExportToVerilog(fw_verilog0);

 // verilog_file_name = "LmacCore2_TX_FIFO.v";
  //std::ofstream fw_verilog1(verilog_file_name);
  //core2.child("TX_FIFO").ExportToVerilog(fw_verilog1);

  verilog_file_name = "LmacCore2_TX_FUNC.v";
  std::ofstream fw_verilog2(verilog_file_name);
  core2.child("TX_FUNC").ExportToVerilog(fw_verilog2);

  verilog_file_name = "LmacCore2_FIFO_TEST.v";
  std::ofstream fw_verilog3(verilog_file_name);
  core2.child("FIFO_TEST").ExportToVerilog(fw_verilog3);

  // define the command line parser
  /*
  ArgumentParser parser;
  parser.addArgument("-d", "--design_path", 1);
  parser.addArgument("-o", "--output_path", 1);
  parser.addArgument("-i", "--instr_map", 1);
  parser.addArgument("-v", "--var_map", 1);
  parser.parse(argc, argv);
*

  auto design_path = parser.retrieve<std::string>("design_path");
  auto output_path = parser.retrieve<std::string>("output_path");
  auto instr_map = parser.retrieve<std::string>("instr_map");
  auto var_map = parser.retrieve<std::string>("var_map");

  design_path = (design_path == "") ? "../design/core2" : design_path;
  output_path = (output_path == "") ? "../verification/core2" : output_path;
  var_map = (var_map == "") ? "../refinement/core2/var_map.json" : var_map;
  */
  // var_map = "../refinement/core2/var_map.json";


  // generate verification target
  //GenVerifTargetReg(core2, design_path, instr_map, var_map,
                    // output_path + "/reg");
  
  // ILA_INFO << "before generating verification target";
  // GenVerifTargetTX(core2, design_path, instr_map, var_map,
  //                   output_path + "/TX");

  // generating verification target for TX_FIFO
  auto design_path = "../design/core2";
  auto output_path = "../verification/core2/TX_INSTR";
  auto var_map = "../refinement/core2/var_map_tx_fifo.json";
  auto instr_map = "../refinement/core2/instr_cond_tx_fifo.json";
  auto model = core2;
  GenVerifTargetTX_FIFO(model, design_path, instr_map, var_map, output_path);

  // generating verification target for TX_FUNC
  output_path = "../verification/core2/TX_FUNC";
  var_map = "../refinement/core2/var_map_tx_func.json";
  instr_map = "../refinement/core2/instr_cond_tx_func.json";
  model = core2.child("TX_FUNC");
  GenVerifTargetTX_FUNC(model, design_path, instr_map, var_map, output_path);

  // generating verification target for TX_FUNC bug hunting (empty fifo when sending payload)
  output_path = "../verification/core2/TX_FUNC_BH";
  var_map = "../refinement/core2/var_map_tx_func_bug_hunting.json";
  instr_map = "../refinement/core2/instr_cond_tx_func.json";
  model = core2.child("TX_FUNC");
  GenVerifTargetTX_FUNC_bug_hunting(model, design_path, instr_map, var_map, output_path);

  // generating verification target for fifo test
  output_path = "../verification/core2/FIFO_TEST";
  var_map = "../refinement/core2/var_map_fifo_test.json";
  instr_map = "../refinement/core2/instr_cond_fifo_test.json";
  model = core2.child("FIFO_TEST");
  //GenVerifTarget_FIFO_TEST(model, design_path, instr_map, var_map, output_path);

  // reset debug config.
  DisableDebug("LMAC");

  return 0;
}
