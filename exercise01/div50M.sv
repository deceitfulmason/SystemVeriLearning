module div50m(
    input logic CLK_IN,
    output logic CLK_OUT
);


always_ff @(posedge CLK_IN) begin



for (i = 0; i <= 50.000.000 - 1; i++) begin:

int i <= CLK_IN;

end






// 50mhz => 50.000.000 in one second AND 1 activation of CLK_OUT

end

/*
6. Build a frequency divider from 50MHz to 1Hz using a counter.
a) The module should be called div50M, and have a CLK_IN input and a
CLK_OUT output, both with one bit.
b) The CLK_OUT output should remain active for only 1 out of every 50M CLK_IN cycles.
c) To test, use the board's 50MHz signal as the clock source, and toggle the state
of LEDR[0] whenever CLK_OUT is true.
*/
endmodule