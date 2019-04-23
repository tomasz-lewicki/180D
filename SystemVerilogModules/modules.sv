module sillyfunction(   input logic a,b,c,
                        output logic y);
    assign y = ~a & ~b & ~c |
                a & ~b & ~c |
                a & ~b & c;

endmodule

module inv( input logic [0:3]a,
            output logic [0:3]y)

    assign y = ~a;

endmodule

module gates(   input logic [3:0]a, [3:0]b,
                output logic [3:0]y1, logic [3:0]y2, logic [3:0]y3, logic[3:0]y4, logic[3:0]y5)

        assign y1 = a & b;
        assign y2 = a | b;
        assign y3 = a ^ b;
        assign y4 = ~(a & b);
        assign y5 = ~(a | b);
    
endmodule

module and8(    input logic[7:0]a,
                output logic y)
        
    assign y = a[0] & a[1] & a[2] & a[3] & a[4] & a[5] & a[6] & a[7];

endmodule

//conditionals

module mux2(    input logic[3:0] d0, d1,
                input logic s,
                output logic[3:0] y);

        assign y = s? d0 : d1;

endmodule

//internal signals

module fulladder(   input logic a, b, cin,
                    output logic s, cout);

    logic p, q; // internal nodes

    assign p = a ^ b;
    assign g = a & b;

    assign s = p ^ cin;
    assign cout = g | (p & cin);

endmodule

//delays


//resettable register (async)

module flopresetableasync(   input logic clk,
                        input logic rst,
                        input logic [3:0] d,
                        input logic [3:0] q);

    always_ff @(posedge clk, posedge rst)
        if(rst) q<= 4'b0;
        else q<=d;

endmodule


module flopresetablesynch(   input logic clk,
                        input logic rst,
                        input logic [3:0] d,
                        input logic [3:0] q);

    always_ff @(posedge clk)
        if(rst) q<= 4'b0;
        else q<=d;

endmodule

