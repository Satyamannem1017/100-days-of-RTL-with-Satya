module add_sub_tb;
  wire [3:0]sum;
  wire carryout;
  reg [3:0]a,b;
  reg k;   //control signal
  wire [5:0]result;
  add_sub a1(a,b,k,sum,carryout,result);

  initial begin
    repeat(10) begin
      a=$urandom;
      b=$urandom;
      k=~k;
      #10;
    end
  end

  initial
    $monitor("a=%d,b=%d,k=%b,sum=%d,carryout=%b,result=%d",a,b,k,sum,carryout,result);
endmodule
