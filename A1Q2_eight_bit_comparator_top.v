module eight_bit_comparator_top;

   reg [7:0] A;
   reg [7:0] B;

   wire [7:0] greater;
   wire [7:0] lesser;
   wire [7:0] equal;

   eight_bit_comparator (A, B,greater,lesser,equal);

   always @ (A or B ) begin
       if(equal = 8'b11111111)begin
           $display("A = %d is equal to B=%d" ,A,B);
       end
       else if  (greater>lesser)begin
           $display("A=%d is greater than B=%d", A,B);
       end
       else begin
           $display("A = %d is lesser than B=%d", A,B);
       end
   end

   initial begin
      A = 100; B = 100; Cin = 1;
      #1
      $display("\n");
      A = 200; B = 200; Cin = 0;
      #1
      $display("\n");
      A = 20; B = 200; Cin = 0;
      #1
      $display("\n");
      A = 30;B = 200;Cin = 0;
      #1
      $display("\n");
      A = 40;B = 200;Cin = 1;
      #1
      $display("\n");
      A = 50;B = 200;Cin = 0;
      #1
      $display("\n");
      A = 50;B = 90;Cin = 1;
      #1
      $display("\n");
      A = 50;B = 80;Cin = 0;
      #1
      $display("\n");
      A = 50;B = 70;Cin = 0;
      #1
      $display("\n");
      A = 60;B = 200;Cin = 0;
      #1
      $display("\n");
   end

endmodule
