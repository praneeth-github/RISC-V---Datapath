module sign(
input[31:0] instruction,
output[63:0] seinst
);

wire[31:0] inst;


assign inst = {{20{instruction[31]}}, instruction[31:20]};
assign seinst = {{32{inst[31]}}, inst};

endmodule