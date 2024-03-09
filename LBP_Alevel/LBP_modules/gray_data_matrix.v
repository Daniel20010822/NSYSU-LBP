`timescale 1ns/10ps
module gray_data_matrix(clk, reset, gray_data, lbp_data, right, down, left, initialize, cycle);
input clk, reset;
input right, down, left, initialize;
input [3:0]cycle;
input [7:0]gray_data;
output [7:0]lbp_data;
reg [7:0]g7, g6, g5, g4, g3, g2, g1, g0, gc;


assign lbp_data[7] = (g7 >= gc);
assign lbp_data[6] = (g6 >= gc);
assign lbp_data[5] = (g5 >= gc);
assign lbp_data[4] = (g4 >= gc);
assign lbp_data[3] = (g3 >= gc);
assign lbp_data[2] = (g2 >= gc);
assign lbp_data[1] = (g1 >= gc);
assign lbp_data[0] = (g0 >= gc);

always @(posedge clk or posedge reset) begin
  if (reset) begin
    g0 <= 8'd0; g1 <= 8'd0; g2 <= 8'd0;
    g3 <= 8'd0; gc <= 8'd0; g4 <= 8'd0; 
    g5 <= 8'd0; g6 <= 8'd0; g7 <= 8'd0; 
  end
  else if (initialize) begin
    g0 <= g1; g1 <= g2; g2 <= g3;
    g3 <= gc; gc <= g4; g4 <= g5; 
    g5 <= g6; g6 <= g7; g7 <= gray_data;
  end
  else if (right) begin
    g0 <= (cycle == 4'd1) ? g1 : g0; g1 <= (cycle == 4'd1) ? g2 : g1; g2 <= (cycle == 4'd1) ? gray_data : g2;
    g3 <= (cycle == 4'd2) ? gc : g3; gc <= (cycle == 4'd2) ? g4 : gc; g4 <= (cycle == 4'd2) ? gray_data : g4; 
    g5 <= (cycle == 4'd3) ? g6 : g5; g6 <= (cycle == 4'd3) ? g7 : g6; g7 <= (cycle == 4'd3) ? gray_data : g7;
  end
  else if (down) begin
    g0 <= (cycle == 4'd1) ? g3 : g0;        g1 <= (cycle == 4'd2) ? gc : g1;        g2 <= (cycle == 4'd3) ? g4 : g2;
    g3 <= (cycle == 4'd1) ? g5 : g3;        gc <= (cycle == 4'd2) ? g6 : gc;        g4 <= (cycle == 4'd3) ? g7 : g4;
    g5 <= (cycle == 4'd1) ? gray_data : g5; g6 <= (cycle == 4'd2) ? gray_data : g6; g7 <= (cycle == 4'd3) ? gray_data : g7;
  end
  else if (left) begin
    g0 <= (cycle == 4'd1) ? gray_data : g0; g1 <= (cycle == 4'd1) ? g0 : g1; g2 <= (cycle == 4'd1) ? g1 : g2;
    g3 <= (cycle == 4'd2) ? gray_data : g3; gc <= (cycle == 4'd2) ? g3 : gc; g4 <= (cycle == 4'd2) ? gc : g4;
    g5 <= (cycle == 4'd3) ? gray_data : g5; g6 <= (cycle == 4'd3) ? g5 : g6; g7 <= (cycle == 4'd3) ? g6 : g7;
  end
  else begin
    g0 <= g0; g1 <= g1; g2 <= g2;
    g3 <= g3; gc <= gc; g4 <= g4; 
    g5 <= g5; g6 <= g6; g7 <= g7; 
  end
end

endmodule