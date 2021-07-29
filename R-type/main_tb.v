

module tb_v;

	// Inputs
	reg [31:0] instruction;
	reg RegWrite;
	reg ALUSrc;
	reg [3:0] ALUop;
	reg MemWrite;
	reg MemRead;
	reg MemtoReg;

	// Outputs

	// Instantiate the Unit Under Test (UUT)
	main uut (
		.instruction(instruction),
		.RegWrite(RegWrite),
		.ALUSrc(ALUSrc),
		.ALUop(ALUop),
		.MemWrite(MemWrite),
		.MemRead(MemRead),
		.MemtoReg(MemtoReg)

	);



	initial begin

		// Initialize Inputs
		$dumpfile("example.vcd");
		$dumpvars(0,tb_v);
		instruction = 32'b00000000000100011000010000110011;
		RegWrite = 1;
		ALUSrc = 0;
		ALUop = 4'b0010;
		MemWrite = 0;
		MemRead = 1;
		MemtoReg = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		

	end
      
endmodule

