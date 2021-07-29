module tb_v;

	// Inputs
	reg [31:0] instruction;
	wire [63:0] seinst;

	// Outputs


	// Instantiate the Unit Under Test (UUT)
	sign uut (
		.instruction(instruction),
		.seinst(seinst)
	);



	initial begin
		$monitor($time, ".instruction:%b seinst:%b " ,instruction,seinst);

		// Initialize Inputs
		instruction = 32'b00000000010011100011000100000011;


		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		

	end
      
endmodule