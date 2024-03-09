`timescale 1ns/10ps
module GAC_TMR2 (
    clk, reset,
    gray_addr, lbp_addr,
    cycle,
    gray_addr_en,
    initialize, fill_right, fill_down, fill_left
);
input          clk, reset;
input          initialize, fill_right, fill_down, fill_left, gray_addr_en;
input  [3:0]   cycle;
input  [13:0]  lbp_addr;
output [13:0]  gray_addr;

wire   [6:0]   gray_addr_row, gray_addr_col, lbp_addr_row, lbp_addr_col;
reg    [6:0]   gray_addr_row0, gray_addr_col0, gray_addr_row1, gray_addr_col1, gray_addr_row2, gray_addr_col2;
reg    [6:0]   init_gray_addr_row, init_gray_addr_col;

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

// TMR

always @(posedge clk or posedge reset) begin
    if (reset) begin
        gray_addr_row0 <= 7'd0;
        gray_addr_col0 <= 7'd0;
    end
    else if (fill_right && gray_addr_en) begin
        gray_addr_row0 <= lbp_addr_row - 1'd1 + cycle;
        gray_addr_col0 <= lbp_addr_col + 1'd1;
    end
    else if (fill_left && gray_addr_en) begin
        gray_addr_row0 <= lbp_addr_row - 1'd1 + cycle;
        gray_addr_col0 <= lbp_addr_col - 1'd1;
    end
    else if (fill_down && gray_addr_en) begin
        gray_addr_row0 <= lbp_addr_row + 1'd1;
        gray_addr_col0 <= lbp_addr_col - 1'd1 + cycle;
    end
    else begin
        gray_addr_row0 <= gray_addr_row0;
        gray_addr_col0 <= gray_addr_col0;
    end
end

always @(posedge clk or posedge reset) begin
    if (reset) begin
        gray_addr_row1 <= 7'd0;
        gray_addr_col1 <= 7'd0;
    end
    else if (fill_right && gray_addr_en) begin
        gray_addr_row1 <= lbp_addr_row - 1'd1 + cycle;
        gray_addr_col1 <= lbp_addr_col + 1'd1;
    end
    else if (fill_left && gray_addr_en) begin
        gray_addr_row1 <= lbp_addr_row - 1'd1 + cycle;
        gray_addr_col1 <= lbp_addr_col - 1'd1;
    end
    else if (fill_down && gray_addr_en) begin
        gray_addr_row1 <= lbp_addr_row + 1'd1;
        gray_addr_col1 <= lbp_addr_col - 1'd1 + cycle;
    end
    else begin
        gray_addr_row1 <= gray_addr_row1;
        gray_addr_col1 <= gray_addr_col1;
    end
end

always @(posedge clk or posedge reset) begin
    if (reset) begin
        gray_addr_row2 <= 7'd0;
        gray_addr_col2 <= 7'd0;
    end
    else if (fill_right && gray_addr_en) begin
        gray_addr_row2 <= lbp_addr_row - 1'd1 + cycle;
        gray_addr_col2 <= lbp_addr_col + 1'd1;
    end
    else if (fill_left && gray_addr_en) begin
        gray_addr_row2 <= lbp_addr_row - 1'd1 + cycle;
        gray_addr_col2 <= lbp_addr_col - 1'd1;
    end
    else if (fill_down && gray_addr_en) begin
        gray_addr_row2 <= lbp_addr_row + 1'd1;
        gray_addr_col2 <= lbp_addr_col - 1'd1 + cycle;
    end
    else begin
        gray_addr_row2 <= gray_addr_row2;
        gray_addr_col2 <= gray_addr_col2;
    end
end

TMR T13 (.Y(gray_addr_row[6]), .A(gray_addr_row0[6]), .B(gray_addr_row1[6]), .C(gray_addr_row2[6]));
TMR T12 (.Y(gray_addr_row[5]), .A(gray_addr_row0[5]), .B(gray_addr_row1[5]), .C(gray_addr_row2[5]));
TMR T11 (.Y(gray_addr_row[4]), .A(gray_addr_row0[4]), .B(gray_addr_row1[4]), .C(gray_addr_row2[4]));
TMR T10 (.Y(gray_addr_row[3]), .A(gray_addr_row0[3]), .B(gray_addr_row1[3]), .C(gray_addr_row2[3]));
TMR T9  (.Y(gray_addr_row[2]), .A(gray_addr_row0[2]), .B(gray_addr_row1[2]), .C(gray_addr_row2[2]));
TMR T8  (.Y(gray_addr_row[1]), .A(gray_addr_row0[1]), .B(gray_addr_row1[1]), .C(gray_addr_row2[1]));
TMR T7  (.Y(gray_addr_row[0]), .A(gray_addr_row0[0]), .B(gray_addr_row1[0]), .C(gray_addr_row2[0]));
TMR T6  (.Y(gray_addr_col[6]), .A(gray_addr_col0[6]), .B(gray_addr_col1[6]), .C(gray_addr_col2[6]));
TMR T5  (.Y(gray_addr_col[5]), .A(gray_addr_col0[5]), .B(gray_addr_col1[5]), .C(gray_addr_col2[5]));
TMR T4  (.Y(gray_addr_col[4]), .A(gray_addr_col0[4]), .B(gray_addr_col1[4]), .C(gray_addr_col2[4]));
TMR T3  (.Y(gray_addr_col[3]), .A(gray_addr_col0[3]), .B(gray_addr_col1[3]), .C(gray_addr_col2[3]));
TMR T2  (.Y(gray_addr_col[2]), .A(gray_addr_col0[2]), .B(gray_addr_col1[2]), .C(gray_addr_col2[2]));
TMR T1  (.Y(gray_addr_col[1]), .A(gray_addr_col0[1]), .B(gray_addr_col1[1]), .C(gray_addr_col2[1]));
TMR T0  (.Y(gray_addr_col[0]), .A(gray_addr_col0[0]), .B(gray_addr_col1[0]), .C(gray_addr_col2[0]));


endmodule