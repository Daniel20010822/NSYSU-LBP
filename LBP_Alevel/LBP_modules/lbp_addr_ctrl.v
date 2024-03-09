`timescale 1ns/10ps
module lbp_addr_ctrl(clk, reset, lbp_addr, cycle, cycle4, right, down, left, initialize);
input clk, reset;
input initialize, cycle4;
input [3:0]cycle;
output right, down, left;
output [13:0] lbp_addr;
reg [6:0] lbp_addr_row, lbp_addr_col;

assign lbp_addr = {lbp_addr_row, lbp_addr_col};
assign right = ((lbp_addr_col < 7'd126) && (lbp_addr_row[0] == 1'b1)) & ~initialize & cycle4;
assign left = (lbp_addr_col > 7'd1) && (lbp_addr_row[0] == 1'b0);
assign down = (lbp_addr_col == 7'd1 || lbp_addr_col == 7'd126) & ~right & ~left & ~initialize; //CHECK THIS ONE

always @(posedge clk or posedge reset) begin
  if (reset) begin
    lbp_addr_row <= 7'd1;
    lbp_addr_col <= 7'd0;
  end
  else if (initialize && cycle == 4'd8) begin
    lbp_addr_row <= lbp_addr_row;
    lbp_addr_col <= lbp_addr_col + 1'd1;
  end
  else if (right && cycle == 4'd3) begin
    lbp_addr_row <= lbp_addr_row;
    lbp_addr_col <= lbp_addr_col + 1'd1;
  end
  else if (left && cycle == 4'd3) begin
    lbp_addr_row <= lbp_addr_row;
    lbp_addr_col <= lbp_addr_col - 1'd1;
  end
  else if (down && cycle == 4'd3) begin
    lbp_addr_row <= lbp_addr_row + 1'd1;
    lbp_addr_col <= lbp_addr_col;
  end
  else begin
    lbp_addr_row <= lbp_addr_row;
    lbp_addr_col <= lbp_addr_col;
  end
end

endmodule