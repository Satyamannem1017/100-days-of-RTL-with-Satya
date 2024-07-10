//testbench for half adder

module adder_tb;
  reg a,b;
  wire sum,carry;

  halfadder dut(a,b,sum,carry);

  initial begin
    repeat(10) begin
      a=$urandom;
      b=$urandom;
      #10;
    end
  end

  initial
    $monitor("a=%b,b=%b,sum=%b,carry=%b", a,b,sum,carry);
endmodule

//testbench for full adder

/*
module adder_tb;
  reg a,b,cin;
  wire sum,carry;

  fulladder dut(a,b,cin,sum,carry);

  initial begin
    repeat(10) begin
      a=$urandom;
      b=$urandom;
      cin=$urandom;
      #10;
    end
  end

  initial
    $monitor("a=%b,b=%b,cin=%b,sum=%b,carry=%b", a,b,sum,carry);
endmodule
*/
