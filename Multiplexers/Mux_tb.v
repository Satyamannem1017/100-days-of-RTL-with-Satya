module mux_tb;
  reg [3:0]in;
  reg [1:0]sel;
  wire y;

  multiplexer dut(in,sel,y);

  initial begin
    repeat(10) begin
      in=$urandom;
      sel=$urandom;
      #10;
    end
  end

  initial
    $monitor("in=%b,sel=%b,y=%b",in,sel,y);
endmodule
