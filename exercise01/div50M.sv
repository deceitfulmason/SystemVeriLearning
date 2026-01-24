module div50M(
    input logic CLK_IN,
    output logic CLK_OUT
);


logic [25:0] counter; //this variable is used so we increment the value of the register
//the value 50.000.000 can fit into 25 bits.


always_ff @(posedge CLK_IN) begin


        if(counter >= 50000000-1) 
    begin
CLK_OUT <= 1'b1;
counter <= 0;
    end
        else
    begin
counter <= counter +1;
CLK_OUT <= 1'b0;
    end






// 50mhz => 50.000.000 in one second AND 1 activation of CLK_OUT

end

endmodule