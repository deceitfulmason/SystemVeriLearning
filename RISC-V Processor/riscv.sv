module riscv(
);

// ====================== SINAIS INTERNOS ============================


// CONTROL UNIT - Sinais Internos
// Entradas


logic [6:0] op;
logic [3:0] funct3;
logic funct7;
logic zero;

// Saidas CONTROL UNIT

logic PCSrc, ResultSrc, MemWrite, ALUSrc,  RegWrite;
logic [2:0] ALUControl;
logic [1:0]immSrc;

// PC - Sinais internos
logic [31:0] PCNext, PC, PCPlus4, PCTarget;


// INSTRUCTION MEMORY - Sinais Internos
logic [31:0] Instr ;
logic [31:0] instrMem [31:0];

// REGISTER FILE - Sinais Internos
logic [31:0] registerFile [31:0]; // o array
logic [31:0] SrcA, SrcB;          // as saídas RD1 e RD2


// ALU - Sinais Internos

logic zero;
logic [31:0]  ALUResult;

// DATA MEMORY - Saidas
logic [31:0] ReadData;  


// EXTEND - Saidas
logic ImmExt;


// =========================== MODULOS =======================
	//  CONTROL  UNIT
	

	// PC
	always_ff@(posedge CLK)
	begin
	PC <= PCNext;
	end


	//mux do pc
	always_comb
	begin
	if(PCSrc)
	PCNext = PCTarget;
	else
	PCNext = PCPlus4;
	end

	// pc plus 4
	always_comb
	begin
	PCPlus4 = PC + 4;
	end

	//INSTRUCTION MEMORY

	always_comb
	begin
		Instr = instrMem[pc >> 2];
	end
	
	
	//REGISTER FILE
	assign SrcA = registerFile[instr[19:15]];
	
	always_comb
	begin
			if(ALUSrc)
			ScrB = ImmExt;
			else
			SrcB = registerFile[instr[24:20]];
	end
	
	// EXTEND
	ImmExt = Instr[31:7]
	
	// PC TARGET
	always_comb begin
		PCTarget = PC + ImmExt;
	endcase
		
	//ALU
	
	//ALU Source
	always_comb
	begin
		
	end
	
	always_comb begin
		case (ALUControl)
			3'b000: ALUResult = SRcA + SRcB;   // add
			3'b001: ALUResult = SRcA - SRcB;   // sub
			3'b010: ALUResult = SRcA & SRcB;   // and
			3'b011: ALUResult = SRcA | SRcB;   // or
			3'b101: ALUResult = ($signed(SrCA) < $signed(SrcB)) ? 32'd1 : 32'd0;
	end
	
	// DATA MEMORY
	always_ff@(posedge CLK)
	begin
		
	end

endmodule	