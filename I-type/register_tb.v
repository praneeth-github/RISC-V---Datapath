

module tb_v;

	// Inputs
	reg [4:0] readreg1;
	reg [4:0] readreg2;
	reg [4:0] writereg;
	reg RegWrite;
	reg [63:0] writedata;

	// Outputs
	wire [63:0] readdata1;
	wire [63:0] readdata2;

	// Instantiate the Unit Under Test (UUT)
	register uut (
		.readreg1(readreg1), 
		.readreg2(readreg2), 
		.writereg(writereg),
		.RegWrite(RegWrite),
		.writedata(writedata), 
		.readdata1(readdata1), 
		.readdata2(readdata2)
	);



	initial begin
		$monitor($time, ".readreg1:%b readreg2:%b writereg:%b writedata:%b readdata1:%b readdata2:%b" ,readreg1,readreg2,writereg,writedata,readdata1,readdata2);

		// Initialize Inputs
		readreg1 = 0;
		readreg2 = 1;
		writereg = 2;
		RegWrite = 0;
		writedata = 32;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		

	end
      
endmodule

