// ============================================================================
// Instruction-Level Abstraction of LeWiz Communications Ethernet MAC
//
// This Instruction-Level Abstraction (ILA) description is derived based on the
// LeWiz Communications Ethernet MAC (LMAC), which is licensed under GNU LGPL.
// Check "LICENSE" which comes with this distribution for more information.
// ============================================================================
//
// File Name: tx_instr.cc
// This file implements the tx path of the LMAC design. The TX path consists one instruction which can be 
// seen from the interface and one child which implement the function of the TX path. The child model has 4
// child instructions.

// TX FIFO instructions
// 1. Write the FIFO of the TX path
// 2. Start the TX state machine with the rst input, adding child instructions to implement the function of TX

// There are also Pause Function from RX waiting to be implemented.


#include <lmac/core2/lmac_core_top.h>
#include <lmac/core2/configs.h>
#include <iostream>

#include <ilang/util/log.h>

// crc look up table for half-byte crc generation.
unsigned CRC_Lut[16] = {
    0x00000000,0x1DB71064,0x3B6E20C8,0x26D930AC,0x76DC4190,0x6B6B51F4,0x4DB26158,0x5005713C,
    0xEDB88320,0xF00F9344,0xD6D6A3E8,0xCB61B38C,0x9B64C2B0,0x86D3D2D4,0xA00AE278,0xBDBDF21C
};

namespace ilang {
  
  // This function is for adding child to implement the micro-instructions of the TX path
  void LmacCore2::SetupTxChild(Ila& m) {
    // ILA_INFO << "before adding FIFO child";
    // AddChild_TX_FIFO(m);
    ILA_INFO << "before adding FUNC child";
    AddChild_TX_FUNC(m);
  }

  void LmacCore2::SetupTxInstr(Ila& m) {
    // create a new child under the top module named as tx_fifo
    
    ILA_INFO << "before FIFO instruction";

    {
      auto instr = m.NewInstr("TX_WR_PKT_DATA_FIFO");

      // decode
      auto wr_enable = (m.input(TX_WE) == TX_WE_V_VALID);
      auto fifo_non_full = (m.state(TXFIFO_FULL) != TXFIFO_FULL_V_FULL);

      instr.SetDecode(wr_enable & fifo_non_full);

      auto data_in = m.input(TX_DATA);
      auto txfifo_wused = Extract(m.state(TXFIFO_WUSED_QWD), 4, 0);
      auto txfifo_full = m.state(TXFIFO_FULL);

      auto fifo = m.state(TXFIFO_BUFF);
      auto wr_ptr = m.state(TXFIFO_BUFF_WR_PTR);
      // this is only for model refinement checking.
      auto rd_en = m.state(TXFIFO_RD_EN);

      auto is_full = (txfifo_wused == TXFIFO_BUFF_DEPTH);
      auto temp1 = Ite(is_full, BvConst(1, 1), BvConst(0, 1));
      // update
      auto wr_entry = Ite((wr_ptr == TXFIFO_BUFF_DEPTH), BvConst(0x0, TXFIFO_BUFF_WR_PTR_BWID), wr_ptr);
      auto temp = Ite((Uge(txfifo_wused, TXFIFO_BUFF_DEPTH - 1)), BvConst(0x1, TXFIFO_FULL_BWID), BvConst(0x0, TXFIFO_FULL_BWID));

      instr.SetUpdate(fifo, Store(fifo, wr_entry, data_in));
      instr.SetUpdate(wr_ptr, Ite((Uge(wr_ptr, TXFIFO_BUFF_DEPTH)), BvConst(0x1, TXFIFO_BUFF_WR_PTR_BWID), wr_ptr + 0x1));
      instr.SetUpdate(txfifo_wused, Ite((rd_en == 1), txfifo_wused + 0, txfifo_wused + 1));
      instr.SetUpdate(txfifo_full, Ite((rd_en == 1), temp1, temp));
//      txfifo_full is combinational logic in the verilog design. We need to add a post value holder to store the result for it.

    }

    return;
  }

  // Child ILA model for TX_FUNC

