module tb_mux;

        reg i0,i1,i2,i3;
        reg s0,s1;
        wire y;
        
        mux_4_1 M1(.i0(i0),.i1(i1),.i2(i2),.i3(i3),.s0(s0),.s1(s1),.y(y));
        
            initial begin
            i0 = 1; i1 = 0; i2 = 1; i3 = 0;
            s1 = 1'b0; s0 = 1'b0;
            #100;
            s1 = 1'b0; s0 = 1'b1;
            #100;
            s1 = 1'b1; s0 = 1'b0;
            #100;
            s1 = 1'b1; s0 = 1'b1;
            
            end
endmodule
