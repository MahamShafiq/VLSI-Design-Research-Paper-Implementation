module SM(input clk1,enable,input [2:0]select,input[31:0]R1,R2,
output  [7:0] Out8,Out7,Out6,Out5,Out4,Out3,Out2,Out1
    );  	

Mux8x1 M1 (
    .a(R1[31:24]), 
    .b(R1[23:16]), 
    .c(R1[15:8]), 
    .d(R1[7:0]), 
    .e(R2[31:24]), 
    .f(R2[23:16]), 
    .g(R2[15:8]), 
    .h(R2[7:0]), 
    .sel(select), 
    .out(Out1), 
    .clk(clk1)
    );
	 Mux8x1 M2 (
    .a(R1[23:16]), 
    .b(R1[15:8]), 
    .c(R1[7:0]), 
    .d(R2[31:24]), 
    .e(R2[23:16]), 
    .f(R2[15:8]), 
    .g(R2[7:0]), 
    .h(R1[31:24]), 
    .sel(select), 
    .out(Out2), 
    .clk(clk1)
    );
	 Mux8x1 M3 (
    .a(R1[15:8]), 
    .b(R1[7:0]), 
    .c(R2[31:24]), 
    .d(R2[23:16]), 
    .e(R2[15:8]), 
    .f(R2[7:0]), 
    .g(R1[31:24]), 
    .h(R1[23:16]), 
    .sel(select), 
    .out(Out3), 
    .clk(clk1)
    );
	 Mux8x1 M4 (
    .a(R1[7:0]), 
    .b(R2[31:24]), 
    .c(R2[23:16]), 
    .d(R2[15:8]), 
    .e(R2[7:0]), 
    .f(R1[31:24]), 
    .g(R1[23:16]), 
    .h(R1[15:8]), 
    .sel(select), 
    .out(Out4), 
    .clk(clk1)
    );
	 Mux8x1 M5 (
    .a(R2[31:24]), 
    .b(R2[23:16]), 
    .c(R2[15:8]), 
    .d(R2[7:0]), 
    .e(R1[31:24]), 
    .f(R1[23:16]), 
    .g(R1[15:8]), 
    .h(R1[7:0]), 
    .sel(select), 
    .out(Out5), 
    .clk(clk1)
    );
	 Mux8x1 M6 (
    .a(R2[23:16]), 
    .b(R2[15:8]), 
    .c(R2[7:0]), 
    .d(R1[31:24]), 
    .e(R1[23:16]), 
    .f(R1[15:8]), 
    .g(R1[7:0]), 
    .h(R2[31:24]), 
    .sel(select), 
    .out(Out6), 
    .clk(clk1)
    );
	 Mux8x1 M7 (
    .a(R2[15:8]), 
    .b(R2[7:0]), 
    .c(R1[31:24]), 
    .d(R1[23:16]), 
    .e(R1[15:8]), 
    .f(R1[7:0]), 
    .g(R2[31:24]), 
    .h(R2[23:16]), 
    .sel(select), 
    .out(Out7), 
    .clk(clk1)
    );
	 Mux8x1 M8 (
    .a(R2[7:0]), 
    .b(R1[31:24]), 
    .c(R1[23:16]), 
    .d(R1[15:8]), 
    .e(R1[7:0]), 
    .f(R2[31:24]), 
    .g(R2[23:16]), 
    .h(R2[15:8]), 
    .sel(select), 
    .out(Out8), 
    .clk(clk1)
    );



endmodule
