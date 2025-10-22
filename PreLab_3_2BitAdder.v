
module PreLab_3_2BitAdder(x_0, x_1, y_0, y_1, S, C_1, C_2);

//Inputs 2 bits from x, x_0 and x_1 and the 2 from y
input x_0, x_1, y_0, y_1;

// S is the first bit, C_1 is the first carry C_2 is the second
output S, C_1, C_2;

// 
    wire C_0, HalfC_1, and_xy1, and_xC1, and_yC1;

//first half adder
xor(S, x_0, y_0);
and(C_0, x_0, y_0);

//then Full adder with x_1, y_1 and the carry from the half adder (C_0)

/*I have to split the first Carry into 2 Xor gates because Im getting odd numbers
  When I dont*/
xor (HalfC_1, x_1, y_1);
xor(C_1, HalfC_1, C_0);
and(and_xy1, x_1, y_1);
and(and_xC1, x_1, C_0);
and(andyC1, y_1, C_0);
or(C_2, and_xy1, and_xC1, andyC1);

endmodule 