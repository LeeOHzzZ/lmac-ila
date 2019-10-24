/* PREHEADER */

`define true  1'b1

`define false 1'b0

/* END OF PREHEADER */
module wrapper(
__ILA_I_MODE_10G,
__ILA_I_MODE_1G,
__ILA_I_MODE_2P5G,
__ILA_I_MODE_5G,
__ILA_I_RESETN,
__ILA_I_TX_DATA,
__ILA_I_TX_WE,
__VLG_I_SYS_ADDR,
__VLG_I_TCORE_MODE,
__VLG_I_cs_fifo_rd_en,
__VLG_I_fail_over,
__VLG_I_fmac_ctrl,
__VLG_I_fmac_ctrl1,
__VLG_I_fmac_rxd_en,
__VLG_I_host_addr_reg,
__VLG_I_mac_addr0,
__VLG_I_mac_pause_value,
__VLG_I_reg_rd_start,
__VLG_I_rx_mac_rd,
__VLG_I_rx_mac_rd_cycle,
__VLG_I_tx_mac_data,
__VLG_I_tx_mac_wr,
__VLG_I_xgmii_led_,
__VLG_I_xgmii_reset_,
__VLG_I_xgmii_rxc,
__VLG_I_xgmii_rxd,
__b2b_counter_LastOne_end_init__,
__b2b_counter_RdByteCnt_end_init__,
__b2b_counter_WrPktPayload_end_init__,
__tx_pkt_byte_cnt_RdByteCnt_end_init__,
__tx_st_encap_RdByteCnt_end_init__,
__tx_st_encap_WrPktPayload_end_init__,
__tx_state_LastOne_end_init__,
__tx_state_RdByteCnt_end_init__,
__tx_state_WrPktPayload_end_init__,
__tx_wcnt_RdByteCnt_end_init__,
__tx_wcnt_WrPktPaylaod_end_init__,
clk,
dummy_reset,
rst,
__ILA_SO_CRC,
__ILA_SO_CRC_DAT_IN,
__ILA_SO_CRC_IN,
__ILA_SO_TXFIFO_BUFF_RD_PTR,
__ILA_SO_TXFIFO_BUFF_WR_PTR,
__ILA_SO_TXFIFO_FULL,
__ILA_SO_TXFIFO_RD_OUTPUT,
__ILA_SO_TXFIFO_WUSED_QWD,
__ILA_SO_TX_B2B_CNTR,
__ILA_SO_TX_BUF,
__ILA_SO_TX_BYTE_SENT,
__ILA_SO_TX_PACKET_BYTE_CNT,
__ILA_SO_TX_PKT_SENT,
__ILA_SO_TX_STATE,
__ILA_SO_TX_STATE_ENCAP,
__ILA_SO_TX_WCNT,
__ILA_SO_TX_WCNT_INI,
__ILA_SO_XGMII_COUT_REG,
__ILA_SO_XGMII_DOUT_REG,
__VLG_O_FIFO_OV_IPEND,
__VLG_O_FMAC_REGDOUT,
__VLG_O_cs_fifo_empty,
__VLG_O_ipcs_fifo_dout,
__VLG_O_reg_rd_done_out,
__VLG_O_rx_mac_ctrl,
__VLG_O_rx_mac_data,
__VLG_O_rx_mac_empty,
__VLG_O_xauiA_linkup,
__VLG_O_xgmii_txc,
__VLG_O_xgmii_txd,
__m0__,
__m10__,
__m11__,
__m12__,
__m13__,
__m14__,
__m15__,
__m16__,
__m17__,
__m18__,
__m19__,
__m1__,
__m20__,
__m21__,
__m22__,
__m23__,
__m24__,
__m25__,
__m26__,
__m27__,
__m28__,
__m29__,
__m2__,
__m30__,
__m3__,
__m4__,
__m5__,
__m6__,
__m7__,
__m8__,
__m9__,
tx_mac_full,
tx_mac_usedw,
__CYCLE_CNT__,
__START__,
__STARTED__,
__ENDED__,
__2ndENDED__,
__RESETED__,
b2b_counter_LastOne_end,
b2b_counter_RdByteCnt_end,
b2b_counter_WrPktPayload_end,
tx_pkt_byte_cnt_RdByteCnt_end,
tx_st_encap_RdByteCnt_end,
tx_st_encap_WrPktPayload_end,
tx_state_LastOne_end,
tx_state_RdByteCnt_end,
tx_state_WrPktPayload_end,
tx_wcnt_RdByteCnt_end,
tx_wcnt_WrPktPaylaod_end
);
input            __ILA_I_MODE_10G;
input            __ILA_I_MODE_1G;
input            __ILA_I_MODE_2P5G;
input            __ILA_I_MODE_5G;
input            __ILA_I_RESETN;
input     [63:0] __ILA_I_TX_DATA;
input            __ILA_I_TX_WE;
input      [3:0] __VLG_I_SYS_ADDR;
input            __VLG_I_TCORE_MODE;
input            __VLG_I_cs_fifo_rd_en;
input            __VLG_I_fail_over;
input     [31:0] __VLG_I_fmac_ctrl;
input     [31:0] __VLG_I_fmac_ctrl1;
input            __VLG_I_fmac_rxd_en;
input     [15:0] __VLG_I_host_addr_reg;
input     [47:0] __VLG_I_mac_addr0;
input     [31:0] __VLG_I_mac_pause_value;
input            __VLG_I_reg_rd_start;
input            __VLG_I_rx_mac_rd;
input            __VLG_I_rx_mac_rd_cycle;
input     [63:0] __VLG_I_tx_mac_data;
input            __VLG_I_tx_mac_wr;
input      [1:0] __VLG_I_xgmii_led_;
input            __VLG_I_xgmii_reset_;
input      [7:0] __VLG_I_xgmii_rxc;
input     [63:0] __VLG_I_xgmii_rxd;
input      [5:0] __b2b_counter_LastOne_end_init__;
input      [5:0] __b2b_counter_RdByteCnt_end_init__;
input      [5:0] __b2b_counter_WrPktPayload_end_init__;
input     [15:0] __tx_pkt_byte_cnt_RdByteCnt_end_init__;
input      [7:0] __tx_st_encap_RdByteCnt_end_init__;
input      [7:0] __tx_st_encap_WrPktPayload_end_init__;
input      [7:0] __tx_state_LastOne_end_init__;
input      [7:0] __tx_state_RdByteCnt_end_init__;
input      [7:0] __tx_state_WrPktPayload_end_init__;
input     [15:0] __tx_wcnt_RdByteCnt_end_init__;
input     [15:0] __tx_wcnt_WrPktPaylaod_end_init__;
input            clk;
input            dummy_reset;
input            rst;
output     [31:0] __ILA_SO_CRC;
output     [63:0] __ILA_SO_CRC_DAT_IN;
output     [31:0] __ILA_SO_CRC_IN;
output      [4:0] __ILA_SO_TXFIFO_BUFF_RD_PTR;
output      [4:0] __ILA_SO_TXFIFO_BUFF_WR_PTR;
output            __ILA_SO_TXFIFO_FULL;
output     [63:0] __ILA_SO_TXFIFO_RD_OUTPUT;
output     [12:0] __ILA_SO_TXFIFO_WUSED_QWD;
output      [5:0] __ILA_SO_TX_B2B_CNTR;
output     [63:0] __ILA_SO_TX_BUF;
output     [31:0] __ILA_SO_TX_BYTE_SENT;
output     [15:0] __ILA_SO_TX_PACKET_BYTE_CNT;
output     [31:0] __ILA_SO_TX_PKT_SENT;
output      [4:0] __ILA_SO_TX_STATE;
output      [7:0] __ILA_SO_TX_STATE_ENCAP;
output     [15:0] __ILA_SO_TX_WCNT;
output     [15:0] __ILA_SO_TX_WCNT_INI;
output      [7:0] __ILA_SO_XGMII_COUT_REG;
output     [63:0] __ILA_SO_XGMII_DOUT_REG;
output            __VLG_O_FIFO_OV_IPEND;
output     [31:0] __VLG_O_FMAC_REGDOUT;
output            __VLG_O_cs_fifo_empty;
output     [63:0] __VLG_O_ipcs_fifo_dout;
output            __VLG_O_reg_rd_done_out;
output      [7:0] __VLG_O_rx_mac_ctrl;
output     [63:0] __VLG_O_rx_mac_data;
output            __VLG_O_rx_mac_empty;
output            __VLG_O_xauiA_linkup;
output      [7:0] __VLG_O_xgmii_txc;
output     [63:0] __VLG_O_xgmii_txd;
output            __m0__;
output            __m10__;
output            __m11__;
output            __m12__;
output            __m13__;
output            __m14__;
output            __m15__;
output            __m16__;
output            __m17__;
output            __m18__;
output            __m19__;
output            __m1__;
output            __m20__;
output            __m21__;
output            __m22__;
output            __m23__;
output            __m24__;
output            __m25__;
output            __m26__;
output            __m27__;
output            __m28__;
output            __m29__;
output            __m2__;
output            __m30__;
output            __m3__;
output            __m4__;
output            __m5__;
output            __m6__;
output            __m7__;
output            __m8__;
output            __m9__;
output            tx_mac_full;
output     [12:0] tx_mac_usedw;
output reg      [3:0] __CYCLE_CNT__;
output reg            __START__;
output reg            __STARTED__;
output reg            __ENDED__;
output reg            __2ndENDED__;
output reg            __RESETED__;
output reg      [5:0] b2b_counter_LastOne_end;
output reg      [5:0] b2b_counter_RdByteCnt_end;
output reg      [5:0] b2b_counter_WrPktPayload_end;
output reg     [15:0] tx_pkt_byte_cnt_RdByteCnt_end;
output reg      [7:0] tx_st_encap_RdByteCnt_end;
output reg      [7:0] tx_st_encap_WrPktPayload_end;
output reg      [7:0] tx_state_LastOne_end;
output reg      [7:0] tx_state_RdByteCnt_end;
output reg      [7:0] tx_state_WrPktPayload_end;
output reg     [15:0] tx_wcnt_RdByteCnt_end;
output reg     [15:0] tx_wcnt_WrPktPaylaod_end;
wire            __2ndIEND__;
(* keep *) wire            __EDCOND__;
(* keep *) wire            __IEND__;
(* keep *) wire            __ILA_I_MODE_10G;
(* keep *) wire            __ILA_I_MODE_1G;
(* keep *) wire            __ILA_I_MODE_2P5G;
(* keep *) wire            __ILA_I_MODE_5G;
(* keep *) wire            __ILA_I_RESETN;
(* keep *) wire     [63:0] __ILA_I_TX_DATA;
(* keep *) wire            __ILA_I_TX_WE;
(* keep *) wire     [31:0] __ILA_SO_CRC;
(* keep *) wire     [63:0] __ILA_SO_CRC_DAT_IN;
(* keep *) wire     [31:0] __ILA_SO_CRC_IN;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_0;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_1;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_10;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_11;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_12;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_13;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_14;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_15;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_16;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_17;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_18;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_19;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_2;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_20;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_21;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_22;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_23;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_24;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_25;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_26;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_27;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_28;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_29;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_3;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_30;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_31;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_4;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_5;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_6;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_7;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_8;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_9;
(* keep *) wire      [4:0] __ILA_SO_TXFIFO_BUFF_RD_PTR;
(* keep *) wire      [4:0] __ILA_SO_TXFIFO_BUFF_WR_PTR;
(* keep *) wire            __ILA_SO_TXFIFO_FULL;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_RD_OUTPUT;
(* keep *) wire     [12:0] __ILA_SO_TXFIFO_WUSED_QWD;
(* keep *) wire      [5:0] __ILA_SO_TX_B2B_CNTR;
(* keep *) wire     [63:0] __ILA_SO_TX_BUF;
(* keep *) wire     [31:0] __ILA_SO_TX_BYTE_SENT;
(* keep *) wire     [15:0] __ILA_SO_TX_PACKET_BYTE_CNT;
(* keep *) wire     [31:0] __ILA_SO_TX_PKT_SENT;
(* keep *) wire      [4:0] __ILA_SO_TX_STATE;
(* keep *) wire      [7:0] __ILA_SO_TX_STATE_ENCAP;
(* keep *) wire     [15:0] __ILA_SO_TX_WCNT;
(* keep *) wire     [15:0] __ILA_SO_TX_WCNT_INI;
(* keep *) wire      [7:0] __ILA_SO_XGMII_COUT_REG;
(* keep *) wire     [63:0] __ILA_SO_XGMII_DOUT_REG;
(* keep *) wire            __ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__;
(* keep *) wire            __ILA_TX_FUNC_valid__;
(* keep *) wire            __ISSUE__;
(* keep *) wire      [3:0] __VLG_I_SYS_ADDR;
(* keep *) wire            __VLG_I_TCORE_MODE;
(* keep *) wire            __VLG_I_cs_fifo_rd_en;
(* keep *) wire            __VLG_I_fail_over;
(* keep *) wire     [31:0] __VLG_I_fmac_ctrl;
(* keep *) wire     [31:0] __VLG_I_fmac_ctrl1;
(* keep *) wire            __VLG_I_fmac_rxd_en;
(* keep *) wire     [15:0] __VLG_I_host_addr_reg;
(* keep *) wire     [47:0] __VLG_I_mac_addr0;
(* keep *) wire     [31:0] __VLG_I_mac_pause_value;
(* keep *) wire            __VLG_I_reg_rd_start;
(* keep *) wire            __VLG_I_rx_mac_rd;
(* keep *) wire            __VLG_I_rx_mac_rd_cycle;
(* keep *) wire     [63:0] __VLG_I_tx_mac_data;
(* keep *) wire            __VLG_I_tx_mac_wr;
(* keep *) wire      [1:0] __VLG_I_xgmii_led_;
(* keep *) wire            __VLG_I_xgmii_reset_;
(* keep *) wire      [7:0] __VLG_I_xgmii_rxc;
(* keep *) wire     [63:0] __VLG_I_xgmii_rxd;
(* keep *) wire            __VLG_O_FIFO_OV_IPEND;
(* keep *) wire     [31:0] __VLG_O_FMAC_REGDOUT;
(* keep *) wire            __VLG_O_cs_fifo_empty;
(* keep *) wire     [63:0] __VLG_O_ipcs_fifo_dout;
(* keep *) wire            __VLG_O_reg_rd_done_out;
(* keep *) wire      [7:0] __VLG_O_rx_mac_ctrl;
(* keep *) wire     [63:0] __VLG_O_rx_mac_data;
(* keep *) wire            __VLG_O_rx_mac_empty;
(* keep *) wire            __VLG_O_xauiA_linkup;
(* keep *) wire      [7:0] __VLG_O_xgmii_txc;
(* keep *) wire     [63:0] __VLG_O_xgmii_txd;
wire      [5:0] __b2b_counter_LastOne_end_init__;
wire      [5:0] __b2b_counter_RdByteCnt_end_init__;
wire      [5:0] __b2b_counter_WrPktPayload_end_init__;
(* keep *) wire            __m0__;
(* keep *) wire            __m10__;
(* keep *) wire            __m11__;
(* keep *) wire            __m12__;
(* keep *) wire            __m13__;
(* keep *) wire            __m14__;
(* keep *) wire            __m15__;
(* keep *) wire            __m16__;
(* keep *) wire            __m17__;
(* keep *) wire            __m18__;
(* keep *) wire            __m19__;
(* keep *) wire            __m1__;
(* keep *) wire            __m20__;
(* keep *) wire            __m21__;
(* keep *) wire            __m22__;
(* keep *) wire            __m23__;
(* keep *) wire            __m24__;
(* keep *) wire            __m25__;
(* keep *) wire            __m26__;
(* keep *) wire            __m27__;
(* keep *) wire            __m28__;
(* keep *) wire            __m29__;
(* keep *) wire            __m2__;
(* keep *) wire            __m30__;
(* keep *) wire            __m3__;
(* keep *) wire            __m4__;
(* keep *) wire            __m5__;
(* keep *) wire            __m6__;
(* keep *) wire            __m7__;
(* keep *) wire            __m8__;
(* keep *) wire            __m9__;
wire     [15:0] __tx_pkt_byte_cnt_RdByteCnt_end_init__;
wire      [7:0] __tx_st_encap_RdByteCnt_end_init__;
wire      [7:0] __tx_st_encap_WrPktPayload_end_init__;
wire      [7:0] __tx_state_LastOne_end_init__;
wire      [7:0] __tx_state_RdByteCnt_end_init__;
wire      [7:0] __tx_state_WrPktPayload_end_init__;
wire     [15:0] __tx_wcnt_RdByteCnt_end_init__;
wire     [15:0] __tx_wcnt_WrPktPaylaod_end_init__;
wire            clk;
(* keep *) wire            dummy_reset;
wire            rst;
(* keep *) wire            tx_mac_full;
(* keep *) wire     [12:0] tx_mac_usedw;
always @(posedge clk) begin
if (rst) __CYCLE_CNT__ <= 0;
else if ( ( __START__ || __STARTED__ ) &&  __CYCLE_CNT__ < 7) __CYCLE_CNT__ <= __CYCLE_CNT__ + 1;
end
always @(posedge clk) begin
if (rst) __START__ <= 0;
else if (__START__ || __STARTED__) __START__ <= 0;
else if (__ISSUE__) __START__ <= 1;
end
always @(posedge clk) begin
if (rst) __STARTED__ <= 0;
else if (__START__) __STARTED__ <= 1;
end
always @(posedge clk) begin
if (rst) __ENDED__ <= 0;
else if (__IEND__) __ENDED__ <= 1;
end
always @(posedge clk) begin
if (rst) __2ndENDED__ <= 1'b0;
else if (__ENDED__ && __EDCOND__ && ~__2ndENDED__)  __2ndENDED__ <= 1'b1; end
assign __2ndIEND__ = __ENDED__ && __EDCOND__ && ~__2ndENDED__ ;
always @(posedge clk) begin
if (rst) __RESETED__ <= 1;
end
assign __m0__ = m1.core.tx_10G_wrap.tx_xgmii.tx_mac10g_crc32x64.crc32 == __ILA_SO_CRC ;
assign __m1__ = m1.core.tx_10G_wrap.tx_xgmii.tx_mac10g_crc32x64.bdin == __ILA_SO_CRC_DAT_IN ;
assign __m2__ = m1.core.tx_10G_wrap.tx_xgmii.ILA_crc_in == __ILA_SO_CRC_IN ;
assign __m3__ = ( __ILA_SO_TXFIFO_BUFF_0 == m1.core.txfifo.tx_f.mem[0])&&( __ILA_SO_TXFIFO_BUFF_1 == m1.core.txfifo.tx_f.mem[1])&&( __ILA_SO_TXFIFO_BUFF_2 == m1.core.txfifo.tx_f.mem[2])&&( __ILA_SO_TXFIFO_BUFF_3 == m1.core.txfifo.tx_f.mem[3])&&( __ILA_SO_TXFIFO_BUFF_4 == m1.core.txfifo.tx_f.mem[4])&&( __ILA_SO_TXFIFO_BUFF_5 == m1.core.txfifo.tx_f.mem[5])&&( __ILA_SO_TXFIFO_BUFF_6 == m1.core.txfifo.tx_f.mem[6])&&( __ILA_SO_TXFIFO_BUFF_7 == m1.core.txfifo.tx_f.mem[7])&&( __ILA_SO_TXFIFO_BUFF_8 == m1.core.txfifo.tx_f.mem[8])&&( __ILA_SO_TXFIFO_BUFF_9 == m1.core.txfifo.tx_f.mem[9])&&( __ILA_SO_TXFIFO_BUFF_10 == m1.core.txfifo.tx_f.mem[10])&&( __ILA_SO_TXFIFO_BUFF_11 == m1.core.txfifo.tx_f.mem[11])&&( __ILA_SO_TXFIFO_BUFF_12 == m1.core.txfifo.tx_f.mem[12])&&( __ILA_SO_TXFIFO_BUFF_13 == m1.core.txfifo.tx_f.mem[13])&&( __ILA_SO_TXFIFO_BUFF_14 == m1.core.txfifo.tx_f.mem[14])&&( __ILA_SO_TXFIFO_BUFF_15 == m1.core.txfifo.tx_f.mem[15]) ;
assign __m4__ = m1.tx_mac_full == __ILA_SO_TXFIFO_FULL ;
assign __m5__ = m1.core.txfifo.tx_f.dataout == __ILA_SO_TXFIFO_RD_OUTPUT ;
assign __m6__ = m1.tx_mac_usedw == __ILA_SO_TXFIFO_WUSED_QWD ;
assign __m7__ = m1.core.tx_10G_wrap.tx_encap.b2b_counter == __ILA_SO_TX_B2B_CNTR ;
assign __m8__ = m1.core.tx_10G_wrap.tx_xgmii.bdata1 == __ILA_SO_TX_BUF ;
assign __m9__ = m1.core.tx_10G_wrap.tx_xgmii.accumulated_bcnt == __ILA_SO_TX_BYTE_SENT ;
assign __m10__ = m1.core.tx_10G_wrap.tx_xgmii.rbytes_reg == __ILA_SO_TX_PACKET_BYTE_CNT ;
assign __m11__ = m1.core.tx_10G_wrap.tx_xgmii.pkt_transmitted == __ILA_SO_TX_PKT_SENT ;
assign __m12__ = m1.core.tx_10G_wrap.tx_xgmii.state == __ILA_SO_TX_STATE ;
assign __m13__ = m1.core.tx_10G_wrap.tx_encap.state == __ILA_SO_TX_STATE_ENCAP ;
assign __m14__ = m1.core.tx_10G_wrap.tx_xgmii.wcnt == __ILA_SO_TX_WCNT ;
assign __m15__ = m1.core.tx_10G_wrap.tx_xgmii.ila_wcnt_ini == __ILA_SO_TX_WCNT_INI ;
assign __m16__ = m1.core.tx_10G_wrap.tx_xgmii.txc == __ILA_SO_XGMII_COUT_REG ;
assign __m17__ = m1.core.tx_10G_wrap.tx_xgmii.txd == __ILA_SO_XGMII_DOUT_REG ;
assign __m18__ = m1.core.tx_10G_wrap.tx_xgmii.tx_mac10g_crc32x64.crc32 == __ILA_SO_CRC ;
assign __m19__ = m1.core.tx_10G_wrap.tx_xgmii.tx_mac10g_crc32x64.bdin == __ILA_SO_CRC_DAT_IN ;
assign __m20__ = m1.core.tx_10G_wrap.tx_xgmii.ILA_crc_in == __ILA_SO_CRC_IN ;
assign __m21__ = ( __ILA_SO_TXFIFO_BUFF_0 == m1.core.txfifo.tx_f.mem[0])&&( __ILA_SO_TXFIFO_BUFF_1 == m1.core.txfifo.tx_f.mem[1])&&( __ILA_SO_TXFIFO_BUFF_2 == m1.core.txfifo.tx_f.mem[2])&&( __ILA_SO_TXFIFO_BUFF_3 == m1.core.txfifo.tx_f.mem[3])&&( __ILA_SO_TXFIFO_BUFF_4 == m1.core.txfifo.tx_f.mem[4])&&( __ILA_SO_TXFIFO_BUFF_5 == m1.core.txfifo.tx_f.mem[5])&&( __ILA_SO_TXFIFO_BUFF_6 == m1.core.txfifo.tx_f.mem[6])&&( __ILA_SO_TXFIFO_BUFF_7 == m1.core.txfifo.tx_f.mem[7])&&( __ILA_SO_TXFIFO_BUFF_8 == m1.core.txfifo.tx_f.mem[8])&&( __ILA_SO_TXFIFO_BUFF_9 == m1.core.txfifo.tx_f.mem[9])&&( __ILA_SO_TXFIFO_BUFF_10 == m1.core.txfifo.tx_f.mem[10])&&( __ILA_SO_TXFIFO_BUFF_11 == m1.core.txfifo.tx_f.mem[11])&&( __ILA_SO_TXFIFO_BUFF_12 == m1.core.txfifo.tx_f.mem[12])&&( __ILA_SO_TXFIFO_BUFF_13 == m1.core.txfifo.tx_f.mem[13])&&( __ILA_SO_TXFIFO_BUFF_14 == m1.core.txfifo.tx_f.mem[14])&&( __ILA_SO_TXFIFO_BUFF_15 == m1.core.txfifo.tx_f.mem[15]) ;
assign __m22__ = m1.core.txfifo.tx_f.dataout == __ILA_SO_TXFIFO_RD_OUTPUT ;
assign __m23__ = m1.tx_mac_usedw == __ILA_SO_TXFIFO_WUSED_QWD ;
assign __m24__ = m1.core.tx_10G_wrap.tx_encap.b2b_counter == __ILA_SO_TX_B2B_CNTR ;
assign __m25__ = m1.core.tx_10G_wrap.tx_xgmii.bdata1 == __ILA_SO_TX_BUF ;
assign __m26__ = m1.core.tx_10G_wrap.tx_xgmii.state == __ILA_SO_TX_STATE ;
assign __m27__ = m1.core.tx_10G_wrap.tx_encap.state == __ILA_SO_TX_STATE_ENCAP ;
assign __m28__ = m1.core.tx_10G_wrap.tx_xgmii.wcnt == __ILA_SO_TX_WCNT ;
assign __m29__ = m1.core.tx_10G_wrap.tx_xgmii.txc == __ILA_SO_XGMII_COUT_REG ;
assign __m30__ = m1.core.tx_10G_wrap.tx_xgmii.txd == __ILA_SO_XGMII_DOUT_REG ;
assign __EDCOND__ = (`false|| ( __CYCLE_CNT__ == 4'd2)) && __STARTED__  ;
assign __IEND__ = (`false|| ( __CYCLE_CNT__ == 4'd2)) && __STARTED__ && __RESETED__ && (~ __ENDED__) ;
assign __ISSUE__ = 1 ;

TX_FUNC__DOT__WR_PKT_PAYLOAD_10G m0 (
   .MODE_10G(__ILA_I_MODE_10G),
   .MODE_1G(__ILA_I_MODE_1G),
   .MODE_2P5G(__ILA_I_MODE_2P5G),
   .MODE_5G(__ILA_I_MODE_5G),
   .RESETN(__ILA_I_RESETN),
   .TX_DATA(__ILA_I_TX_DATA),
   .TX_WE(__ILA_I_TX_WE),
   .__START__(__START__),
   .clk(clk),
   .rst(rst),
   .__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__(__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__),
   .__ILA_TX_FUNC_valid__(__ILA_TX_FUNC_valid__),
   .TXFIFO_BUFF_0(__ILA_SO_TXFIFO_BUFF_0),
   .TXFIFO_BUFF_1(__ILA_SO_TXFIFO_BUFF_1),
   .TXFIFO_BUFF_2(__ILA_SO_TXFIFO_BUFF_2),
   .TXFIFO_BUFF_3(__ILA_SO_TXFIFO_BUFF_3),
   .TXFIFO_BUFF_4(__ILA_SO_TXFIFO_BUFF_4),
   .TXFIFO_BUFF_5(__ILA_SO_TXFIFO_BUFF_5),
   .TXFIFO_BUFF_6(__ILA_SO_TXFIFO_BUFF_6),
   .TXFIFO_BUFF_7(__ILA_SO_TXFIFO_BUFF_7),
   .TXFIFO_BUFF_8(__ILA_SO_TXFIFO_BUFF_8),
   .TXFIFO_BUFF_9(__ILA_SO_TXFIFO_BUFF_9),
   .TXFIFO_BUFF_10(__ILA_SO_TXFIFO_BUFF_10),
   .TXFIFO_BUFF_11(__ILA_SO_TXFIFO_BUFF_11),
   .TXFIFO_BUFF_12(__ILA_SO_TXFIFO_BUFF_12),
   .TXFIFO_BUFF_13(__ILA_SO_TXFIFO_BUFF_13),
   .TXFIFO_BUFF_14(__ILA_SO_TXFIFO_BUFF_14),
   .TXFIFO_BUFF_15(__ILA_SO_TXFIFO_BUFF_15),
   .TXFIFO_BUFF_16(__ILA_SO_TXFIFO_BUFF_16),
   .TXFIFO_BUFF_17(__ILA_SO_TXFIFO_BUFF_17),
   .TXFIFO_BUFF_18(__ILA_SO_TXFIFO_BUFF_18),
   .TXFIFO_BUFF_19(__ILA_SO_TXFIFO_BUFF_19),
   .TXFIFO_BUFF_20(__ILA_SO_TXFIFO_BUFF_20),
   .TXFIFO_BUFF_21(__ILA_SO_TXFIFO_BUFF_21),
   .TXFIFO_BUFF_22(__ILA_SO_TXFIFO_BUFF_22),
   .TXFIFO_BUFF_23(__ILA_SO_TXFIFO_BUFF_23),
   .TXFIFO_BUFF_24(__ILA_SO_TXFIFO_BUFF_24),
   .TXFIFO_BUFF_25(__ILA_SO_TXFIFO_BUFF_25),
   .TXFIFO_BUFF_26(__ILA_SO_TXFIFO_BUFF_26),
   .TXFIFO_BUFF_27(__ILA_SO_TXFIFO_BUFF_27),
   .TXFIFO_BUFF_28(__ILA_SO_TXFIFO_BUFF_28),
   .TXFIFO_BUFF_29(__ILA_SO_TXFIFO_BUFF_29),
   .TXFIFO_BUFF_30(__ILA_SO_TXFIFO_BUFF_30),
   .TXFIFO_BUFF_31(__ILA_SO_TXFIFO_BUFF_31),
   .TXFIFO_FULL(__ILA_SO_TXFIFO_FULL),
   .TXFIFO_WUSED_QWD(__ILA_SO_TXFIFO_WUSED_QWD),
   .TXFIFO_BUFF_RD_PTR(__ILA_SO_TXFIFO_BUFF_RD_PTR),
   .TXFIFO_BUFF_WR_PTR(__ILA_SO_TXFIFO_BUFF_WR_PTR),
   .TXFIFO_RD_OUTPUT(__ILA_SO_TXFIFO_RD_OUTPUT),
   .TX_STATE(__ILA_SO_TX_STATE),
   .TX_STATE_ENCAP(__ILA_SO_TX_STATE_ENCAP),
   .TX_B2B_CNTR(__ILA_SO_TX_B2B_CNTR),
   .TX_PACKET_BYTE_CNT(__ILA_SO_TX_PACKET_BYTE_CNT),
   .TX_WCNT(__ILA_SO_TX_WCNT),
   .XGMII_DOUT_REG(__ILA_SO_XGMII_DOUT_REG),
   .XGMII_COUT_REG(__ILA_SO_XGMII_COUT_REG),
   .TX_PKT_SENT(__ILA_SO_TX_PKT_SENT),
   .TX_BYTE_SENT(__ILA_SO_TX_BYTE_SENT),
   .CRC(__ILA_SO_CRC),
   .CRC_DAT_IN(__ILA_SO_CRC_DAT_IN),
   .CRC_IN(__ILA_SO_CRC_IN),
   .TX_WCNT_INI(__ILA_SO_TX_WCNT_INI),
   .TX_BUF(__ILA_SO_TX_BUF),
   .__COUNTER_start__n4()
);
LMAC_CORE_TOP m1(
    .FIFO_OV_IPEND(__VLG_O_FIFO_OV_IPEND),
    .FMAC_REGDOUT(__VLG_O_FMAC_REGDOUT),
    .SYS_ADDR(__VLG_I_SYS_ADDR),
    .TCORE_MODE(__VLG_I_TCORE_MODE),
    .clk(clk),
    .cs_fifo_empty(__VLG_O_cs_fifo_empty),
    .cs_fifo_rd_en(__VLG_I_cs_fifo_rd_en),
    .fail_over(__VLG_I_fail_over),
    .fmac_ctrl(__VLG_I_fmac_ctrl),
    .fmac_ctrl1(__VLG_I_fmac_ctrl1),
    .fmac_rxd_en(__VLG_I_fmac_rxd_en),
    .host_addr_reg(__VLG_I_host_addr_reg),
    .ipcs_fifo_dout(__VLG_O_ipcs_fifo_dout),
    .mac_addr0(__VLG_I_mac_addr0),
    .mac_pause_value(__VLG_I_mac_pause_value),
    .mode_10G(__ILA_I_MODE_10G),
    .mode_1G(__ILA_I_MODE_1G),
    .mode_2p5G(__ILA_I_MODE_2P5G),
    .mode_5G(__ILA_I_MODE_5G),
    .reg_rd_done_out(__VLG_O_reg_rd_done_out),
    .reg_rd_start(__VLG_I_reg_rd_start),
    .reset_(__ILA_I_RESETN),
    .rx_mac_ctrl(__VLG_O_rx_mac_ctrl),
    .rx_mac_data(__VLG_O_rx_mac_data),
    .rx_mac_empty(__VLG_O_rx_mac_empty),
    .rx_mac_full_dbg(),
    .rx_mac_rd(__VLG_I_rx_mac_rd),
    .rx_mac_rd_cycle(__VLG_I_rx_mac_rd_cycle),
    .rx_mac_usedw_dbg(),
    .tx_mac_data(__VLG_I_tx_mac_data),
    .tx_mac_full(tx_mac_full),
    .tx_mac_usedw(tx_mac_usedw),
    .tx_mac_wr(__VLG_I_tx_mac_wr),
    .xA_clk(clk),
    .xauiA_linkup(__VLG_O_xauiA_linkup),
    .xgmii_led_(__VLG_I_xgmii_led_),
    .xgmii_reset_(__VLG_I_xgmii_reset_),
    .xgmii_rxc(__VLG_I_xgmii_rxc),
    .xgmii_rxd(__VLG_I_xgmii_rxd),
    .xgmii_txc(__VLG_O_xgmii_txc),
    .xgmii_txd(__VLG_O_xgmii_txd)
);
always @(posedge clk) begin
   if(rst) begin
       b2b_counter_LastOne_end <= __b2b_counter_LastOne_end_init__;
       b2b_counter_RdByteCnt_end <= __b2b_counter_RdByteCnt_end_init__;
       b2b_counter_WrPktPayload_end <= __b2b_counter_WrPktPayload_end_init__;
       tx_pkt_byte_cnt_RdByteCnt_end <= __tx_pkt_byte_cnt_RdByteCnt_end_init__;
       tx_st_encap_RdByteCnt_end <= __tx_st_encap_RdByteCnt_end_init__;
       tx_st_encap_WrPktPayload_end <= __tx_st_encap_WrPktPayload_end_init__;
       tx_state_LastOne_end <= __tx_state_LastOne_end_init__;
       tx_state_RdByteCnt_end <= __tx_state_RdByteCnt_end_init__;
       tx_state_WrPktPayload_end <= __tx_state_WrPktPayload_end_init__;
       tx_wcnt_RdByteCnt_end <= __tx_wcnt_RdByteCnt_end_init__;
       tx_wcnt_WrPktPaylaod_end <= __tx_wcnt_WrPktPaylaod_end_init__;
   end
   else if(1) begin
       b2b_counter_LastOne_end <= b2b_counter_LastOne_end;
       b2b_counter_RdByteCnt_end <= b2b_counter_RdByteCnt_end;
       b2b_counter_WrPktPayload_end <= b2b_counter_WrPktPayload_end;
       tx_pkt_byte_cnt_RdByteCnt_end <= tx_pkt_byte_cnt_RdByteCnt_end;
       tx_st_encap_RdByteCnt_end <= tx_st_encap_RdByteCnt_end;
       tx_st_encap_WrPktPayload_end <= tx_st_encap_WrPktPayload_end;
       tx_state_LastOne_end <= tx_state_LastOne_end;
       tx_state_RdByteCnt_end <= tx_state_RdByteCnt_end;
       tx_state_WrPktPayload_end <= tx_state_WrPktPayload_end;
       tx_wcnt_RdByteCnt_end <= tx_wcnt_RdByteCnt_end;
       tx_wcnt_WrPktPaylaod_end <= tx_wcnt_WrPktPaylaod_end;
   end
end
endmodule
