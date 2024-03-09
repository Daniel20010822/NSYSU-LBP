`timescale 1ns/10ps
module LAC_TMR2 (
    clk, reset,
    lbp_addr,
    lbp_addr_en, lbp_valid,
    fill_right, fill_down, fill_left
);
input         clk, reset;
input         lbp_addr_en, lbp_valid;
output [13:0] lbp_addr;
reg    [6:0]  lbp_addr_row0, lbp_addr_col0, lbp_addr_row1, lbp_addr_col1, lbp_addr_row2, lbp_addr_col2;
wire   [6:0]  lbp_addr_row, lbp_addr_col;
wire          lbp_addr_right, lbp_addr_down, lbp_addr_left;
output reg    fill_right, fill_down, fill_left;

assign lbp_addr = {lbp_addr_row, lbp_addr_col};
assign lbp_addr_right = ((lbp_addr_col < 7'd126) && (lbp_addr_row[0] == 1'b1));
assign lbp_addr_left = (lbp_addr_col > 7'd1) && (lbp_addr_row[0] == 1'b0);
assign lbp_addr_down = (lbp_addr_col == 7'd1 || lbp_addr_col == 7'd126);

always @(posedge clk or posedge reset) begin
    if (reset) begin
        fill_right <= 1'b0;
        fill_left  <= 1'b0;
        fill_down  <= 1'b0;
    end
    else if (lbp_valid) begin
        fill_right <= lbp_addr_right;
        fill_left  <= lbp_addr_left;
        fill_down  <= lbp_addr_down;
    end
    else begin
        fill_right <= fill_right;
        fill_left  <= fill_left;
        fill_down  <= fill_down;
    end
end

// TMR
always @(posedge clk or posedge reset) begin
    if (reset) begin
        lbp_addr_row0 <= 7'd1;
        lbp_addr_col0 <= 7'd1;
    end
    else if (lbp_addr_right && lbp_addr_en) begin
        lbp_addr_row0 <= lbp_addr_row0;
        lbp_addr_col0 <= lbp_addr_col0 + 1'd1;
    end
    else if (lbp_addr_left && lbp_addr_en) begin
        lbp_addr_row0 <= lbp_addr_row0;
        lbp_addr_col0 <= lbp_addr_col0 - 1'd1;
    end
    else if (lbp_addr_down && lbp_addr_en) begin
        lbp_addr_row0 <= lbp_addr_row0 + 1'd1;
        lbp_addr_col0 <= lbp_addr_col0;
    end
    else begin
        lbp_addr_row0 <= lbp_addr_row0;
        lbp_addr_col0 <= lbp_addr_col0;
    end
end

always @(posedge clk or posedge reset) begin
    if (reset) begin
        lbp_addr_row1 <= 7'd1;
        lbp_addr_col1 <= 7'd1;
    end
    else if (lbp_addr_right && lbp_addr_en) begin
        lbp_addr_row1 <= lbp_addr_row1;
        lbp_addr_col1 <= lbp_addr_col1 + 1'd1;
    end
    else if (lbp_addr_left && lbp_addr_en) begin
        lbp_addr_row1 <= lbp_addr_row1;
        lbp_addr_col1 <= lbp_addr_col1 - 1'd1;
    end
    else if (lbp_addr_down && lbp_addr_en) begin
        lbp_addr_row1 <= lbp_addr_row1 + 1'd1;
        lbp_addr_col1 <= lbp_addr_col1;
    end
    else begin
        lbp_addr_row1 <= lbp_addr_row1;
        lbp_addr_col1 <= lbp_addr_col1;
    end
end

always @(posedge clk or posedge reset) begin
    if (reset) begin
        lbp_addr_row2 <= 7'd1;
        lbp_addr_col2 <= 7'd1;
    end
    else if (lbp_addr_right && lbp_addr_en) begin
        lbp_addr_row2 <= lbp_addr_row2;
        lbp_addr_col2 <= lbp_addr_col2 + 1'd1;
    end
    else if (lbp_addr_left && lbp_addr_en) begin
        lbp_addr_row2 <= lbp_addr_row2;
        lbp_addr_col2 <= lbp_addr_col2 - 1'd1;
    end
    else if (lbp_addr_down && lbp_addr_en) begin
        lbp_addr_row2 <= lbp_addr_row2 + 1'd1;
        lbp_addr_col2 <= lbp_addr_col2;
    end
    else begin
        lbp_addr_row2 <= lbp_addr_row2;
        lbp_addr_col2 <= lbp_addr_col2;
    end
end

TMR T13 (.Y(lbp_addr_row[6]), .A(lbp_addr_row0[6]), .B(lbp_addr_row1[6]), .C(lbp_addr_row2[6]));
TMR T12 (.Y(lbp_addr_row[5]), .A(lbp_addr_row0[5]), .B(lbp_addr_row1[5]), .C(lbp_addr_row2[5]));
TMR T11 (.Y(lbp_addr_row[4]), .A(lbp_addr_row0[4]), .B(lbp_addr_row1[4]), .C(lbp_addr_row2[4]));
TMR T10 (.Y(lbp_addr_row[3]), .A(lbp_addr_row0[3]), .B(lbp_addr_row1[3]), .C(lbp_addr_row2[3]));
TMR T9  (.Y(lbp_addr_row[2]), .A(lbp_addr_row0[2]), .B(lbp_addr_row1[2]), .C(lbp_addr_row2[2]));
TMR T8  (.Y(lbp_addr_row[1]), .A(lbp_addr_row0[1]), .B(lbp_addr_row1[1]), .C(lbp_addr_row2[1]));
TMR T7  (.Y(lbp_addr_row[0]), .A(lbp_addr_row0[0]), .B(lbp_addr_row1[0]), .C(lbp_addr_row2[0]));
TMR T6  (.Y(lbp_addr_col[6]), .A(lbp_addr_col0[6]), .B(lbp_addr_col1[6]), .C(lbp_addr_col2[6]));
TMR T5  (.Y(lbp_addr_col[5]), .A(lbp_addr_col0[5]), .B(lbp_addr_col1[5]), .C(lbp_addr_col2[5]));
TMR T4  (.Y(lbp_addr_col[4]), .A(lbp_addr_col0[4]), .B(lbp_addr_col1[4]), .C(lbp_addr_col2[4]));
TMR T3  (.Y(lbp_addr_col[3]), .A(lbp_addr_col0[3]), .B(lbp_addr_col1[3]), .C(lbp_addr_col2[3]));
TMR T2  (.Y(lbp_addr_col[2]), .A(lbp_addr_col0[2]), .B(lbp_addr_col1[2]), .C(lbp_addr_col2[2]));
TMR T1  (.Y(lbp_addr_col[1]), .A(lbp_addr_col0[1]), .B(lbp_addr_col1[1]), .C(lbp_addr_col2[1]));
TMR T0  (.Y(lbp_addr_col[0]), .A(lbp_addr_col0[0]), .B(lbp_addr_col1[0]), .C(lbp_addr_col2[0]));

endmodule