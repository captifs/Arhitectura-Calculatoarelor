`timescale 1ns / 1ps

module ba_top(
    output o,           // external found ouput: 0 - not found, 1 - found
    input i,            // external char input: 0 - 'a', 1 - 'b'
    input clk,          // external clock input
    input clk50MHz);    // used for debouncing external inputs

// debounce external i input
debouncer d1(clk50MHz, i, i_clean);
// debounce external clk input
debouncer d2(clk50MHz, clk, clk_clean);

ba ba(o, i_clean, clk_clean);

endmodule
