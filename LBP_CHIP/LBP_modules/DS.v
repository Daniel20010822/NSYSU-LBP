`timescale 1ns/10ps
module DS (
    gray_addr, lbp_addr, lbp_data,
    gray_addr_qtr, lbp_addr_qtr, lbp_data_qtr,
    gray_count, lbp_count
);
input [13:0] gray_addr, lbp_addr;
input [7:0] lbp_data;
input [1:0] gray_count, lbp_count;
output reg [3:0] gray_addr_qtr;
output reg [3:0] lbp_addr_qtr;
output reg [1:0] lbp_data_qtr;

always @(*) begin
    case(gray_count)
        2'd0: gray_addr_qtr = {2'd0, gray_addr[13:12]};
        2'd1: gray_addr_qtr = gray_addr[11:8];
        2'd2: gray_addr_qtr = gray_addr[7:4];
        default: gray_addr_qtr = gray_addr[3:0];
    endcase
end
always @(*) begin
    case(lbp_count)
        2'd0: begin
            lbp_addr_qtr = {2'd0, lbp_addr[13:12]};
            lbp_data_qtr = lbp_data[7:6];
        end
        2'd1: begin
            lbp_addr_qtr = lbp_addr[11:8];
            lbp_data_qtr = lbp_data[5:4];
        end
        2'd2: begin
            lbp_addr_qtr = lbp_addr[7:4];
            lbp_data_qtr = lbp_data[3:2];
        end
        default: begin
            lbp_addr_qtr = lbp_addr[3:0];
            lbp_data_qtr = lbp_data[1:0];
        end
    endcase
end

endmodule