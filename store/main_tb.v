

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
		instruction = 32'b00000000001100001000000010110011;
		RegWrite = 0;
		ALUSrc = 1;
		ALUop = 4'b0010;
		MemWrite = 1;
		MemRead = 0;
		MemtoReg = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		

	end
      
endmodule

