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

// Digital PLL (ring oscillator + controller)
// Technically this is a frequency locked loop, not a phase locked loop.

`ifndef SIM
`include "dll_controller.v"
`include "ring_osc2x13.v"
`endif

module dll(
`ifdef USE_POWER_PINS
    inout VPWR,
    inout VGND,
`endif
    input wire        resetb,      // Sense negative reset
    input wire        enable,      // Enable PLL
    input wire        osc,         // Input oscillator to match
    input wire [7:0]  div,         // PLL feedback division ratio
    input wire        dco,         // Run in DCO mode
    input wire [25:0] ext_trim,    // External trim for DCO mode
    
    output [1:0] clockp            // Two 90 degree clock phases
);

    wire [1:0]   clockp_buffer_in; // Input wires to clockp buffers
    wire [25:0]  itrim;            // Internally generated trim bits
    wire [25:0]  otrim;            // Trim bits applied to the ring oscillator
    wire         creset;           // Controller reset
    wire         ireset;           // Internal reset (external reset OR disable)

    assign ireset = ~resetb | ~enable;

    // In DCO mode: Hold controller in reset and apply external trim value

    assign itrim = (dco == 1'b0) ? otrim : ext_trim;
    assign creset = (dco == 1'b0) ? ireset : 1'b1;

    (* keep *)
    ring_osc2x13 ringosc (
        .reset(ireset),
        .trim(itrim),
        .clockp(clockp_buffer_in)
    );

    dll_controller dll_control (
        .reset(creset),
        .clock(clockp_buffer_in[0]),
        .osc(osc),
        .div(div),
        .trim(otrim)
    );

    (* dont_touch *)
    sky130_fd_sc_hd__clkbuf_16 clockp_buffer_0 (
`ifdef USE_POWER_PINS
        .VPWR(VPWR),
        .VGND(VGND),
        .VPB(VPWR),
        .VNB(VGND),
`endif
        .A(clockp_buffer_in[0]),
        .X(clockp[0])
    );

    (* dont_touch *)
    sky130_fd_sc_hd__clkbuf_16 clockp_buffer_1 (
`ifdef USE_POWER_PINS
        .VPWR(VPWR),
        .VGND(VGND),
        .VPB(VPWR),
        .VNB(VGND),
`endif
        .A(clockp_buffer_in[1]),
        .X(clockp[1])
    );

endmodule
`default_nettype wire
