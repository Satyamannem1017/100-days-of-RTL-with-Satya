module multiplexer (input [3:0]in,input [1:0]sel,output y);
  assign y=sel[1]?(sel[0]?in[3]:in[2]):(sel[0]?in[1]:in[0]);
endmodule


/*
module multiplexer (input [3:0]in,input [1:0]sel,output reg y);
  always@(*)
    begin
      case
        2'b00:y=in[0];
        2'b01:y=in[1];
        2'b10:y=in[2];
        2'b11:y=in[3];
      endcase
    end
endmodule
*/
