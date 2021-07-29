module sign(
input[31:0] instruction,
output[63:0] seinst
);

wire[11:0] inst;

assign inst = {instruction[31:25],instruction[11:7]};
assign seinst = {{52{instruction[31]}}, inst};

endmodule