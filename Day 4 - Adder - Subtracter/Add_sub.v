module fulladder(input a,b,cin,output sum,carry);
  //wire s,c1,c2;
  assign sum=a^b^cin;
  assign carry=a&b|b&cin|cin&a;
/*
  halfadder a1(a,b,s,c1);
  halfadder a2(cin,s,sum,c2);
  or o1(carry,c1,c2);
  */
endmodule

module add_sub(input [3:0]a,b,input k,output [3:0]sum,output carryout,output [5:0]result);
  wire [3:0]b_comp;
  wire c0,c1,c2;
  assign b_comp[0]=b[0]^k;
  assign b_comp[1]=b[1]^k;
  assign b_comp[2]=b[2]^k;
  assign b_comp[3]=b[3]^k;

  fulladder dut1(a[0],b_comp[0],k,sum[0],c0);
  fulladder dut1(a[1],b_comp[1],c0,sum[1],c1);
  fulladder dut1(a[2],b_comp[2],c1,sum[2],c2);
  fulladder dut1(a[3],b_comp[3],c2,sum[3],carry_out);
  assign result = {carryout,sum};
endmodule
