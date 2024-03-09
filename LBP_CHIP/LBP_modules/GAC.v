`timescale 1ns/10ps
module GAC (
    clk, reset,
    gray_addr, lbp_addr,
    cycle,
    gray_addr_en,
    initialize, fill_right, fill_down, fill_left
);
input clk, reset;
input initialize, fill_right, fill_down, fill_left, gray_addr_en;
input [3:0] cycle;
input [13:0] lbp_addr;
output [13:0]gray_addr;

wire [6:0] lbp_addr_row, lbp_addr_col;
reg [6:0] gray_addr_row, gray_addr_col;
reg [6:0] init_gray_addr_row, init_gray_addr_col;

assign gray_addr = (initialize) ? {init_gray_addr_row, init_gray_addr_col} : {gray_addr_row, gray_addr_col};
assign lbp_addr_row = lbp_addr[13:7];
assign lbp_addr_col = lbp_addr[6:0];

always @(*) begin
    case(cycle)
        4'd1: begin
            init_gray_addr_row = 7'd0;
            init_gray_addr_col = 7'd0;
        end
        4'd2: begin
            init_gray_addr_row = 7'd0;
            init_gray_addr_col = 7'd1;
        end
        4'd3: begin
            init_gray_addr_row = 7'd0;
            init_gray_addr_col = 7'd2;
        end
        4'd4: begin
            init_gray_addr_row = 7'd1;
            init_gray_addr_col = 7'd0;
        end
        4'd5: begin
            init_gray_addr_row = 7'd1;
            init_gray_addr_col = 7'd1;
        end
        4'd6: begin
            init_gray_addr_row = 7'd1;
            init_gray_addr_col = 7'd2;
        end
        4'd7: begin
            init_gray_addr_row = 7'd2;
            init_gray_addr_col = 7'd0;
        end
        4'd8: begin
            init_gray_addr_row = 7'd2;
            init_gray_addr_col = 7'd1;
        end
        4'd9: begin
            init_gray_addr_row = 7'd2;
            init_gray_addr_col = 7'd2;
        end
        default: begin
            init_gray_addr_row = 7'd0;
            init_gray_addr_col = 7'd0;
        end
    endcase
end

always @(posedge clk or posedge reset) begin
    if (reset) begin
        gray_addr_row <= 7'd0;
        gray_addr_col <= 7'd0;
    end
    else if (fill_right && gray_addr_en) begin
        gray_addr_row <= lbp_addr_row - 1'd1 + cycle;
        gray_addr_col <= lbp_addr_col + 1'd1;
    end
    else if (fill_left && gray_addr_en) begin
        gray_addr_row <= lbp_addr_row - 1'd1 + cycle;
        gray_addr_col <= lbp_addr_col - 1'd1;
    end
    else if (fill_down && gray_addr_en) begin
        gray_addr_row <= lbp_addr_row + 1'd1;
        gray_addr_col <= lbp_addr_col - 1'd1 + cycle;
    end
    else begin
        gray_addr_row <= gray_addr_row;
        gray_addr_col <= gray_addr_col;
    end
end

endmodule