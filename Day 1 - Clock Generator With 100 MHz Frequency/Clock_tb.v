`timescale 1ns/1ps
module clock_tb;
  reg clk;
  clock_gen m(clk);

  always #5 clk=~clk;

  initial
  #1000 $finish;
endmodule
