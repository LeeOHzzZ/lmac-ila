module TX_FIFO__DOT__TX_WR_PKT_DATA_FIFO(
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
__ILA_TX_FIFO_decode_of_TX_WR_PKT_DATA_FIFO__,
__ILA_TX_FIFO_valid__,
TXFIFO_BUFF_addr0,
TXFIFO_BUFF_data0,
TXFIFO_BUFF_wen0,
TXFIFO_FULL,
TXFIFO_WUSED_QWD,
TXFIFO_BUFF_RD_PTR,
TXFIFO_BUFF_WR_PTR,
TXFIFO_RD_OUTPUT,
__COUNTER_start__n5
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
output            __ILA_TX_FIFO_decode_of_TX_WR_PKT_DATA_FIFO__;
output            __ILA_TX_FIFO_valid__;
output     [15:0] TXFIFO_BUFF_addr0;
output     [63:0] TXFIFO_BUFF_data0;
output            TXFIFO_BUFF_wen0;
output reg            TXFIFO_FULL;
output reg     [12:0] TXFIFO_WUSED_QWD;
output reg     [15:0] TXFIFO_BUFF_RD_PTR;
output reg     [15:0] TXFIFO_BUFF_WR_PTR;
output reg     [63:0] TXFIFO_RD_OUTPUT;
output reg      [7:0] __COUNTER_start__n5;
wire            MODE_10G;
wire            MODE_1G;
wire            MODE_2P5G;
wire            MODE_5G;
wire            RESETN;
(* keep *) wire     [15:0] TXFIFO_BUFF_RD_PTR_randinit;
(* keep *) wire     [15:0] TXFIFO_BUFF_WR_PTR_randinit;
wire     [15:0] TXFIFO_BUFF_addr0;
wire     [63:0] TXFIFO_BUFF_data0;
wire            TXFIFO_BUFF_wen0;
(* keep *) wire            TXFIFO_FULL_randinit;
(* keep *) wire     [63:0] TXFIFO_RD_OUTPUT_randinit;
(* keep *) wire     [12:0] TXFIFO_WUSED_QWD_randinit;
wire     [63:0] TX_DATA;
wire            TX_WE;
wire            __ILA_TX_FIFO_decode_of_TX_WR_PKT_DATA_FIFO__;
wire            __ILA_TX_FIFO_valid__;
wire            __START__;
wire            clk;
wire            n0____DOLLAR__43;
wire     [15:0] n10____DOLLAR__68;
wire     [15:0] n11____DOLLAR__75;
wire            n1____DOLLAR__51;
wire            n2____DOLLAR__56;
wire            n3____DOLLAR__58;
wire            n4____DOLLAR__59;
wire            n6____DOLLAR__85;
wire            n7____DOLLAR__87;
wire     [12:0] n8____DOLLAR__78;
wire            n9____DOLLAR__73;
wire            rst;
assign n0____DOLLAR__43 =  ( TX_WE ) == ( 1'b1 )  ;
assign __ILA_TX_FIFO_valid__ = n0____DOLLAR__43 ;
assign n1____DOLLAR__51 =  ( TX_WE ) == ( 1'b1 )  ;
assign n2____DOLLAR__56 =  ( TXFIFO_FULL ) == ( 1'b1 )  ;
assign n3____DOLLAR__58 = ~ ( n2____DOLLAR__56 )  ;
assign n4____DOLLAR__59 =  ( n1____DOLLAR__51 ) & (n3____DOLLAR__58 )  ;
assign __ILA_TX_FIFO_decode_of_TX_WR_PKT_DATA_FIFO__ = n4____DOLLAR__59 ;
assign n6____DOLLAR__85 =  ( TXFIFO_WUSED_QWD ) == ( 13'd1024 )  ;
assign n7____DOLLAR__87 =  ( n6____DOLLAR__85 ) ? ( 1'd1 ) : ( 1'd0 ) ;
assign n8____DOLLAR__78 =  ( TXFIFO_WUSED_QWD ) + ( 13'd1 )  ;
assign TXFIFO_BUFF_addr0 = n4____DOLLAR__59 ? (TXFIFO_BUFF_WR_PTR) : (0) ;
assign TXFIFO_BUFF_data0 = n4____DOLLAR__59 ? (TX_DATA) : ('d0) ;
assign TXFIFO_BUFF_wen0 = (n4____DOLLAR__59)&&__START__ ? ( 1'b1 ) : (1'b0) ;
assign n9____DOLLAR__73 =  ( TXFIFO_BUFF_WR_PTR ) == ( 16'd1024 )  ;
assign n10____DOLLAR__68 =  ( TXFIFO_BUFF_WR_PTR ) + ( 16'd1 )  ;
assign n11____DOLLAR__75 =  ( n9____DOLLAR__73 ) ? ( 16'd0 ) : ( n10____DOLLAR__68 ) ;
always @(posedge clk) begin
   if(rst) begin
       TXFIFO_FULL <= TXFIFO_FULL_randinit ;
       TXFIFO_WUSED_QWD <= TXFIFO_WUSED_QWD_randinit ;
       TXFIFO_BUFF_RD_PTR <= TXFIFO_BUFF_RD_PTR_randinit ;
       TXFIFO_BUFF_WR_PTR <= TXFIFO_BUFF_WR_PTR_randinit ;
       TXFIFO_RD_OUTPUT <= TXFIFO_RD_OUTPUT_randinit ;
       __COUNTER_start__n5 <= 0;
   end
   else if(__START__ && __ILA_TX_FIFO_valid__) begin
       if ( __ILA_TX_FIFO_decode_of_TX_WR_PKT_DATA_FIFO__ ) begin 
           __COUNTER_start__n5 <= 1; end
       else if( (__COUNTER_start__n5 >= 1 ) && ( __COUNTER_start__n5 < 255 )) begin
           __COUNTER_start__n5 <= __COUNTER_start__n5 + 1; end
       if (__ILA_TX_FIFO_decode_of_TX_WR_PKT_DATA_FIFO__) begin
           TXFIFO_FULL <= n7____DOLLAR__87 ;
       end
       if (__ILA_TX_FIFO_decode_of_TX_WR_PKT_DATA_FIFO__) begin
           TXFIFO_WUSED_QWD <= n8____DOLLAR__78 ;
       end
       if (__ILA_TX_FIFO_decode_of_TX_WR_PKT_DATA_FIFO__) begin
           TXFIFO_BUFF_RD_PTR <= TXFIFO_BUFF_RD_PTR ;
       end
       if (__ILA_TX_FIFO_decode_of_TX_WR_PKT_DATA_FIFO__) begin
           TXFIFO_BUFF_WR_PTR <= n11____DOLLAR__75 ;
       end
       if (__ILA_TX_FIFO_decode_of_TX_WR_PKT_DATA_FIFO__) begin
           TXFIFO_RD_OUTPUT <= TXFIFO_RD_OUTPUT ;
       end
   end
end
endmodule
