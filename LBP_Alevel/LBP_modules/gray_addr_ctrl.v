`timescale 1ns/10ps
module gray_addr_ctrl(clk, reset, gray_addr, lbp_addr, cycle, right, down, left, initialize);
input clk, reset;
input right, down, left, initialize;
input [3:0]cycle;
input [13:0]lbp_addr;

output [13:0]gray_addr;

wire [6:0]lbp_addr_row, lbp_addr_col;
reg [6:0]gray_addr_row, gray_addr_col;
reg [6:0]ini_gray_addr_row, ini_gray_addr_col;  //gray_addr in initialize mode


assign gray_addr = {gray_addr_row, gray_addr_col};
assign lbp_addr_row = lbp_addr[13:7];
assign lbp_addr_col = lbp_addr[6:0];

always @(*) begin  //gray_addr with corresponding cycle
  case(cycle)
    4'd0: begin
      ini_gray_addr_row = 7'd0;
      ini_gray_addr_col = 7'd0;
    end
    4'd1: begin
      ini_gray_addr_row = 7'd0;
      ini_gray_addr_col = 7'd1;
    end
    4'd2: begin
      ini_gray_addr_row = 7'd0;
      ini_gray_addr_col = 7'd2;
    end
    4'd3: begin
      ini_gray_addr_row = 7'd1;
      ini_gray_addr_col = 7'd0;
    end
    4'd4: begin
      ini_gray_addr_row = 7'd1;
      ini_gray_addr_col = 7'd1;
    end
    4'd5: begin
      ini_gray_addr_row = 7'd1;
      ini_gray_addr_col = 7'd2;
    end
    4'd6: begin
      ini_gray_addr_row = 7'd2;
      ini_gray_addr_col = 7'd0;
    end
    4'd7: begin
      ini_gray_addr_row = 7'd2;
      ini_gray_addr_col = 7'd1;
    end
    4'd8: begin
      ini_gray_addr_row = 7'd2;
      ini_gray_addr_col = 7'd2;
    end
    default: begin
      ini_gray_addr_row = 7'd2;
      ini_gray_addr_col = 7'd2;
    end
  endcase
end


always @(posedge clk or posedge reset) begin
  if (reset) begin
    gray_addr_row <= 7'd0;
    gray_addr_col <= 7'd0;
  end
  else if (initialize && cycle <= 4'd9) begin
    gray_addr_row <= ini_gray_addr_row;
    gray_addr_col <= ini_gray_addr_col;
  end
  else if (right && cycle < 4'd3) begin
    gray_addr_row <= lbp_addr_row - 1'd1 + cycle;
    gray_addr_col <= lbp_addr_col + 2'd2;
  end
  else if (down && cycle < 4'd3) begin
    gray_addr_row <= lbp_addr_row + 2'd2;
    gray_addr_col <= lbp_addr_col - 1'd1 + cycle;
  end
  else if (left && cycle < 4'd3) begin
    gray_addr_row <= lbp_addr_row - 1'd1 + cycle;
    gray_addr_col <= lbp_addr_col - 2'd2;
  end
  else begin
    gray_addr_row <= gray_addr_row;
    gray_addr_col <= gray_addr_col;
  end
end

endmodule