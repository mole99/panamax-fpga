// SPDX-FileCopyrightText: 2020 Efabless Corporation
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0

`timescale              1ns/1ps
`default_nettype        none

// (True) digital PLL
//
// Output goes to a trimmable ring oscillator (see documentation).
// Ring oscillator should be trimmable to above and below maximum
// ranges of the input.
//
// Input "osc" comes from a fixed clock source (e.g., crystal oscillator
// output).
//
// Input "div" is the target number of clock cycles per oscillator cycle.
// e.g., if div == 8 then this is an 8X PLL.
//
// Clock "clock" is the PLL output being trimmed.
// (NOTE:  To be done:  Pass-through enable)
//
// Algorithm:
//
// 1) Trim is done by thermometer code.  Reset to the highest value
//    in case the fastest rate clock is too fast for the logic.
//
// 2) Count the number of contiguous 1s and 0s in "osc"
//    periods of the master clock.  If the count maxes out, it does
//    not roll over.
//
// 3) Keep a running cumulative count of the total count for the last 8
//    half cycles.
//
// 4) If the accumulator is less than div, then the clock is too slow, so
//    decrease the trim code.  If the sum is greater than div, the
//    clock is too fast, so increase the trim code.  If the sum
//    is equal to div, the the trim code does not change.
//
// 5) When comparing against div, shift the accumulator by 1 bit for each
//    fractional bit of div above 2.  (e.g., if there are 3 fractional
//    bits in div, then compare {accum, 1'b0} against div).
//
// 6) Update trim at a rate slower than the accumulator updates

module dll_controller(reset, clock, osc, div, trim);
    input wire reset;
    input wire clock;
    input wire osc;
    input wire [7:0] div;                // 5 bits integer, 3 bits fractional
    output wire [25:0] trim;                // Use ring_osc2x13, with 26 trim bits

    reg [2:0] oscbuf;

    reg [5:0] count0;
    reg [5:0] count1;
    reg [5:0] count2;
    reg [5:0] count3;
    reg [5:0] count4;
    reg [5:0] count5;
    reg [5:0] count6;
    reg [5:0] count7;
    reg [5:0] count8;

    reg [8:0] accum;
    reg [7:0] tval;        // Fractional part must be > number of frac. bits in div
    wire [4:0] tint;        // Integer part of tval

    assign tint = tval[7:3];

    // Integer to thermometer code (maybe there's an algorithmic way?)
    assign trim = (tint == 5'd0)  ? 26'b0000000000000_0000000000000 :
          (tint == 5'd1)  ? 26'b0000000000000_0000000000001 :
          (tint == 5'd2)  ? 26'b0000000000000_0000001000001 :
          (tint == 5'd3)  ? 26'b0000000000000_0010001000001 :
          (tint == 5'd4)  ? 26'b0000000000000_0010001001001 :
          (tint == 5'd5)  ? 26'b0000000000000_0010101001001 :
          (tint == 5'd6)  ? 26'b0000000000000_1010101001001 :
          (tint == 5'd7)  ? 26'b0000000000000_1010101101001 :
          (tint == 5'd8)  ? 26'b0000000000000_1010101101101 :
          (tint == 5'd9)  ? 26'b0000000000000_1011101101101 :
          (tint == 5'd10) ? 26'b0000000000000_1011101111101 :
          (tint == 5'd11) ? 26'b0000000000000_1111101111101 :
          (tint == 5'd12) ? 26'b0000000000000_1111101111111 :
          (tint == 5'd13) ? 26'b0000000000000_1111111111111 :
          (tint == 5'd14) ? 26'b0000000000001_1111111111111 :
          (tint == 5'd15) ? 26'b0000001000001_1111111111111 :
          (tint == 5'd16) ? 26'b0010001000001_1111111111111 :
          (tint == 5'd17) ? 26'b0010001001001_1111111111111 :
          (tint == 5'd18) ? 26'b0010101001001_1111111111111 :
          (tint == 5'd19) ? 26'b1010101001001_1111111111111 :
          (tint == 5'd20) ? 26'b1010101101001_1111111111111 :
          (tint == 5'd21) ? 26'b1010101101101_1111111111111 :
          (tint == 5'd22) ? 26'b1011101101101_1111111111111 :
          (tint == 5'd23) ? 26'b1011101111101_1111111111111 :
          (tint == 5'd24) ? 26'b1111101111101_1111111111111 :
          (tint == 5'd25) ? 26'b1111101111111_1111111111111 :
                    26'b1111111111111_1111111111111;
   
    always @(posedge clock or posedge reset) begin
        if (reset == 1'b1) begin
            tval <= 8'd0;        // Note:  trim[0] must be zero for startup to work.
            oscbuf <= 3'd0;
            accum  <= 9'd0;
            count0 <= 6'd0;
            count1 <= 6'd0;
            count2 <= 6'd0;
            count3 <= 6'd0;
            count4 <= 6'd0;
            count5 <= 6'd0;
            count6 <= 6'd0;
            count7 <= 6'd0;
            count8 <= 6'd0;

        end else begin
            oscbuf <= {oscbuf[1:0], osc};

            if ((oscbuf[2] == 1'b1) && (oscbuf[1] == 1'b0)) begin
                count8 <= count7;
                count7 <= count6;
                count6 <= count5;
                count5 <= count4;
                count4 <= count3;
                count3 <= count2;
                count2 <= count1;
                count1 <= count0;
                count0 <= 6'd1;
                accum <= accum + count0 - count8;

                if (accum > div) begin
                    if (tval < 127) begin
                            tval <= tval + 1;
                    end
                end else if (accum < div) begin
                    if (tval > 0) begin
                            tval <= tval - 1;
                    end
                end
            end else begin
                if (count0 != 6'b111111) begin
                    count0 <= count0 + 1;
                end
            end
        end
    end

endmodule        // dll_controller
`default_nettype wire
