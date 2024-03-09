`include "./LBP_modules/FSM.v"
`include "./LBP_modules/lbp_addr_ctrl.v"
`include "./LBP_modules/gray_addr_ctrl.v"
`include "./LBP_modules/gray_data_matrix.v"
`timescale 1ns/10ps
module LBP ( clk, reset, gray_addr, gray_req, gray_ready, gray_data, lbp_addr, lbp_valid, lbp_data, finish);
input   	    clk;
input   	    reset;
output  [13:0] 	gray_addr;
output         	gray_req;
input   	    gray_ready;
input   [7:0] 	gray_data;
output  [13:0] 	lbp_addr;
output  	    lbp_valid;
output  [7:0] 	lbp_data;
output  	    finish;

//====================================================================
wire cycle4, initialize, right, down, left;
wire [3:0]cycle;
FSM fsm(clk, reset, gray_ready, lbp_addr, lbp_valid, gray_req, finish, cycle, cycle4, initialize);
gray_addr_ctrl gray_addr_ctrl(clk, reset, gray_addr, lbp_addr, cycle, right, down, left, initialize);
lbp_addr_ctrl lbp_addr_ctrl(clk, reset, lbp_addr, cycle, cycle4, right, down, left, initialize);
gray_data_matrix gray_data_matrix(clk, reset, gray_data, lbp_data, right, down, left, initialize, cycle);
//====================================================================
endmodule
