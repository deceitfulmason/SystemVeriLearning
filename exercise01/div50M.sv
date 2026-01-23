module div50m(
    input logic CLK_IN,
    output logic CLK_OUT
);


always_ff @(posedge CLK_IN) begin




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