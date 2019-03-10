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
   *  - XXX does this mean that it cannot/shouldn't be checked against RTL?
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
  auto tx_fifo_buff = m.NewMemState("TX_FIFO_BUFF", TX_FIFO_BUFF_ADDR_BIT_WID,
                                    TX_FIFO_BUFF_DATA_BIT_WID);

  /* TX_FIFO_BUFF_RD_PTR
   *  - the FIFO buffer read pointer
   *  - In the abstract model -- at most one packet -- the read pointer is
   *    always 0.
   */
  auto tx_fifo_buff_rd_ptr =
      m.NewBvState("TX_FIFO_BUFF_RD_PTR", TX_FIFO_BUFF_ADDR_BIT_WID);

  /* TX_FIFO_BUFF_WR_PTR
   *  - the FIFO buffer write pointer
   *  - In the abstract model -- at most one packet -- the write pointer is
   *    consistent with the byte count (constant sum).
   */
  auto tx_fifo_buff_wr_ptr =
      m.NewBvState("TX_FIFO_BUFF_WR_PTR", TX_FIFO_BUFF_ADDR_BIT_WID);

  /* TX_PKT_BYTE_COUNT
   *  - the number of processed bytes in the current packet
   *  - This counter is modeled as a decrementing counter (from packet size).
   *  - Ths byte count is used for triggering child-instructions, i.e.,
   *    decrementing to 0 indicates the start for adding paddings and forming
   *    Ethernet frames.
   */
  auto tx_pkt_byte_count =
      m.NewBvState("TX_PKT_BYTE_COUNT", USER_INTERFACE_BIT_WID);

  /* TX_PKT_READY
   *  - indicate that the packet is ready to be sent
   *  - This signal is set when the last qword is received.
   */
  auto tx_pkt_ready = m.NewBoolState("TX_PKT_READY");

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

#if 1 // simplified FIFO
    auto is_new_pkt = (tx_pkt_byte_count == 0);
    auto is_last_qword_of_pkt = (tx_pkt_byte_count == QWORD_BYTE_NUM);
    // XXX replace to be used by child-instructions
    // auto is_last_qword_of_pkt =
    // ((tx_fifo_buff_wr_ptr * QWORD_BYTE_NUM) == tx_pkt_byte_count);
    auto data_in = tx_data & tx_be;

    // tx_fifo_wused_qwd
    auto tx_fifo_wused_qwd_nxt =
        tx_fifo_wused_qwd + (USER_INTERFACE_BIT_WID / QWORD_BIT_WID);
    instr.SetUpdate(tx_fifo_wused_qwd, tx_fifo_wused_qwd_nxt);

    // tx_fifo_full
    auto tx_fifo_full_nxt = is_last_qword_of_pkt;
    instr.SetUpdate(tx_fifo_full, tx_fifo_full_nxt);

    // tx_fifo_buff_rd_ptr
    auto tx_fifo_buff_rd_ptr_nxt =
        ilang::BvConst(0x0, TX_FIFO_BUFF_ADDR_BIT_WID);
    instr.SetUpdate(tx_fifo_buff_rd_ptr, tx_fifo_buff_rd_ptr_nxt);

    // tx_fifo_buff_wr_ptr
    auto tx_fifo_buff_wr_ptr_nxt = Ite(
        is_last_qword_of_pkt, ilang::BvConst(0x0, TX_FIFO_BUFF_ADDR_BIT_WID),
        tx_fifo_buff_wr_ptr + 1);
    instr.SetUpdate(tx_fifo_buff_wr_ptr, tx_fifo_buff_wr_ptr_nxt);

    // tx_fifo_buff
    auto tx_fifo_buff_nxt = Store(tx_fifo_buff, tx_fifo_buff_wr_ptr, data_in);
    instr.SetUpdate(tx_fifo_buff, tx_fifo_buff_nxt);

    // tx_pkt_byte_count
    auto tx_pkt_byte_count_nxt =
        Ite(is_new_pkt, data_in, tx_pkt_byte_count - QWORD_BYTE_NUM);
    instr.SetUpdate(tx_pkt_byte_count, tx_pkt_byte_count_nxt);

    // tx_pkt_ready
    auto tx_pkt_ready_nxt = is_last_qword_of_pkt;
    instr.SetUpdate(tx_pkt_ready, tx_pkt_ready_nxt);
#endif

#if 0 // cyclic FIFO
    auto tx_fifo_full_nxt = (tx_fifo_wused_qwd_nxt >= TX_FIFO_BUFF_QWORD_NUM);
#endif
  }

  return m;
}

void ExportLmacCore2ToFile(const std::string& model_name,
                           const std::string& file_name) {
  auto ila = GetLMacCore2Ila(model_name);

  // TODO export

  return;
}

