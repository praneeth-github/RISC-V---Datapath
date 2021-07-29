module main(
	input [31:0] instruction,
	input RegWrite,
	input ALUSrc,
	input [3:0] ALUop,
	input MemWrite,
	input MemRead,
	input MemtoReg
	);
	
	wire [4:0] rs1;
	wire [4:0] rs2;
	wire [4:0] rd;
	
	assign rs1 = instruction[19:15];
	assign rs2 = instruction[24:20];
	assign rd = instruction [11:7];

	wire [63:0] writedata;
	wire [63:0] readdata1;
	wire [63:0] readdata2;
	wire [63:0] immed;
	
	
	
	register reg1(rs1,rs2,rd,writedata,RegWrite,readdata1,readdata2);
	
	sign sign1(instruction,immed);
	
	wire [63:0] input2;
	MUX_ALUSrc muxalusrc(readdata2,immed,ALUSrc,input2);

	wire [63:0] out;
	wire ovf,zero;
	wire [63:0] readdata;
	
	ALU alu64(readdata1,input2,ALUop,out,ovf,zero);

	datamem data11(out,readdata2,MemWrite,MemRead,readdata);

	MUX_MemtoReg muxmemtoreg(readdata,out,MemtoReg,writedata);

endmodule
