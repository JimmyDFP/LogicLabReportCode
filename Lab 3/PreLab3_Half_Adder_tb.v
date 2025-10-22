module PreLab3_Half_Adder_tb();

//inputs into PreLab tests
reg x, y;

wire S, C;

PreLab3_Half_Adder tg1(.x(x), .y(y), .S(S), .C(C));

initial begin

  x = 0; y = 0; #100;

  x = 0; y = 1; #100;

  x = 1; y = 0; #100;

  x = 1; y = 1; #100;

end

endmodule
