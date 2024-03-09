`include "./LBP_modules/FSM.v"
`include "./LBP_modules/LAC_TMR2.v"
`include "./LBP_modules/GAC_TMR2.v"
`include "./LBP_modules/GDM.v"
`include "./LBP_modules/DS.v"
`include "./LBP_modules/TMR.v"
`timescale 1ns/10ps
module LBP ( clk, reset, gray_addr_qtr, gray_req, gray_ready, gray_data, lbp_addr_qtr, lbp_valid, lbp_data_qtr, finish);
input   	    clk;
input   	    reset;
input   	    gray_ready;
output  [3:0] 	gray_addr_qtr;
input   [7:0] 	gray_data;
output         	gray_req;
output  [3:0] 	lbp_addr_qtr;
output  [1:0] 	lbp_data_qtr;
output  	    lbp_valid;
output  	    finish;
//====================================================================
wire            initialize, fill_right, fill_down, fill_left;
wire            gray_addr_en, lbp_addr_en;
wire    [1:0]   gray_count, lbp_count;
wire    [3:0]   cycle;
wire    [7:0]   lbp_data;
wire    [13:0]  gray_addr, lbp_addr;

FSM finite_state_machine(
    .clk(clk), .reset(reset),
    .gray_ready(gray_ready), .gray_req(gray_req), .lbp_addr(lbp_addr), .lbp_valid(lbp_valid),
    .gray_count(gray_count), .lbp_count(lbp_count), .cycle(cycle),
    .initialize(initialize), .gray_addr_en(gray_addr_en), .lbp_addr_en(lbp_addr_en),
    .finish(finish)
);

GAC_TMR2 gray_addr_ctrl(
    .clk(clk), .reset(reset),
    .gray_addr(gray_addr), .lbp_addr(lbp_addr),
    .cycle(cycle),
    .gray_addr_en(gray_addr_en),
    .initialize(initialize), .fill_right(fill_right), .fill_down(fill_down), .fill_left(fill_left)
);

GDM gray_data_matrix(
    .clk(clk), .reset(reset),
    .gray_data(gray_data), .lbp_data(lbp_data),
    .cycle(cycle),
    .initialize(initialize), .fill_right(fill_right), .fill_down(fill_down), .fill_left(fill_left), .gray_req(gray_req)
);

LAC_TMR2 lbp_addr_ctrl(
    .clk(clk), .reset(reset),
    .lbp_addr(lbp_addr),
    .lbp_addr_en(lbp_addr_en), .lbp_valid(lbp_valid),
    .fill_right(fill_right), .fill_down(fill_down), .fill_left(fill_left)
);

DS data_spliter(
    .gray_addr(gray_addr), .lbp_addr(lbp_addr), .lbp_data(lbp_data),
    .gray_addr_qtr(gray_addr_qtr), .lbp_addr_qtr(lbp_addr_qtr), .lbp_data_qtr(lbp_data_qtr),
    .gray_count(gray_count), .lbp_count(lbp_count)
);
//====================================================================
endmodule
