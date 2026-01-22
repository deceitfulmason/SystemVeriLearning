module cod16_4 (
    input logic [15:0]  X,
    output logic [3:0]       Y,
    output logic       GATE
);

    always_comb begin

       Y = 4'd0; //Initializes Y as a 4 bit value of 0 to avoid errors 

        	/*

            b) When one or more bits are active in X, 
            the output Y must provide the most significant active bit number,
            and GATE must be true.

            */

        //Since the condition is X have any active bits, all we need to do is a OR operation for
        // each bit of X.

        GATE = |X;

        if(GATE) begin

                for(int i = 15; i >= 0; i--) begin 
                    if (X[i]) begin
                            Y = i;

                            break;

                        end
                    end

        end 

    end



endmodule