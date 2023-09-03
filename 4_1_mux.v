module mux4to1 (
    input wire a,
    input wire b,
    input wire c,
    input wire d,
    input wire s1,
    input wire s2,
    output wire y
);

    assign y = (s1 & s2) ? d :
              (s1 & ~s2) ? c :
              (~s1 & s2) ? b :
              (~s1 & ~s2) ? a :
              1'bz;  

endmodule


