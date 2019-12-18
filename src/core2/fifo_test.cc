// ============================================================================
// Instruction-Level Abstraction of LeWiz Communications Ethernet MAC
//
// This Instruction-Level Abstraction (ILA) description is derived based on the
// LeWiz Communications Ethernet MAC (LMAC), which is licensed under GNU LGPL.
// Check "LICENSE" which comes with this distribution for more information.
// ============================================================================
//
// File Name: file_test.cc
// This file implement the model of a two clk driven fifo module, of which two clock
// frequencies are of integer multiples.


#include <lmac/core2/lmac_core_top.h>
#include <lmac/core2/configs.h>
#include <lmac/utils.h>
#include <iostream>

#include <ilang/util/log.h>

#define trigger 2

namespace ilang {
  void LmacCore2::SetupFIFOTEST(Ila& m) {
    ILA_INFO << "before adding child for fifo test";
    AddChild_FIFO_TEST(m);
  }

  void LmacCore2::AddChild_FIFO_TEST(Ila& m) {
    auto child = m.NewChild("FIFO_TEST");
    child.SetValid(m.input(TX_WE) == TX_WE_V_VALID);
    child.SetFetch(BvConst(0x1, 1));

    // counter for the clock
    NewState(child, "counter", 2);
    // fifo read enable signal
    NewState(child, "RE", 1);
    // fifo empty signal
    NewState(child, "fifo_empty", 1);


    // common states used
    auto data_in = m.input(TX_DATA);
    auto wused = m.state(TXFIFO_WUSED_QWD);
    
    auto fifo_full = m.state(TXFIFO_FULL);
    auto fifo_empty = child.state("fifo_empty");

    auto fifo = m.state(TXFIFO_BUFF);
    auto wr_ptr = m.state(TXFIFO_BUFF_WR_PTR);
    auto rd_ptr = m.state(TXFIFO_BUFF_RD_PTR);
    auto fifo_out = m.state(TXFIFO_RD_OUTPUT);
    auto counter = child.state("counter");

    ILA_INFO << "before fifo_test 1st instr";
    // three instructions
    {// Write enable but not read enable
      auto instr = child.NewInstr("Write_only");
      
      //decode
      auto we = (m.input(TX_WE) == TX_WE_V_VALID);
      auto fifo_non_full = (fifo_full != TXFIFO_FULL_V_FULL);
      auto rne = (child.state("RE") == 0);
      instr.SetDecode(we & fifo_non_full & rne);

      auto wr_entry = Ite((wr_ptr == TXFIFO_BUFF_DEPTH), BvConst(0x0, TXFIFO_BUFF_WR_PTR_BWID),
                                                          wr_ptr);

      instr.SetUpdate(fifo, Store(fifo, wr_entry, data_in));
      instr.SetUpdate(wr_ptr, Ite((Uge(wr_ptr, TXFIFO_BUFF_DEPTH)),
                                    BvConst(0x1, TXFIFO_BUFF_WR_PTR_BWID), wr_ptr+1));
      instr.SetUpdate(wused, wused+1);
      instr.SetUpdate(fifo_full, Ite(Uge(wused, TXFIFO_BUFF_DEPTH - 1), BvConst(1,1), 
			      						BvConst(0,1)));
      instr.SetUpdate(fifo_empty, BvConst(0x0, 0));
    }

    ILA_INFO << "before fifo_test 2nd instr";
    {// Write disable and Read enable
      auto instr = child.NewInstr("Read_only");

      auto wne = (m.input(TX_WE) == 0);
      auto fifo_not_empty = (fifo_empty == 0);
      auto re = (child.state("RE") == 1);
      auto full_temp = Ite((wused == TXFIFO_BUFF_DEPTH), BvConst(1, 1), BvConst(0,1));
      auto empty_temp = Ite((wused == 0), BvConst(1,1), BvConst(0,1));

      instr.SetDecode(wne & fifo_not_empty & re);

      //updates
      auto run = (counter == trigger);
      auto data_out = Ite(run, Load(fifo, Ite(rd_ptr == TXFIFO_BUFF_DEPTH, 
                                            BvConst(0x0, TXFIFO_BUFF_RD_PTR_BWID), rd_ptr)),
                               fifo_out);

      instr.SetUpdate(fifo_out, data_out);
      instr.SetUpdate(rd_ptr, Ite(run, Ite((rd_ptr == TXFIFO_BUFF_DEPTH), 
                                            BvConst(0x1, TXFIFO_BUFF_RD_PTR_BWID), rd_ptr+1),
                                       rd_ptr));
      instr.SetUpdate(wused, Ite(run, wused-1, wused));
      instr.SetUpdate(fifo_full, Ite(run, BvConst(0x0, 1), full_temp));
      instr.SetUpdate(fifo_empty, Ite(run, Ite(wused == 1, BvConst(0x1,1), BvConst(0x0,1)), 
      		      		                empty_temp));

      
    }

    ILA_INFO << "before fifo_test 3rd instr";
    {// Write and read both enable and triggered
      // when counter != trigger, act like write-only
      // when counter == trigger, both effects
      auto instr = child.NewInstr("Write-Read");

      // decode
      auto we = (m.input(TX_WE) == TX_WE_V_VALID);
      auto re = (child.state("RE") == 1);
      auto fifo_not_full = (fifo_full != TXFIFO_FULL_V_FULL);
      auto fifo_not_empty = (fifo_empty == 0);
      instr.SetDecode(we & re & fifo_not_empty & fifo_not_full);

      auto full_temp = Ite((wused == TXFIFO_BUFF_DEPTH), BvConst(1, 1), BvConst(0,1));
      auto empty_temp = Ite((wused == 0), BvConst(1,1), BvConst(0,1));
      auto run = (counter == trigger);
      auto data_out = Ite(run, Load(fifo, Ite(rd_ptr == TXFIFO_BUFF_DEPTH, 
                                            BvConst(0x0, TXFIFO_BUFF_RD_PTR_BWID), rd_ptr)),
                               fifo_out);
      ILA_INFO << "TEST";
      // state updates
      auto wr_entry = Ite((wr_ptr == TXFIFO_BUFF_DEPTH), BvConst(0x0, TXFIFO_BUFF_WR_PTR_BWID),
                                                          wr_ptr);
      auto rd_entry = Ite((rd_ptr == TXFIFO_BUFF_DEPTH), BvConst(0x0, TXFIFO_BUFF_RD_PTR_BWID),
                                                          rd_ptr);

      instr.SetUpdate(fifo, Store(fifo, wr_entry, data_in));
      instr.SetUpdate(fifo_out, data_out);

      instr.SetUpdate(wr_ptr,Ite((Uge(wr_ptr, TXFIFO_BUFF_DEPTH)),
                                    BvConst(0x1, TXFIFO_BUFF_WR_PTR_BWID), wr_ptr+1));
      instr.SetUpdate(rd_ptr, Ite(run, Ite((rd_ptr == TXFIFO_BUFF_DEPTH), 
                                            BvConst(0x1, TXFIFO_BUFF_RD_PTR_BWID), rd_ptr+1),
                                       rd_ptr));

      instr.SetUpdate(wused, Ite(run, wused, wused+1));
      instr.SetUpdate(fifo_full, Ite(run, full_temp, 
                                  Ite((Uge(wused, TXFIFO_BUFF_DEPTH - 1)), BvConst(1, 1), 
					  BvConst(0x0, 1))));
      instr.SetUpdate(fifo_empty, Ite(run, empty_temp, BvConst(0x0, 1)));

    }
  }
}
