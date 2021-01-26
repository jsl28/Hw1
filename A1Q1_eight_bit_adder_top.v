module eight_bit_adder_top;

   reg [7:0] A;
   reg [7:0] B;
   reg Cin;

   wire [7:0] Sum;
   wire Carry;

   eight_bit_adder ADDER (A, B, Cin, Sum, Carry);

   always @ (A or B or Cin or Sum or Carry) begin
       $display("time=%d:%b+ %b + %b = %b, carry = %b\n",$time,A,B,Cin,sum,carry);
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