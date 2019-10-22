module TX_FUNC__DOT__SET_B2B_CNTR_10G(
MODE_10G,
MODE_1G,
MODE_2P5G,
MODE_5G,
RESETN,
TX_DATA,
TX_WE,
__START__,
clk,
rst,
__ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__,
__ILA_TX_FUNC_valid__,
TXFIFO_FULL,
TXFIFO_WUSED_QWD,
TXFIFO_BUFF_RD_PTR,
TXFIFO_BUFF_WR_PTR,
TXFIFO_RD_OUTPUT,
TX_STATE,
TX_STATE_ENCAP,
TX_B2B_CNTR,
TX_PACKET_BYTE_CNT,
TX_WCNT,
XGMII_DOUT_REG,
XGMII_COUT_REG,
TX_PKT_SENT,
TX_BYTE_SENT,
CRC,
CRC_DAT_IN,
CRC_IN,
TX_WCNT_INI,
TX_BUF,
__COUNTER_start__n8
);
input            MODE_10G;
input            MODE_1G;
input            MODE_2P5G;
input            MODE_5G;
input            RESETN;
input     [63:0] TX_DATA;
input            TX_WE;
input            __START__;
input            clk;
input            rst;
output            __ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__;
output            __ILA_TX_FUNC_valid__;
output reg            TXFIFO_FULL;
output reg     [12:0] TXFIFO_WUSED_QWD;
output reg     [15:0] TXFIFO_BUFF_RD_PTR;
output reg     [15:0] TXFIFO_BUFF_WR_PTR;
output reg     [63:0] TXFIFO_RD_OUTPUT;
output reg      [4:0] TX_STATE;
output reg      [7:0] TX_STATE_ENCAP;
output reg      [5:0] TX_B2B_CNTR;
output reg     [15:0] TX_PACKET_BYTE_CNT;
output reg     [15:0] TX_WCNT;
output reg     [63:0] XGMII_DOUT_REG;
output reg      [7:0] XGMII_COUT_REG;
output reg     [31:0] TX_PKT_SENT;
output reg     [31:0] TX_BYTE_SENT;
output reg     [31:0] CRC;
output reg     [63:0] CRC_DAT_IN;
output reg     [31:0] CRC_IN;
output reg     [15:0] TX_WCNT_INI;
output reg     [63:0] TX_BUF;
output reg      [7:0] __COUNTER_start__n8;
(* keep *) wire     [63:0] CRC_DAT_IN_randinit;
(* keep *) wire     [31:0] CRC_IN_randinit;
(* keep *) wire     [31:0] CRC_randinit;
wire            MODE_10G;
wire            MODE_1G;
wire            MODE_2P5G;
wire            MODE_5G;
wire            RESETN;
(* keep *) wire     [15:0] TXFIFO_BUFF_RD_PTR_randinit;
(* keep *) wire     [15:0] TXFIFO_BUFF_WR_PTR_randinit;
(* keep *) wire            TXFIFO_FULL_randinit;
(* keep *) wire     [63:0] TXFIFO_RD_OUTPUT_randinit;
(* keep *) wire     [12:0] TXFIFO_WUSED_QWD_randinit;
(* keep *) wire      [5:0] TX_B2B_CNTR_randinit;
(* keep *) wire     [63:0] TX_BUF_randinit;
(* keep *) wire     [31:0] TX_BYTE_SENT_randinit;
wire     [63:0] TX_DATA;
(* keep *) wire     [15:0] TX_PACKET_BYTE_CNT_randinit;
(* keep *) wire     [31:0] TX_PKT_SENT_randinit;
(* keep *) wire      [7:0] TX_STATE_ENCAP_randinit;
(* keep *) wire      [4:0] TX_STATE_randinit;
(* keep *) wire     [15:0] TX_WCNT_INI_randinit;
(* keep *) wire     [15:0] TX_WCNT_randinit;
wire            TX_WE;
(* keep *) wire      [7:0] XGMII_COUT_REG_randinit;
(* keep *) wire     [63:0] XGMII_DOUT_REG_randinit;
wire            __ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__;
wire            __ILA_TX_FUNC_valid__;
wire            __START__;
wire            clk;
wire            n0____DOLLAR__124;
wire     [63:0] n10____DOLLAR__181;
wire            n1____DOLLAR__150;
wire            n2____DOLLAR__155;
wire            n3____DOLLAR__167;
wire            n4____DOLLAR__160;
wire            n5____DOLLAR__168;
wire            n6____DOLLAR__165;
wire            n7____DOLLAR__169;
wire      [5:0] n9____DOLLAR__172;
wire            rst;
assign n0____DOLLAR__124 =  ( RESETN ) == ( 1'b1 )  ;
assign __ILA_TX_FUNC_valid__ = n0____DOLLAR__124 ;
assign n1____DOLLAR__150 =  ( MODE_10G ) == ( 1'b1 )  ;
assign n2____DOLLAR__155 =  ( TX_STATE ) == ( 5'd1 )  ;
assign n3____DOLLAR__167 =  ( n1____DOLLAR__150 ) & (n2____DOLLAR__155 )  ;
assign n4____DOLLAR__160 =  ( TX_STATE_ENCAP ) == ( 8'd1 )  ;
assign n5____DOLLAR__168 =  ( n3____DOLLAR__167 ) & (n4____DOLLAR__160 )  ;
assign n6____DOLLAR__165 =  $signed( TX_B2B_CNTR ) > $signed( 6'd0 )  ;
assign n7____DOLLAR__169 =  ( n5____DOLLAR__168 ) & (n6____DOLLAR__165 )  ;
assign __ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__ = n7____DOLLAR__169 ;
assign n9____DOLLAR__172 =  ( TX_B2B_CNTR ) - ( 6'd1 )  ;
assign n10____DOLLAR__181 =  { ( 32'd117901063 ) , ( 32'd117901063 ) }  ;
always @(posedge clk) begin
   if(rst) begin
       TXFIFO_FULL <= TXFIFO_FULL_randinit ;
       TXFIFO_WUSED_QWD <= TXFIFO_WUSED_QWD_randinit ;
       TXFIFO_BUFF_RD_PTR <= TXFIFO_BUFF_RD_PTR_randinit ;
       TXFIFO_BUFF_WR_PTR <= TXFIFO_BUFF_WR_PTR_randinit ;
       TXFIFO_RD_OUTPUT <= TXFIFO_RD_OUTPUT_randinit ;
       TX_STATE <= TX_STATE_randinit ;
       TX_STATE_ENCAP <= TX_STATE_ENCAP_randinit ;
       TX_B2B_CNTR <= TX_B2B_CNTR_randinit ;
       TX_PACKET_BYTE_CNT <= TX_PACKET_BYTE_CNT_randinit ;
       TX_WCNT <= TX_WCNT_randinit ;
       XGMII_DOUT_REG <= XGMII_DOUT_REG_randinit ;
       XGMII_COUT_REG <= XGMII_COUT_REG_randinit ;
       TX_PKT_SENT <= TX_PKT_SENT_randinit ;
       TX_BYTE_SENT <= TX_BYTE_SENT_randinit ;
       CRC <= CRC_randinit ;
       CRC_DAT_IN <= CRC_DAT_IN_randinit ;
       CRC_IN <= CRC_IN_randinit ;
       TX_WCNT_INI <= TX_WCNT_INI_randinit ;
       TX_BUF <= TX_BUF_randinit ;
       __COUNTER_start__n8 <= 0;
   end
   else if(__START__ && __ILA_TX_FUNC_valid__) begin
       if ( __ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__ ) begin 
           __COUNTER_start__n8 <= 1; end
       else if( (__COUNTER_start__n8 >= 1 ) && ( __COUNTER_start__n8 < 255 )) begin
           __COUNTER_start__n8 <= __COUNTER_start__n8 + 1; end
       if (__ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__) begin
           TXFIFO_FULL <= TXFIFO_FULL ;
       end
       if (__ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__) begin
           TXFIFO_WUSED_QWD <= TXFIFO_WUSED_QWD ;
       end
       if (__ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__) begin
           TXFIFO_BUFF_RD_PTR <= TXFIFO_BUFF_RD_PTR ;
       end
       if (__ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__) begin
           TXFIFO_BUFF_WR_PTR <= TXFIFO_BUFF_WR_PTR ;
       end
       if (__ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__) begin
           TXFIFO_RD_OUTPUT <= TXFIFO_RD_OUTPUT ;
       end
       if (__ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__) begin
           TX_STATE <= TX_STATE ;
       end
       if (__ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__) begin
           TX_STATE_ENCAP <= TX_STATE_ENCAP ;
       end
       if (__ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__) begin
           TX_B2B_CNTR <= n9____DOLLAR__172 ;
       end
       if (__ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__) begin
           TX_PACKET_BYTE_CNT <= TX_PACKET_BYTE_CNT ;
       end
       if (__ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__) begin
           TX_WCNT <= TX_WCNT ;
       end
       if (__ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__) begin
           XGMII_DOUT_REG <= n10____DOLLAR__181 ;
       end
       if (__ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__) begin
           XGMII_COUT_REG <= 8'd255 ;
       end
       if (__ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__) begin
           TX_PKT_SENT <= TX_PKT_SENT ;
       end
       if (__ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__) begin
           TX_BYTE_SENT <= TX_BYTE_SENT ;
       end
       if (__ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__) begin
           CRC <= CRC ;
       end
       if (__ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__) begin
           CRC_DAT_IN <= CRC_DAT_IN ;
       end
       if (__ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__) begin
           CRC_IN <= CRC_IN ;
       end
       if (__ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__) begin
           TX_WCNT_INI <= TX_WCNT_INI ;
       end
       if (__ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__) begin
           TX_BUF <= TX_BUF ;
       end
   end
end
endmodule
