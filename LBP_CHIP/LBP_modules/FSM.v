`timescale 1ns/10ps
module FSM(
    clk, reset,
    gray_ready, gray_req, lbp_addr, lbp_valid,
    gray_count, lbp_count, cycle,
    initialize, gray_addr_en, lbp_addr_en,
    finish
);
input clk, reset, gray_ready;
input [13:0] lbp_addr;
output initialize, gray_addr_en, lbp_addr_en, gray_req, lbp_valid;
output reg [3:0] cycle;
output reg [1:0] gray_count, lbp_count;
output reg finish;
reg [2:0] cs, ns;

always @(posedge clk or posedge reset) begin
    if (reset) begin
        cs <= 3'd0;
    end
    else begin
        cs <= ns;
    end
end
always @(*) begin
    case(cs)
        3'd0: ns = (gray_ready) ? 3'd1 : 3'd0;                  //initial state
        3'd1: ns = (cycle < 4'd9) ? 3'd2 : 3'd3;                //cycle increase until 9
        3'd2: ns = (gray_count == 2'd3) ? 3'd1 : 3'd2;          //Gray DS (4 times)
        3'd3: ns = (lbp_count == 2'd3) ? 3'd4 : 3'd3;           //Lbp  DS (4 times)
        3'd4: ns = (lbp_addr == {7'd126, 7'd1}) ? 3'd7 : 3'd5;  //modifiy lbp_addr & check whether lbp_addr is at final position
        3'd5: ns = (cycle < 4'd3) ? 3'd6 : 3'd3;                //cycle increase until 3
        3'd6: ns = (gray_count == 2'd3) ? 3'd5 : 3'd6;          //Gray DS (4 times)
        default: ns = 3'd7;                                     //all process are finished
    endcase
end

// gray_req also work as an "enable" in GDM
assign gray_req = (cs == 3'd1 || cs == 3'd5) & (|cycle); //cycle need to be > 4'd0 since gray_addr_qtr at the first cycle = 4'd0 is not correct.
assign lbp_valid = (cs == 3'd4);
assign initialize = (cs < 3'd3);
assign gray_addr_en = (cs == 3'd5);
assign lbp_addr_en = (cs == 3'd4);

// The goal is to prevent glitch when performing logic simulation!
always @(posedge clk) begin
    if (cs == 3'd7) begin
        finish <= 1'b1;
    end
    else begin
        finish <= 1'b0;
    end
end


always @(posedge clk or posedge reset) begin
    if (reset) begin
        cycle <= 4'd0;
    end
    else if (cs == 3'd1) begin
        cycle <= (cycle == 4'd9) ? 4'd0 : cycle + 1'd1;
    end
    else if (cs == 3'd5) begin
        cycle <= (cycle == 4'd3) ? 4'd0 : cycle + 1'd1;
    end
    else begin
        cycle <= cycle;
    end
end

always @(posedge clk or posedge reset) begin
    if (reset) begin
        gray_count <= 2'd0;
    end
    else if (cs == 3'd2 || cs == 3'd6) begin
        gray_count <= gray_count + 1'd1;
    end
    else begin
        gray_count <= 2'd0;
    end
end
always @(posedge clk or posedge reset) begin
    if (reset) begin
        lbp_count <= 2'd0;
    end
    else if (cs == 3'd3) begin
        lbp_count <= lbp_count + 1'd1;
    end
    else begin
        lbp_count <= 2'd0;
    end
end
endmodule
