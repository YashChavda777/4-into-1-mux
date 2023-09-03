module testbench_mux4to1;

    reg a, b, c, d, s1, s2;
    wire y;

  
    mux4to1 uut (
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .s1(s1),
        .s2(s2),
        .y(y)
    );

  
    initial begin
     
        a = 1'b1;
        b = 1'b0;
        c = 1'b0;
        d = 1'b0;
        s1 = 1'b0;
        s2 = 1'b0;
        #10;  
      
     
        a = 1'b0;
        b = 1'b1;
        c = 1'b0;
        d = 1'b0;
        s1 = 1'b0;
        s2 = 1'b1;
        #10;
       
       
        a = 1'b0;
        b = 1'b0;
        c = 1'b1;
        d = 1'b0;
        s1 = 1'b1;
        s2 = 1'b0;
        #10;
        
      
        a = 1'b0;
        b = 1'b0;
        c = 1'b0;
        d = 1'b1;
        s1 = 1'b1;
        s2 = 1'b1;
        #10;
             $finish;
    end
