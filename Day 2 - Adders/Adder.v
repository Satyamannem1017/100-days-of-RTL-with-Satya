module halfadder (input a,b,output sum,carry);
  assign sum=a^b;
  assign carry=a&b;
endmodule

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