  ExprRef lut_read(const ExprRef& idx) {
    assert(idx.bit_width() == 8);
    auto first_h = (CRC_Lut[0] >> 16) & 0x0000FFFF;
    auto first_l = CRC_Lut[0] & 0x0000FFFF;
    ExprRef ret = Concat(BvConst(first_h, 16), BvConst(first_l, 16));
    for (int i = 1; i < 16; i++) {
      auto temp_h = (CRC_Lut[i] >> 16) & 0x0000FFFF;
      auto temp_l = CRC_Lut[i] & 0x0000FFFF;
      auto temp = Concat(BvConst(temp_h, 16), BvConst(temp_l, 16));
      ret = Ite(idx == i, temp, ret);
    }
    return ret;
  }


  void LmacCore2::AddChild_TX_FUNC(Ila& m) {
    // add a child for the TX functions
    auto child_tx_func = m.NewChild("TX_FUNC");
    // Set up internal states for this child
    SetupTxFuncInternal(child_tx_func);
    
    // auto resetn = m.input(RESETN);
    // child_tx_func.SetValid(resetn == RESETN_VALID);
    child_tx_func.SetValid(BoolConst(true));
    child_tx_func.SetFetch(BvConst(0x1, 1));

    // add reference of chile_tx_func for convenience
    auto cm = child_tx_func;

    // add initial condition
    cm.AddInit(cm.state(TX_B2B_OK) == 0);
    cm.AddInit(cm.state(TX_B2B_CNTR) == TX_B2B_CNTR_INITIAL);
    cm.AddInit(cm.state(TX_STATE) == TX_STATE_IDLE);
    cm.AddInit(cm.state(TX_STATE_ENCAP) == TX_STATE_ENCAP_IDLE);

    // parent states
    auto fifo = m.state(TXFIFO_BUFF);
    auto fifo_rd_ptr = m.state(TXFIFO_BUFF_RD_PTR);
    auto fifo_wused = Extract(m.state(TXFIFO_WUSED_QWD), 4, 0);  
    // auto fifo_non_empty = (Ugt(fifo_wused, 0));
    auto fifo_not_empty = (m.state(TXFIFO_RD_EMPTY) == 0);
    auto fifo_output = m.state(TXFIFO_RD_OUTPUT);
   
    // common child states
    auto b2b_cntr = cm.state(TX_B2B_CNTR);
    auto txd = cm.state(XGMII_DOUT_REG);
    auto txc = cm.state(XGMII_COUT_REG);
    auto byte_cnt = cm.state(TX_PACKET_BYTE_CNT);
    auto wcnt = cm.state(TX_WCNT);
    auto tx_state = cm.state(TX_STATE);
    auto tx_encap_state = cm.state(TX_STATE_ENCAP);
    auto crc = cm.state(CRC);
    auto crc_in = cm.state(CRC_IN);
    auto fifo_rd_en = m.state(TXFIFO_RD_EN);
    auto fifo_wr_en = m.input(TX_WE);


    // adding instructions for the TX functions.
    
    // instruction that set up the b2b_counter 
    ILA_INFO << "before setting b2b cntr instruction";
    {
      auto instr = cm.NewInstr("SET_B2B_CNTR_10G");

      // decode 
      auto mode_10G = (cm.input(MODE_10G) == 1);
      auto state_idle = (cm.state(TX_STATE) == TX_STATE_IDLE);
      auto state_encap_idle = (cm.state(TX_STATE_ENCAP) == TX_STATE_ENCAP_IDLE);
      auto cntr_non_neg = (cm.state(TX_B2B_CNTR) >= 0);
      auto b2b_no_ok = (cm.state(TX_B2B_OK) == 0);

      instr.SetDecode(mode_10G & state_idle & state_encap_idle & cntr_non_neg & b2b_no_ok);

      // State Update
      instr.SetUpdate(m.state(TXFIFO_RD_EN), BvConst(0x0, 1));
      instr.SetUpdate(b2b_cntr, Ite((b2b_cntr == 0), b2b_cntr, b2b_cntr - 1)); // 1 clk
      instr.SetUpdate(cm.state(TX_B2B_OK), Ite((b2b_cntr == 0), BvConst(0x1, 1), BvConst(0x0, 1)));
      instr.SetUpdate(txd, Concat(Concat(BvConst(0x0707,16), BvConst(0x0707, 16)), BvConst(0x07070707, 32))); // 1 clk
      instr.SetUpdate(txc, BvConst(0xFF, XGMII_COUT_REG_BWID)); // 1 clk

      instr.SetUpdate(cm.state("TX_FUNC_INSTR"), BvConst(0x0, 3));

    }

    // This instruction is to read the first qword of the packet from user, which contains the size of the packet
    // Corresponding to the state GET_WAIT_2 of the state machine in xgmii
    ILA_INFO << "before read byte cnt instruction";
    {
      auto instr = cm.NewInstr("READ_BYTE_CNT_10G");

      // decode 
      // child states
      auto mode_10G = (cm.input(MODE_10G) == 1);
      auto state_idle = (cm.state(TX_STATE) == TX_STATE_IDLE);
      auto state_encap_idle = (cm.state(TX_STATE_ENCAP) == TX_STATE_ENCAP_IDLE);
      auto b2b_ok = (cm.state(TX_B2B_OK) == 1);
      auto b2b_counter_zero = (b2b_cntr == 0);

      
      instr.SetDecode(mode_10G & b2b_ok & b2b_counter_zero & state_idle & state_encap_idle & fifo_not_empty);

      // State Update
      // read FIFO
      // For the wr_ptr, rd_ptr, fifo_output, we don't care about the value of them.
      // But the fifo_wused is required to write the refinement relation.
      auto actual_rd_ptr = Ite((fifo_rd_en == 0), fifo_rd_ptr, Ite((fifo_rd_ptr == TXFIFO_BUFF_DEPTH), BvConst(0x1, TXFIFO_BUFF_RD_PTR_BWID), fifo_rd_ptr+1));
      auto fifo_data_out = Load(fifo, Ite((actual_rd_ptr == TXFIFO_BUFF_DEPTH), BvConst(0, TXFIFO_BUFF_RD_PTR_BWID), actual_rd_ptr));
      instr.SetUpdate(fifo_output, fifo_data_out);// 1 clk
      instr.SetUpdate(fifo_rd_ptr, Ite((actual_rd_ptr == TXFIFO_BUFF_DEPTH), BvConst(0x1, TXFIFO_BUFF_RD_PTR_BWID), actual_rd_ptr + 1));//1 clk
      instr.SetUpdate(fifo_wused, Ite((fifo_rd_en == 0), fifo_wused - 1, fifo_wused - 2));// 1 clk
      instr.SetUpdate(m.state(TXFIFO_RD_EMPTY), Ite((fifo_wr_en == TX_WE_N) & (fifo_wused == 1), BvConst(1,1), BvConst(0,1)));
      // Do we need to consider when fifo only has 1 left but with the wused - 2? (However, this should not happen during the Read Stage)? Maybe a bug.

      // states update
      // Updating the qword count in bytes
      // Remember to use the updated/new result instead of the value of last cycle!!!!
      auto byte_cnt_new = Extract(fifo_data_out, 15, 0);
      instr.SetUpdate(byte_cnt, byte_cnt_new); // 4 clk

      auto bcnt_h = Extract(byte_cnt_new, 15, 3);
      auto bcnt_l = Extract(byte_cnt_new, 2, 0);
      auto nbytes = Ite(Ugt(bcnt_l, 0), Concat((bcnt_h + 1), BvConst(0x0, 3)), Concat(bcnt_h, BvConst(0x0, 3)));
      
      instr.SetUpdate(wcnt, (nbytes - 1)); // 5 clk
      instr.SetUpdate(cm.state(TX_WCNT_INI), (nbytes - 1));

      // State machine update
      instr.SetUpdate(tx_state, TX_STATE_DAT); // 5 clk
      instr.SetUpdate(tx_encap_state, TX_STATE_ENCAP_DAT); // 4 clk

      // Output Update 
      // Be Careful!!! The output state is actually 1 clk behind the other arch states in this step!

      // I put the B2B CNTR here 
      instr.SetUpdate(b2b_cntr, TX_B2B_CNTR_INITIAL); // 5 clk
      instr.SetUpdate(cm.state(TX_B2B_OK), BvConst(0x0, 1)); // This is one clock behind b2b_cntr set to zero. If the delay changes, we need to modify this.
            
      instr.SetUpdate(txd, Concat(BvConst(0xD555, 16), Concat(BvConst(0x5555, 16), BvConst(0x555555FB,32)))); // 6 clk
      instr.SetUpdate(txc, BvConst(0x01, XGMII_COUT_REG_BWID)); // 6 clk 




      // Set initial value of the CRC. This initial value is the output data. However the one that participates in the generation is different.
      // crc and crc_in both has 3 clk delay.
      auto rb = Extract(byte_cnt, 2, 0); // rb stands for residual bytes
      instr.SetUpdate(crc, Ite((rb == 0x0), BvConst(0x00000000, 32), 
                                    Ite((rb == 0x1), BvConst(0x56a579b9, 32),
                                    Ite((rb == 0x2), Concat(BvConst(0xe962, 16), BvConst(0xb350, 16)),
                                    Ite((rb == 0x3), BvConst(0x3306840b, 32),
                                    Ite((rb == 0x4), Concat(BvConst(0x9d0a, 16), BvConst(0xd96d, 16)),
                                    Ite((rb == 0x5), BvConst(0x7ed9d15c, 32),
                                    Ite((rb == 0x6), BvConst(0x6f62e365, 32),
                                                     BvConst(0x26706a0f, 32))))))))
                      );
      
      // The crc_in inverted the endian of the crc and the inverted the bits.
      instr.SetUpdate(crc_in, Ite((rb == 0x0), Concat(BvConst(0xffff, 16), BvConst(0xffff,16)),
                                    Ite((rb == 0x1), BvConst(0x46865aa9, 32),
                                    Ite((rb == 0x2), Concat(BvConst(0xaf4c, 16), BvConst(0x9d16, 16)),
                                    Ite((rb == 0x3), Concat(BvConst(0xf47b, 16), BvConst(0xf9cc, 16)),
                                    Ite((rb == 0x4), Concat(BvConst(0x9226, 16), BvConst(0xf562, 16)),
                                    Ite((rb == 0x5), Concat(BvConst(0xa32e, 16), BvConst(0x2681, 16)),
                                    Ite((rb == 0x6), Concat(BvConst(0x9a1c, 16), BvConst(0x9d90, 16)),
                                                     Concat(BvConst(0xf095, 16), BvConst(0x8fd9, 16)))))))))
                      );

      instr.SetUpdate(cm.state("TX_FUNC_INSTR"), BvConst(0x1, 3));
    }

    
    // This instruction is for writing the payload of the packet 
    ILA_INFO << "before writing payload";
    {
      auto instr = cm.NewInstr("WR_PKT_PAYLOAD_10G");

      // decode
      auto mode_10G = (m.input(MODE_10G) == 1);
      auto state_dat = (cm.state(TX_STATE) == TX_STATE_DAT);
      auto fifo_not_empty = (m.state(TXFIFO_RD_EMPTY) == 0);
      // this condition is due to delay reading from the fifo.
      auto cond = ((wcnt > 23) & fifo_not_empty) | (wcnt <= 23);

      instr.SetDecode(mode_10G & state_dat & cond);

      // child state
      auto tx_buf = cm.state(TX_BUF);
      auto crc_dat_in = cm.state(CRC_DAT_IN);

      // Set Update
      // when wcnt < 0, we have taken all the data. No need to fetch from the fifo and update the crc output.
      // Read data from FIFO
      // Because the ILA model didn't consider the some intermediate states, the rd_ptr needs to be subtracted to read the right data in the fifo for the operation.
      auto delayed_rd_ptr = Ite((wcnt > 15) ,             Ite(Uge(fifo_rd_ptr, 3), fifo_rd_ptr - 3, BvConst(TXFIFO_BUFF_DEPTH, TXFIFO_BUFF_RD_PTR_BWID) - (BvConst(0x3, TXFIFO_BUFF_RD_PTR_BWID) - fifo_rd_ptr)), 
                            Ite((wcnt >= 8 & wcnt <= 15), Ite(Uge(fifo_rd_ptr, 2), fifo_rd_ptr - 2, BvConst(TXFIFO_BUFF_DEPTH, TXFIFO_BUFF_RD_PTR_BWID) - (BvConst(0x2, TXFIFO_BUFF_RD_PTR_BWID) - fifo_rd_ptr)),
                                                         Ite(Uge(fifo_rd_ptr, 1), fifo_rd_ptr - 1, BvConst(TXFIFO_BUFF_DEPTH, TXFIFO_BUFF_RD_PTR_BWID) - (BvConst(0x1, TXFIFO_BUFF_RD_PTR_BWID) - fifo_rd_ptr))));

      auto fifo_data_out = Load(fifo, Ite(fifo_rd_ptr == TXFIFO_BUFF_DEPTH, BvConst(0x0, TXFIFO_BUFF_RD_PTR_BWID), fifo_rd_ptr)); // this state is redundant
      auto delay_data_out = Load(fifo, delayed_rd_ptr); // this is the actual data that is used for operations.
      
      // this part is only for refinement relation. This instruction actually use the delay info above.
      instr.SetUpdate(fifo_output, Ite((wcnt > 23), fifo_data_out, fifo_output));
      instr.SetUpdate(fifo_rd_ptr, Ite((wcnt > 23), Ite((fifo_rd_ptr == TXFIFO_BUFF_DEPTH), BvConst(0x1, TXFIFO_BUFF_RD_PTR_BWID), fifo_rd_ptr + 1), fifo_rd_ptr));
      instr.SetUpdate(fifo_wused, Ite((wcnt > 23), fifo_wused - 1, fifo_wused));
      // not sure whether this should consider the delay. TODO: Test 
      instr.SetUpdate(m.state(TXFIFO_RD_EMPTY), Ite((fifo_wr_en == TX_WE_N) & (fifo_wused == 1), BvConst(1, 1), BvConst(0,1)));

      // CRC code Update

      // fq stands for first qword of the whole packet. When the remaining bytes equals to the byte count, it is the fisrt qword.
      auto fq = (wcnt == cm.state(TX_WCNT_INI));
      auto rb = Extract(byte_cnt, 2, 0);
      
      // CRC code update
      auto crc_data_input = Ite(fq, Ite((rb == 0x0), delay_data_out,
                                  Ite((rb == 0x1), Concat(Extract(delay_data_out,  7, 0), Concat(BvConst(0x0, 32), BvConst(0x0, 24))),
                                  Ite((rb == 0x2), Concat(Extract(delay_data_out, 15, 0), Concat(BvConst(0x0, 32), BvConst(0x0, 16))),
                                  Ite((rb == 0x3), Concat(Extract(delay_data_out, 23, 0), Concat(BvConst(0x0, 32), BvConst(0x0, 8))),
                                  Ite((rb == 0x4), Concat(Extract(delay_data_out, 31, 0), BvConst(0x0, 32)),
                                  Ite((rb == 0x5), Concat(Extract(delay_data_out, 39, 0), BvConst(0x0, 24)),
                                  Ite((rb == 0x6), Concat(Extract(delay_data_out, 47, 0), BvConst(0x0, 16)),
                                                   Concat(Extract(delay_data_out, 55, 0), BvConst(0x0, 8))))))))),

                                  Ite((rb == 0x0), delay_data_out,
                                  Ite((rb == 0x1), Concat(Extract(delay_data_out,  7, 0), Extract(tx_buf,  63, 8)),
                                  Ite((rb == 0x2), Concat(Extract(delay_data_out, 15, 0), Extract(tx_buf,  63, 16)),
                                  Ite((rb == 0x3), Concat(Extract(delay_data_out, 23, 0), Extract(tx_buf,  63, 24)),
                                  Ite((rb == 0x4), Concat(Extract(delay_data_out, 31, 0), Extract(tx_buf,  63, 32)),
                                  Ite((rb == 0x5), Concat(Extract(delay_data_out, 39, 0), Extract(tx_buf,  63, 40)),
                                  Ite((rb == 0x6), Concat(Extract(delay_data_out, 47, 0), Extract(tx_buf,  63, 48)),
                                                   Concat(Extract(delay_data_out, 55, 0), Extract(tx_buf,  63, 56))))))))));

      instr.SetUpdate(crc_dat_in, crc_data_input);
      
      // This buffer should be placed after the CRC update.
      instr.SetUpdate(tx_buf, delay_data_out);

      // CRC generation, using half_byte algorithm. reference: https://create.stephan-brumme.com/crc32/#half-byte
      auto crc_g = cm.state(CRC_IN);
      // The current stores the byte that generator takes. 
      
      for (auto len = 0; len < 8; len++) {
        auto current = Extract(crc_dat_in, (8*len + 7), 8*len);
        crc_g = lut_read((Extract(crc_g, 7, 0) ^ current) & BvConst(0x0F, 8)) ^ (Lshr(crc_g, 4));
        crc_g = lut_read((Extract(crc_g, 7, 0) ^ Lshr(current, 4)) & BvConst(0x0F, 8)) ^ Lshr(crc_g, 4);
      }

      // update CRC code input for the generator;
      auto crc_in_temp = Ite((wcnt > 0), crc_g, crc_in);
      //auto crc_in_temp = crc_g;
      instr.SetUpdate(crc_in, crc_in_temp);
      // update the CRC output. Needs transformation.
      auto crc_code = ~(( Lshr(crc_in_temp, 24) & BvConst(0xFF, 32)) | (Lshr(crc_in_temp, 8) & BvConst(0xFF00, 32)) | ((crc_in_temp << 8) & BvConst(0xFF0000, 32)) | ((crc_in_temp << 24) & Concat(BvConst(0xFF00, 16), BvConst(0x0000, 16))));
//      instr.SetUpdate(cm.state(CRC), Ite((wcnt > 0), crc_code, cm.state(CRC)));
      instr.SetUpdate(cm.state(CRC), crc_code);
      // when output the crc code, we need to change the endian of the code.
      // auto crc_temp = Ite((wcnt > 0), crc_code, cm.state(CRC));
      auto crc_output = ( Lshr(crc_code, 24) & BvConst(0xFF, 32)) | (Lshr(crc_code, 8) & BvConst(0xFF00, 32)) | ((crc_code << 8) & BvConst(0xFF0000, 32)) | ((crc_code << 24) & Concat(BvConst(0xFF00, 16), BvConst(0x0000, 16)));

      // difference between crc_code and crc_output is that crc_code is the value in the crc register, however, when
      // outputing the value to txd, we need to change the endian. crc_output is for txd.
      /******* CRC code update  finished ***********/

      // Update output
      // txd & txc take 2 clk to update
      instr.SetUpdate(txc,  Ite((wcnt > 7),   BvConst(0x00, XGMII_COUT_REG_BWID),
                            Ite((wcnt >= 0) & (wcnt <= 7),  Ite((rb == 0), BvConst(0x00, XGMII_COUT_REG_BWID),
                                              Ite((rb == 1), BvConst(0xE0, XGMII_COUT_REG_BWID),
                                              Ite((rb == 2), BvConst(0xC0, XGMII_COUT_REG_BWID),
                                              Ite((rb == 3), BvConst(0x80, XGMII_COUT_REG_BWID),
                                              Ite((rb == 4), BvConst(0x00, XGMII_COUT_REG_BWID),
                                              Ite((rb == 5), BvConst(0x00, XGMII_COUT_REG_BWID),
                                              Ite((rb == 6), BvConst(0x00, XGMII_COUT_REG_BWID),
                                                             BvConst(0x00, XGMII_COUT_REG_BWID)))))))), 
                            Ite((wcnt < 0),   Ite((rb == 0), BvConst(0xF0, XGMII_COUT_REG_BWID),
                                              Ite((rb == 1), BvConst(0xFF, XGMII_COUT_REG_BWID),
                                              Ite((rb == 2), BvConst(0xFF, XGMII_COUT_REG_BWID),
                                              Ite((rb == 3), BvConst(0xFF, XGMII_COUT_REG_BWID),
                                              Ite((rb == 4), BvConst(0xFF, XGMII_COUT_REG_BWID),
                                              Ite((rb == 5), BvConst(0xFE, XGMII_COUT_REG_BWID),
                                              Ite((rb == 6), BvConst(0xFC, XGMII_COUT_REG_BWID),
                                                             BvConst(0xF8, XGMII_COUT_REG_BWID)))))))),  
                                              BvConst(0xFF, 8)))));
                                                                
                                                                
      auto dat = delay_data_out;

      auto crc_0 = dat;
      auto crc_1 = Concat(BvConst(0x0707FD, 24), Concat(crc_output, Extract(dat, 7, 0)));
      auto crc_2 = Concat(BvConst(0x07FD, 16), Concat(crc_output, Extract(dat, 15, 0)));
      auto crc_3 = Concat(BvConst(0xFD, 8), Concat(crc_output, Extract(dat, 23, 0)));
      auto crc_4 = Concat(crc_output, Extract(dat, 31, 0));
      auto crc_5 = Concat(Extract(crc_output, 23, 0), Extract(dat, 39, 0));
      auto crc_6 = Concat(Extract(crc_output, 15, 0), Extract(dat, 47, 0));
      auto crc_7 = Concat(Extract(crc_output, 7, 0), Extract(dat, 55, 0));

      auto eof_0 = Concat(BvConst(0x070707FD, 32), crc_output);
      auto eof_1 = Concat(BvConst(0x07070707, 32), BvConst(0x07070707, 32));
      auto eof_2 = Concat(BvConst(0x07070707, 32), BvConst(0x07070707, 32));
      auto eof_3 = Concat(BvConst(0x07070707, 32), BvConst(0x07070707, 32));
      auto eof_4 = Concat(BvConst(0x07070707, 32), BvConst(0x070707FD, 32));
      auto eof_5 = Concat(Concat(BvConst(0x07070707, 32), BvConst(0x0707FD, 24)), Extract(crc_output, 31, 24));
      auto eof_6 = Concat(Concat(BvConst(0x07070707, 32), BvConst(0x07FD, 16)), Extract(crc_output, 31, 16));
      auto eof_7 = Concat(Concat(BvConst(0x07070707, 32), BvConst(0xFD, 8)), Extract(crc_output, 31, 8));

      auto dout_idle = Concat(BvConst(0x07070707, 32), BvConst(0x07070707, 32));

      instr.SetUpdate(txd,  Ite((wcnt > 7), dat,
                            Ite((wcnt >= 0) & (wcnt <= 7),  Ite((rb == 0), crc_0,
                                              Ite((rb == 1), crc_1,
                                              Ite((rb == 2), crc_2,
                                              Ite((rb == 3), crc_3,
                                              Ite((rb == 4), crc_4,
                                              Ite((rb == 5), crc_5,
                                              Ite((rb == 6), crc_6,
                                                             crc_7))))))),
                            Ite((wcnt < 0),   Ite((rb == 0), eof_0,
                                              Ite((rb == 1), eof_1,
                                              Ite((rb == 2), eof_2,
                                              Ite((rb == 3), eof_3,
                                              Ite((rb == 4), eof_4,
                                              Ite((rb == 5), eof_5,
                                              Ite((rb == 6), eof_6,
                                                             eof_7))))))), 
                                                                              
                                            dout_idle))));
                                                                
      // Update the wcnt
      instr.SetUpdate(b2b_cntr, Ite((tx_encap_state == TX_STATE_ENCAP_IDLE) & (b2b_cntr > 0), b2b_cntr - 1, b2b_cntr)); // 1 clk
      instr.SetUpdate(tx_state, Ite((wcnt >= 0), TX_STATE_DAT, TX_STATE_CRC)); // 1 clk
      instr.SetUpdate(tx_encap_state, Ite((wcnt < 16), TX_STATE_ENCAP_IDLE, tx_encap_state)); // 1 clk
      instr.SetUpdate(wcnt, wcnt - 8); // 1 clk


      instr.SetUpdate(cm.state("TX_FUNC_INSTR"), BvConst(0x2, 3));
    }

    // This is for writing the EOF and CRC code at the end of the frame.
    ILA_INFO << "before writing lastone";
    {
      auto instr = cm.NewInstr("WR_PKT_LASTONE_10G");

      // decode 
      auto mode_10G = (m.input(MODE_10G) == 1);
      auto state_crc = (tx_state == TX_STATE_CRC);

      instr.SetDecode(mode_10G & state_crc);

      // state updates
      instr.SetUpdate(cm.state(TX_PKT_SENT), cm.state(TX_PKT_SENT) + 1); // 2 clk
      instr.SetUpdate(cm.state(TX_BYTE_SENT), cm.state(TX_BYTE_SENT) + Concat(BvConst(0x0, 16), byte_cnt)); // 2 clk
      instr.SetUpdate(tx_state, TX_STATE_IDLE); // 1 clk
      instr.SetUpdate(b2b_cntr, Ite((tx_encap_state == TX_STATE_ENCAP_IDLE) & b2b_cntr > 0, b2b_cntr - 1, b2b_cntr)); // 1 clk


      instr.SetUpdate(cm.state("TX_FUNC_INSTR"), BvConst(0x3, 3));
    }

    return;
  }
}


  
