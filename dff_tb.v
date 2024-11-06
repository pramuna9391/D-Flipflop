module tb_dff;
  reg clk;
  reg d;
  wire q;
  dff uut (
    .clk(clk),
    .d(d),
    .q(q)
  );

  initial begin
    clk = 0;
    forever #5 clk = ~clk; 
  end
  initial begin
    d = 0;
    #10 d = 1; 
    #10 d = 0; 
    #10 d = 1;
    #10 d = 0; 
    #20 $finish;
  end
endmodule
