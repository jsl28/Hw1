module eight_bit_comparator (x, y, greater,lesser,equal);

   input [7:0] x;
   input [7:0] y;

   output [7:0] greater;
   wire [7:0] greater;
   output [7:0] lesser;
   wire [7:0] lesser;
   output [7:0] equal;
   wire [7:0] equal;
   

   one_bit_comparator CP7 (x[7], y[7],greater[7],lower[7],equal[7]);
   one_bit_comparator Cp6 (x[6], y[6],greater[6],lower[6],equal[6]);
   one_bit_comparator Cp5 (x[5], y[5],greater[5],lower[5],equal[5]);
   one_bit_comparator Cp4 (x[4], y[4],greater[4],lower[4],equal[4]);
   one_bit_comparator Cp3 (x[3], y[3],greater[3],lower[3],equal[3]);
   one_bit_comparator Cp2 (x[2], y[2],greater[2],lower[2],equal[2]);
   one_bit_comparator Cp1 (x[1], y[1],greater[1],lower[1],equal[1]);
   one_bit_comparator Cp0 (x[0], y[0],greater[0],lower[0],equal[0]);





endmodule