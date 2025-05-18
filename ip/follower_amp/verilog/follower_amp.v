`default_nettype none
 
/// sta-blackbox
`ifdef FUNCTIONAL // i.e., behavioral model below
module follower_amp (
`ifdef USE_POWER_PINS
    inout       vdd,
    inout       vss,
    inout       vsub,
`endif
    input  real in,
    output real out,
    
    input       ena
);
    initial begin
        out <= 0;
    end

    always @* begin
        if (ena == 1'b1) begin
            out <= in;
        end
    end

endmodule

`else // FUNCTIONAL

module follower_amp (
`ifdef USE_POWER_PINS
    inout       vdd,
    inout       vss,
    inout       vsub,
    
    inout       in,
    inout       out,
`endif
    
    input       ena
);

endmodule

`endif

`default_nettype wire
