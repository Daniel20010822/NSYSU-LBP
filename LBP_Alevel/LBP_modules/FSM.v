`timescale 1ns/10ps
module FSM(clk, reset, gray_ready, lbp_addr, lbp_valid, gray_req, finish, cycle, cycle4, initialize);
input clk, reset, gray_ready;
input [13:0]lbp_addr;
output lbp_valid, finish, cycle4, initialize, gray_req;
output reg [3:0]cycle;
reg [1:0]cs, ns;

always @(*) begin
  case(cs)
    2'd0: ns = (gray_ready) ? 2'd1 : 2'd0;
    2'd1: ns = (cycle == 4'd9) ? 2'd2 : 2'd1;
    2'd2: ns = (lbp_addr == 14'b11111100000001) ? 2'd3 : 2'd2;
    default: ns = 2'd3;
  endcase
end
always @(posedge clk or posedge reset) begin
  if (reset) begin
    cs <= 2'd0;
  end
  else begin
    cs <= ns;
  end
end
assign initialize = (cs == 2'd1);
assign cycle4 = (cs == 2'd2);
assign finish = (cs == 2'd3);
assign lbp_valid = (cycle4 && cycle == 4'd0) & ~initialize;
assign gray_req = ((initialize & ~(cycle == 4'd0)) | cycle4) & ~lbp_valid;

always @(posedge clk or posedge reset) begin
  if (reset) begin
    cycle <= 4'd0;
  end
  else if (initialize) begin
    cycle <= (cycle == 4'd9) ? 4'd0 : cycle + 1'd1;
  end
  else if (cycle4) begin
    cycle <= (cycle == 4'd3) ? 4'd0 : cycle + 1'd1;
  end
end

endmodule