

module tb_v;

	// Inputs
	reg clk,reset;
	wire [63:0] pc_next;
	reg [63:0] pc;
	reg RegWrite;
	reg ALUSrc;
	reg [3:0] ALUop;
	reg MemWrite;
	reg MemRead;
	reg MemtoReg;

	// Outputs

	// Instantiate the Unit Under Test (UUT)
	main_main uut (
		.clk(clk),
		.reset(reset),
		.pc_next(pc_next),
		.pc(pc),
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
		$monitor($time, ".pc:%b pc_next:%b" ,pc,pc_next);
		clk=1;
		reset=0;
		pc=8;                 //Assign pc only multiples of 4...beacause we are converting in the Memeory.v file 
		RegWrite = 0;
		ALUSrc = 0;
		ALUop = 4'b0110;
		MemWrite = 0;
		MemRead = 0;
		MemtoReg = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		

	end
      
endmodule

