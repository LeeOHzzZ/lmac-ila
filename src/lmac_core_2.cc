// lmac_core_2.cc
//
// The implementation of the LMAC-CORE-2 ILA.
//
// References:
// - https://github.com/lewiz-support/LMAC_CORE2

#include <lmac_core_2/config.h>
#include <lmac_core_2/lmac_core_2.h>

ilang::Ila GetLMacCore2Ila(const std::string& model_name) {
  // create the ila object placeholder
  auto m = ilang::Ila(model_name);

  /* ------------------------- Architectural States ------------------------- */

  //
  // User Tx FIFO Interface
  //

  /* TX_WE
   *  - write enable
   *  - 1 = data is valid on the TX_DATA bug; 0 = no data is on the data bus.
   */
  auto tx_we = m.NewBoolInput("TX_WE");

  /* TX_DATA
   *  - data bus
   *  - The first qword sent by the user logic is the byte count of the packet.
   *  - Subsequent qwords are the Ethernet packet header and the payload.
   *  - The data must be in big-endian for the packet data.
   *  - The smallest packet allowed is 64 bytes.
   */
  auto tx_data = m.NewBvInput("TX_DATA", USER_INTERFACE_BIT_WID);

  /* TX_BE
   *  - byte enable (optional)
   *  - 1 bit for each byte lane of the data bus (TX_DATA).
   *  - E.g., TX_BE[0] = 1 means data is valid on TX_DATA[7:0].
   */
  auto tx_be = m.NewBvInput("TX_BE", USER_INTERFACE_BIT_WID);

  /* TX_FIFO_FULL
   *  - indicator of the Tx FIFO status
   *  - When 1, the internal Tx FIFO is full and cannot accept any more packet.
   */
  auto tx_fifo_full = m.NewBoolState("TX_FIFO_FULL");

  /* TX_FIFO_WUSED_QWD
   *  - the number of qwords Tx FIFO contained
   *  - This value is dynamic and can change from clock to clock.
   *  - XXX cannot/shouldn't be checked against RTL
   *  - We can see this as the pointer pointed to the head of the FIFO buffer.
   */
  auto tx_fifo_wused_qwd =
      m.NewBvState("TX_FIFO_WUSED_QWD", TX_FIFO_STATUS_BIT_WID);

  //
  // User Rx FIFO Interface
  //

  //
  // Register and Configuration Interface
  //

  //
  // PHY Interface
  //

  //
  // Internal states -- Tx FIFO
  //

  /* TX_FIFO_BUFF
   *  - the transmit FIFO buffer
   *  - The buffer size is not specified in the user manual (the only spec.).
   *  - We choose to model the buffer as memory/array in stead of bit-vector.
   *    Further, the value (of each entry) is as wide as the user interface.
   */
  auto tx_fifo_buff =
      m.NewMemState("TX_FIFO_BUFF", TX_BUFF_ADDR_BIT_WID, TX_BUFF_DATA_BIT_WID);

  /* TX_PKT_WR_CNT
   *  - the number of remaining steps to write in the current packet
   *  - This counter is set when the size (first qword) is read.
   *  - The step number is calculated w.r.t. the user interface, e.g., Qword.
   *  - When receiving the remaining packet, the counter decrements to zero.
   *  - Packet size does not need to be a multitude of user interface bit width
   */
  auto tx_pkt_wr_cnt = m.NewBvState("TX_PKT_WR_CNT", TX_BUFF_ADDR_BIT_WID);

  /* TX_PKT_RD_CNT
   *  - the number of remaining steps to read in the current packet
   *  - This counter is set when the full packet is received.
   *  - The steps are used by the child-ILAs to process the complete packet.
   */
  auto tx_pkt_rd_cnt = m.NewBvState("TX_PKT_RD_CNT", TX_BUFF_ADDR_BIT_WID);

  /* TX_BUFF_WR_PTR
   *  - the FIFO buffer write pointer
   *  - The write pointer follows the write step count (reversely)..
   *  - Complex: the pointer wraps around when reaching the buffer boundary and
   *    does not reset when new packet arrives.
   *  - Simple (at most one packet): the pointer resets for each packet, and has
   *    constant sum with the step counter (packet size + 1).
   */
  auto tx_buff_wr_ptr = m.NewBvState("TX_BUFF_WR_PTR", TX_BUFF_ADDR_BIT_WID);

  /* TX_BUFF_RD_PTR
   *  - the FIFO buffer read pointer
   *  - The read pointer follows the read step count (reversely).
   *  - Complex: the pointer wraps around when reaching the buffer boundary and
   *    does not reset when new packet is processed.
   *  - Simple (at most one packet): the pointer resets for each packet, and has
   *    constant sum with the step counter (packet size + 1).
   */
  auto tx_buff_rd_ptr = m.NewBvState("TX_BUFF_RD_PTR", TX_BUFF_ADDR_BIT_WID);

  //
  // Internal states -- Rx FIFO
  //

  //
  // Internal states -- Register and Configuration
  //

  //
  // Internal states -- PHY
  //

  /* ------------------------- Fetch Function ------------------------------- */
  // The opcode is actually fetched from four different interfaces: Tx, Rx,
  // Reg, and Phy.
  auto op_tx = Concat(tx_we, !tx_fifo_full);
  auto fetch = op_tx; // temporary
  m.SetFetch(fetch);

  /* ------------------------- Valid Function ------------------------------- */
  // There are in total four interfaces: Tx, Rx, Reg, and Phy.
  auto valid_tx = (op_tx != 0x0);
  auto valid_rx = false;  // temporary
  auto valid_reg = false; // temporary
  auto valid_phy = false; // temporary
  auto valid = valid_tx | valid_rx | valid_reg | valid_phy;
  m.SetValid(valid);

  /* ------------------------- Instructions --------------------------------- */

  { // TX_WR_DATA
    // declare an instruction in the ILA model
    auto instr = m.NewInstr("TX_WR_DATA");

    //
    // decode
    //
    auto decode = tx_we & !tx_fifo_full;
    instr.SetDecode(decode);

    //
    // state update functions
    //

    // example: (x: some value; -: don't care)
    //
    // in_data_val 8 x x x x x x x x -
    // pkt_wr_cnt  0 8 7 6 5 4 3 2 1 0
    // buff_wr_ptr 0 1 2 3 4 5 6 7 8 9/0 (reset to 0 in simple model)
    //
    // FIFO buffer - 8 x x x x x x x x
    //
    // pkt_rd_cnt  0 0 0 0 0 0 0 0 0 8
    // buff_rd_ptr 0 0 0 0 0 0 0 0 0 0 (start from 0 in simple model)

    auto is_size_qwrd = (tx_pkt_wr_cnt == 0x0);
    auto is_last_qwrd = (tx_pkt_wr_cnt == 0x1);
    auto tx_complete = (tx_pkt_rd_cnt == 0x0);
    auto in_data_val = tx_data & tx_be;
    auto k_zero_addr = ilang::BvConst(0x0, TX_BUFF_ADDR_BIT_WID);

    // tx_fifo_wused_qwd
    auto tx_fifo_wused_qwd_nxt =
        tx_fifo_wused_qwd + (USER_INTERFACE_BIT_WID / QWRD_BIT_WID);
    instr.SetUpdate(tx_fifo_wused_qwd, tx_fifo_wused_qwd_nxt);

    // tx_fifo_full
    // XXX implementation specific
    auto tx_fifo_full_nxt = (is_last_qwrd | !tx_complete);
    instr.SetUpdate(tx_fifo_full, tx_fifo_full_nxt);

    // tx_pkt_wr_cnt
    auto down_shift = in_data_val >> 3; // XXX change per user interface width
    auto has_remainder = (down_shift != (down_shift >> 3));
    auto size_measured_in_steps = Ite(has_remainder,  // is a multitude?
                                      down_shift + 1, // add one more step
                                      down_shift);    // keep as is
    auto tx_pkt_wr_cnt_nxt = Ite(is_size_qwrd,
                                 size_measured_in_steps, // initialize
                                 tx_pkt_wr_cnt - 1);     // decrement
    instr.SetUpdate(tx_pkt_wr_cnt, tx_pkt_wr_cnt_nxt);

    // tx_buff_wr_ptr
    // reset to 0 for each packet -- at most one packet in the FIFO buffer
    auto tx_buff_wr_ptr_inc = tx_buff_wr_ptr + 1;
    auto tx_buff_wr_ptr_nxt = Ite(is_last_qwrd,        // end of packet?
                                  k_zero_addr,         // reset
                                  tx_buff_wr_ptr_inc); // increment
    instr.SetUpdate(tx_buff_wr_ptr, tx_buff_wr_ptr_nxt);

    // tx_pkt_rd_cnt
    auto size_load_from_buffer = Load(tx_fifo_buff, tx_buff_rd_ptr);
    auto tx_pkt_rd_cnt_nxt = Ite(is_last_qwrd,          // end of packet?
                                 size_load_from_buffer, // initialize
                                 k_zero_addr);          // reset/unchanged
    instr.SetUpdate(tx_pkt_rd_cnt, tx_pkt_rd_cnt_nxt);

    // tx_buff_rd_ptr
    auto tx_buff_rd_ptr_nxt = k_zero_addr; // keep the size field
    instr.SetUpdate(tx_buff_rd_ptr, tx_buff_rd_ptr_nxt);

    // tx_fifo_buff
    auto tx_fifo_buff_nxt = Store(tx_fifo_buff, tx_buff_wr_ptr,
                                  in_data_val); // store the masked value
    instr.SetUpdate(tx_fifo_buff, tx_fifo_buff_nxt);
  }

  auto child_tx = m.NewChild(model_name + "_Tx_crc");
  { // child Tx
    /* ----------------------- Architectural States ------------------------- */
    /* TX_FRAME_SUM
     *  - running sum of the whole frame, used to calculate the CRC 32 field
     */
    auto tx_frame_sum =
        child_tx.NewBvState("TX_FRAME_SUM", TX_BUFF_DATA_BIT_WID);

    /* TX_CRC_VALUE
     *  - crc value calcuated based on the running sum
     *  - We model this using uninterpreted function.
     */
    auto tx_crc_value =
        child_tx.NewBvState("TX_CRC_VALUE", TX_BUFF_DATA_BIT_WID);

    /* TX_CRC_FUNC
     *  - the uninterpreted function for computing CRC value
     *  - input:  64-bit frame sum
     *  - output: 64-bit CRC value
     */
    auto tx_crc_func =
        ilang::FuncRef("TX_CRC_FUNC", ilang::SortRef::BV(TX_BUFF_DATA_BIT_WID),
                       ilang::SortRef::BV(TX_BUFF_DATA_BIT_WID));

    /* ----------------------- Fetch States --------------------------------- */
    auto child_tx_fetch = Concat(fetch, tx_pkt_rd_cnt);
    child_tx.SetFetch(child_tx_fetch);

    /* ----------------------- Valid States --------------------------------- */
    auto child_tx_valid = !valid & (tx_pkt_rd_cnt != 0x0);
    child_tx.SetValid(child_tx_valid);

    /* ----------------------- Instructions --------------------------------- */

    // example: (x: some value; -: don't care)
    //
    // in_data_val  8 x x x x x x x x -
    // FIFO buffer  - 8 x x x x x x x x
    //
    // pkt_rd_cnt   0 0 0 0 0 0 0 0 0 8 8 8 8 8 8 8 8 8 0
    // buff_rd_ptr  0 0 0 0 0 0 0 0 0 0 1 2 3 4 5 6 7 8 0
    // tx_frame_sum - - - - - - - - - - x x x x x x x x -
    // tx_crc_value - - - - - - - - - - - - - - - - - - x
    // CRC_INIT                       |
    // CRC_SUM                          | | | | | | |
    // CRC_COMPUTE                                    |

    auto k_zero_addr = ilang::BvConst(0x0, TX_BUFF_ADDR_BIT_WID);

    { // CRC_INIT
      auto instr_init = child_tx.NewInstr("CRC_INIT");

      // decode
      auto decode = child_tx_valid & (tx_buff_rd_ptr == k_zero_addr);
      instr_init.SetDecode(decode);

      //
      // state update functions
      //

      // tx_buff_rd_ptr
      auto tx_buff_rd_ptr_nxt = tx_buff_rd_ptr + 0x1;
      instr_init.SetUpdate(tx_buff_rd_ptr, tx_buff_rd_ptr_nxt);

      // tx_frame_sum
      // initialize the running sum to the first data in the buffer (not size)
      auto tx_frame_sum_nxt = Load(tx_fifo_buff, tx_buff_rd_ptr + 0x1);
      instr_init.SetUpdate(tx_frame_sum, tx_frame_sum_nxt);
    }

    { // CRC_SUM
      auto instr_sum = child_tx.NewInstr("CRC_SUM");

      // decode
      auto decode = child_tx_valid & (tx_buff_rd_ptr != k_zero_addr) &
                    (tx_buff_rd_ptr != tx_pkt_rd_cnt);
      instr_sum.SetDecode(decode);

      //
      // state update functions
      //

      // tx_buff_rd_ptr
      auto tx_buff_rd_ptr_nxt = tx_buff_rd_ptr + 0x1;
      instr_sum.SetUpdate(tx_buff_rd_ptr, tx_buff_rd_ptr_nxt);

      // tx_frame_sum
      // add up the running sum with the previous sum
      auto tx_frame_sum_nxt =
          tx_frame_sum + Load(tx_fifo_buff, tx_buff_rd_ptr + 0x1);
      instr_sum.SetUpdate(tx_frame_sum, tx_frame_sum_nxt);
    }

    { // CRC_COMPUTE
      auto instr_compute = child_tx.NewInstr("CRC_COMPUTE");

      // decode
      auto decode = child_tx_valid & (tx_buff_rd_ptr != k_zero_addr) &
                    (tx_buff_rd_ptr == tx_pkt_rd_cnt);
      instr_compute.SetDecode(decode);

      //
      // state update functions
      //

      // tx_fifo_full
      auto tx_fifo_full_nxt = (tx_pkt_rd_cnt != 0x0);
      instr_compute.SetUpdate(tx_fifo_full, tx_fifo_full_nxt);

      // tx_pkt_rd_cnt
      auto tx_pkt_rd_cnt_nxt = k_zero_addr;
      instr_compute.SetUpdate(tx_pkt_rd_cnt, tx_pkt_rd_cnt_nxt);

      // tx_buff_rd_ptr
      auto tx_buff_rd_ptr_nxt = k_zero_addr;
      instr_compute.SetUpdate(tx_buff_rd_ptr, tx_buff_rd_ptr_nxt);

      // tx_crc_value
      auto tx_crc_value_nxt = tx_crc_func(tx_frame_sum);
      instr_compute.SetUpdate(tx_crc_value, tx_crc_value_nxt);
    }
  }

  return m;
}

void ExportLmacCore2ToFile(const std::string& model_name,
                           const std::string& file_name) {
  auto ila = GetLMacCore2Ila(model_name);

  // TODO export

  return;
}

