
module PreLab3_Half_Adder(x, y, S, C);

input x, y;

// S is the first bit (LSB) C is the Carry (MSB)
output S, C;

// half adder logic gates
xor(S, x, y);
and(C, x, y);

endmodule 