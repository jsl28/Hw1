module one_bit_comparator (a, b, lower, greater, equal);

   input a;
   input b;

   output greater;
   reg greater;
   output lower;
   reg lower;
   output equal;
   reg equal;

   always @(*) begin
       if (a<b) begin
         equal = 0;
         lower = 1;
         greater = 0;
       end
       else if (a==b) begin
         equal = 1;
         lower = 0;
         greater = 0;
       end
       else begin
         equal = 0;
         lower = 0;
         greater = 1;
       end
    end   

endmodule