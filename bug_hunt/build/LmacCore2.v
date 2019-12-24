module LMAC_CORE2(
MODE_10G,
MODE_1G,
MODE_2P5G,
MODE_5G,
RESETN,
TX_DATA,
TX_WE,
__ILA_LMAC_CORE2_grant__,
clk,
rst,
__ILA_LMAC_CORE2_acc_decode__,
__ILA_LMAC_CORE2_decode_of_TX_WR_PKT_DATA_FIFO__,
__ILA_LMAC_CORE2_valid__,
TXFIFO_BUFF_addr0,
TXFIFO_BUFF_data0,
TXFIFO_BUFF_wen0,
TXFIFO_FULL,
TXFIFO_WUSED_QWD,
TXFIFO_BUFF_RD_PTR,
TXFIFO_BUFF_WR_PTR,
TXFIFO_RD_OUTPUT,
TXFIFO_RD_EN,
TXFIFO_RD_EMPTY
);
input            MODE_10G;
input            MODE_1G;
input            MODE_2P5G;
input            MODE_5G;
input            RESETN;
input     [63:0] TX_DATA;
input            TX_WE;
input            __ILA_LMAC_CORE2_grant__;
input            clk;
input            rst;
output            __ILA_LMAC_CORE2_acc_decode__;
output            __ILA_LMAC_CORE2_decode_of_TX_WR_PKT_DATA_FIFO__;
output            __ILA_LMAC_CORE2_valid__;
output      [4:0] TXFIFO_BUFF_addr0;
output     [63:0] TXFIFO_BUFF_data0;
output            TXFIFO_BUFF_wen0;
output reg            TXFIFO_FULL;
output reg     [12:0] TXFIFO_WUSED_QWD;
output reg      [4:0] TXFIFO_BUFF_RD_PTR;
output reg      [4:0] TXFIFO_BUFF_WR_PTR;
output reg     [63:0] TXFIFO_RD_OUTPUT;
output reg            TXFIFO_RD_EN;
output reg            TXFIFO_RD_EMPTY;
wire            MODE_10G;
wire            MODE_1G;
wire            MODE_2P5G;
wire            MODE_5G;
wire            RESETN;
wire      [4:0] TXFIFO_BUFF_addr0;
wire     [63:0] TXFIFO_BUFF_data0;
wire            TXFIFO_BUFF_wen0;
wire     [63:0] TX_DATA;
wire            TX_WE;
wire            __ILA_LMAC_CORE2_acc_decode__;
wire            __ILA_LMAC_CORE2_decode_of_TX_WR_PKT_DATA_FIFO__;
wire            __ILA_LMAC_CORE2_grant__;
wire            __ILA_LMAC_CORE2_valid__;
wire            clk;
wire            n0;
wire            n1;
wire            n10;
wire     [12:0] n11;
wire            n12;
wire            n13;
wire            n14;
wire            n15;
wire      [4:0] n16;
wire            n17;
wire            n18;
wire            n19;
wire            n2;
wire      [4:0] n20;
wire      [4:0] n21;
wire            n3;
wire            n4;
wire            n5;
wire            n6;
wire            n7;
wire            n8;
wire            n9;
wire            rst;
assign n0 =  ( 1'b1 ) | ( 1'b1 )  ;
assign n1 =  ( n0 ) | ( 1'b1 )  ;
assign n2 =  ( n1 ) | ( 1'b1 )  ;
assign __ILA_LMAC_CORE2_valid__ = n2 ;
assign n3 =  ( TX_WE ) == ( 1'b1 )  ;
assign n4 =  ( TXFIFO_FULL ) == ( 1'b1 )  ;
assign n5 = ~ ( n4 )  ;
assign n6 =  ( n3 ) & (n5 )  ;
assign __ILA_LMAC_CORE2_decode_of_TX_WR_PKT_DATA_FIFO__ = n6 ;
assign __ILA_LMAC_CORE2_acc_decode__[0] = __ILA_LMAC_CORE2_decode_of_TX_WR_PKT_DATA_FIFO__ ;
assign n7 =  ( TXFIFO_WUSED_QWD ) == ( 13'd15 )  ;
assign n8 =  ( TXFIFO_WUSED_QWD ) > ( 13'd15 )  ;
assign n9 =  ( n7 ) | ( n8 )  ;
assign n10 =  ( n9 ) ? ( 1'd1 ) : ( 1'd0 ) ;
assign n11 =  ( TXFIFO_WUSED_QWD ) + ( 13'd1 )  ;
assign n12 = ~ ( n6 )  ;
assign n13 =  ( 1'b1 ) & (n12 )  ;
assign n14 =  ( 1'b1 ) & (n6 )  ;
assign n15 =  ( TXFIFO_BUFF_WR_PTR ) == ( 5'd16 )  ;
assign n16 =  ( n15 ) ? ( 5'd0 ) : ( TXFIFO_BUFF_WR_PTR ) ;
assign TXFIFO_BUFF_addr0 = n14 ? (n16) : (0) ;
assign TXFIFO_BUFF_data0 = n14 ? (TX_DATA) : ('d0) ;
assign TXFIFO_BUFF_wen0 = (n14) ? ( 1'b1 ) : (1'b0) ;
assign n17 =  ( TXFIFO_BUFF_WR_PTR ) == ( 5'd16 )  ;
assign n18 =  ( TXFIFO_BUFF_WR_PTR ) > ( 5'd16 )  ;
assign n19 =  ( n17 ) | ( n18 )  ;
assign n20 =  ( TXFIFO_BUFF_WR_PTR ) + ( 5'd1 )  ;
assign n21 =  ( n19 ) ? ( 5'd1 ) : ( n20 ) ;
always @(posedge clk) begin
   if(rst) begin
   end
   else if(__ILA_LMAC_CORE2_valid__) begin
       if ( __ILA_LMAC_CORE2_decode_of_TX_WR_PKT_DATA_FIFO__ && __ILA_LMAC_CORE2_grant__[0] ) begin
           TXFIFO_FULL <= n10;
       end
       if ( __ILA_LMAC_CORE2_decode_of_TX_WR_PKT_DATA_FIFO__ && __ILA_LMAC_CORE2_grant__[0] ) begin
           TXFIFO_WUSED_QWD <= n11;
       end
       if ( __ILA_LMAC_CORE2_decode_of_TX_WR_PKT_DATA_FIFO__ && __ILA_LMAC_CORE2_grant__[0] ) begin
           TXFIFO_BUFF_WR_PTR <= n21;
       end
   end
end
endmodule
