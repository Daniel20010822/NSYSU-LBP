`timescale 1ns/10ps
module TMR(Y, A, B, C);
input  A, B, C;
output Y;
wire   AB, BC, AC;

and(AB, A, B);
and(BC, B, C);
and(AC, A, C);
or (Y, AB, BC, AC);

endmodule