`timescale 1ns/10ps
module LAC (
    clk, reset,
    lbp_addr,
    lbp_addr_en, lbp_valid,
    fill_right, fill_down, fill_left
);
input clk, reset;
input lbp_addr_en, lbp_valid;
output [13:0]lbp_addr;
reg [6:0] lbp_addr_row, lbp_addr_col;
wire lbp_addr_right, lbp_addr_down, lbp_addr_left;
output reg fill_right, fill_down, fill_left;

assign lbp_addr = {lbp_addr_row, lbp_addr_col};
assign lbp_addr_right = ((lbp_addr_col < 7'd126) && (lbp_addr_row[0] == 1'b1));
assign lbp_addr_left = (lbp_addr_col > 7'd1) && (lbp_addr_row[0] == 1'b0);
assign lbp_addr_down = (lbp_addr_col == 7'd1 || lbp_addr_col == 7'd126);

always @(posedge clk) begin
    if (lbp_valid) begin
        fill_right <= lbp_addr_right;
        fill_left <= lbp_addr_left;
        fill_down <= lbp_addr_down;
    end
    else begin
        fill_right <= fill_right;
        fill_left <= fill_left;
        fill_down <= fill_down;
    end
end

always @(posedge clk or posedge reset) begin
    if (reset) begin
        lbp_addr_row <= 7'd1;
        lbp_addr_col <= 7'd1;
    end
    else if (lbp_addr_right && lbp_addr_en) begin
        lbp_addr_row <= lbp_addr_row;
        lbp_addr_col <= lbp_addr_col + 1'd1;
    end
    else if (lbp_addr_left && lbp_addr_en) begin
        lbp_addr_row <= lbp_addr_row;
        lbp_addr_col <= lbp_addr_col - 1'd1;
    end
    else if (lbp_addr_down && lbp_addr_en) begin
        lbp_addr_row <= lbp_addr_row + 1'd1;
        lbp_addr_col <= lbp_addr_col;
    end
    else begin
        lbp_addr_row <= lbp_addr_row;
        lbp_addr_col <= lbp_addr_col;
    end
end

endmodule