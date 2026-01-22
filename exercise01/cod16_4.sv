module cod16_4 (
    logic input [15:0]  X,
    logic output        Y,
    logic output        GATE
);

    always_comb begin

       Y = 4'b0000 //Initializes Y as a 4 bit value of 0 to avoid errors 

        	/*

            b) When one or more bits are active in X, 
            the output Y must provide the most significant active bit number,
            and GATE must be true.

            */

        //Since the condition is X have any active bits, all we need to do is a OR operation for
        // each bit of X.

        GATE = |X;

        casex(x)
            16'b1xxxxxxxxxxxxxxx:   Y = 4'b1111;  
		    16'b01xxxxxxxxxxxxxx:   Y = 4'b1110;
		    16'b001zzzzzzzzzzzzz:   Y = 4'b1101;
		    16'b0001zzzzzzzzzzzz:   Y = 4'b1100;
		    16'b00001zzzzzzzzzzz:   Y = 4'b1011;
		    16'b000001zzzzzzzzzz:   Y = 4'b1010;
		    16'b0000001zzzzzzzzz:   Y = 4'b1001;
		    16'b00000001zzzzzzzz:   Y = 4'b1000;
		    16'b000000001zzzzzzz:   Y = 4'b0111;
		    16'b0000000001zzzzzz:   Y = 4'b0110;
		    16'b00000000001zzzzz:   Y = 4'b0101;
		    16'b000000000001zzzz:   Y = 4'b0100;
		    16'b0000000000001zzz:   Y = 4'b0011;
		    16'b00000000000001zz:   Y = 4'b0010;
		    16'b0000000000000001:   Y = 4'b0001;
		    16'b0000000000000000:   Y = 4'b0000;
        endcase    

    end



endmodule