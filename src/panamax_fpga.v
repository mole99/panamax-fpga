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

`timescale 			1ns/1ps
`default_nettype 	none

module panamax_fpga (
    // All top-level I/O are package-facing pins
    
    // TODO
    inout wire VPWR,
    inout wire VGND,
    
    // PWR
    inout wire vccd0_0,
    inout wire vccd0_1,
    inout wire vccd1_0,
    inout wire vccd1_1,
    inout wire vccd1_2,
    inout wire vccd2_0,
    inout wire vccd2_1,
    inout wire vccd2_2,
    inout wire vdda0_0,
    inout wire vdda1_0,
    inout wire vdda1_1,
    inout wire vdda2_0,
    inout wire vdda2_1,
    inout wire vdda3_0,
    inout wire vssd0_0,
    inout wire vssd0_1,
    inout wire vssd1_0,
    inout wire vssd1_1,
    inout wire vssd1_2,
    inout wire vssd2_0,
    inout wire vssd2_1,
    inout wire vssd2_2,
    inout wire vssa0_0,
    inout wire vssa1_0,
    inout wire vssa1_1,
    inout wire vssa2_0,
    inout wire vssa2_1,
    inout wire vssa3_0,
    inout wire vddio_0,
    inout wire vddio_1,
    inout wire vddio_2,
    inout wire vddio_3,
    inout wire vddio_4,
    inout wire vddio_5,
    inout wire vddio_6,
    inout wire vddio_7,
    inout wire vddio_8,
    inout wire vddio_9,
    inout wire vssio_0,
    inout wire vssio_1,
    inout wire vssio_2,
    inout wire vssio_3,
    inout wire vssio_4,
    inout wire vssio_5,
    inout wire vssio_6,
    inout wire vssio_7,
    inout wire vssio_8,
    inout wire vssio_9,
    // crystal oscillators
    inout wire xi0,
    inout wire xo0,
    inout wire xi1,
    inout wire xo1,
    // reset
    input wire resetb,
    //
    inout wire select,
    inout wire sio0,
    inout wire sio1,
    inout wire analog_1,
    inout wire analog_0,
    // gpio
    inout wire gpio0_0,
    inout wire gpio0_1,
    inout wire gpio0_2,
    inout wire gpio0_3,
    inout wire gpio0_4,
    inout wire gpio0_5,
    inout wire gpio0_6,
    inout wire gpio0_7,
    inout wire gpio1_0,
    inout wire gpio1_1,
    inout wire gpio1_2,
    inout wire gpio1_3,
    inout wire gpio1_4,
    inout wire gpio1_5,
    inout wire gpio1_6,
    inout wire gpio1_7,
    inout wire gpio2_0,
    inout wire gpio2_1,
    inout wire gpio2_2,
    inout wire gpio2_3,
    inout wire gpio2_4,
    inout wire gpio2_5,
    inout wire gpio2_6,
    inout wire gpio2_7,
    inout wire gpio3_0,
    inout wire gpio3_1,
    inout wire gpio3_2,
    inout wire gpio3_3,
    inout wire gpio3_4,
    inout wire gpio3_5,
    inout wire gpio3_6,
    inout wire gpio3_7,
    inout wire gpio4_0,
    inout wire gpio4_1,
    inout wire gpio4_2,
    inout wire gpio4_3,
    inout wire gpio4_4,
    inout wire gpio4_5,
    inout wire gpio4_6,
    inout wire gpio4_7,
    inout wire gpio5_0,
    inout wire gpio5_1,
    inout wire gpio5_2,
    inout wire gpio5_3,
    inout wire gpio5_4,
    inout wire gpio5_5,
    inout wire gpio5_6,
    inout wire gpio5_7,
    inout wire gpio6_0,
    inout wire gpio6_1,
    inout wire gpio6_2,
    inout wire gpio6_3,
    inout wire gpio6_4,
    inout wire gpio6_5,
    inout wire gpio6_6,
    inout wire gpio6_7,
    inout wire gpio7_0,
    inout wire gpio7_1,
    inout wire gpio7_2,
    inout wire gpio7_3,
    inout wire gpio7_4,
    inout wire gpio7_5,
    inout wire gpio7_6,
    inout wire gpio7_7,
    inout wire gpio8_0,
    inout wire gpio8_1,
    inout wire gpio8_2,
    inout wire gpio8_3,
    inout wire gpio8_4,
    inout wire gpio8_5,
    inout wire gpio8_6,
    inout wire gpio8_7
);
    // wires
    wire	[7:0] product_id;
    wire	[31:0] project_id;

    wire [1:0] gpio1_0_ib_mode_sel;
    wire [1:0] gpio1_0_slew_ctl;
    wire [1:0] gpio1_1_ib_mode_sel;
    wire [1:0] gpio1_1_slew_ctl;
    wire [1:0] gpio1_2_ib_mode_sel;
    wire [1:0] gpio1_2_slew_ctl;
    wire [1:0] gpio1_3_ib_mode_sel;
    wire [1:0] gpio1_3_slew_ctl;
    wire [1:0] gpio1_4_ib_mode_sel;
    wire [1:0] gpio1_4_slew_ctl;
    wire [1:0] gpio1_5_ib_mode_sel;
    wire [1:0] gpio1_5_slew_ctl;
    wire [1:0] gpio1_6_ib_mode_sel;
    wire [1:0] gpio1_6_slew_ctl;
    wire [1:0] gpio1_7_ib_mode_sel;
    wire [1:0] gpio1_7_slew_ctl;
    wire [1:0] gpio6_0_ib_mode_sel;
    wire [1:0] gpio6_0_slew_ctl;
    wire [1:0] gpio6_1_ib_mode_sel;
    wire [1:0] gpio6_1_slew_ctl;
    wire [1:0] gpio6_2_ib_mode_sel;
    wire [1:0] gpio6_2_slew_ctl;
    wire [1:0] gpio6_3_ib_mode_sel;
    wire [1:0] gpio6_3_slew_ctl;
    wire [1:0] gpio6_4_ib_mode_sel;
    wire [1:0] gpio6_4_slew_ctl;
    wire [1:0] gpio6_5_ib_mode_sel;
    wire [1:0] gpio6_5_slew_ctl;
    wire [1:0] gpio6_6_ib_mode_sel;
    wire [1:0] gpio6_6_slew_ctl;
    wire [1:0] gpio6_7_ib_mode_sel;
    wire [1:0] gpio6_7_slew_ctl;
    wire [1:0] sio_hld_h_n;
    wire [1:0] sio_hld_ovr;
    wire [1:0] sio_ibuf_sel;
    wire [1:0] sio_in;
    wire [1:0] sio_in_h;
    wire [1:0] sio_inp_dis;
    wire [1:0] sio_oe_n;
    wire [1:0] sio_out;
    wire [1:0] sio_pad_a_esd_0_h;
    wire [1:0] sio_pad_a_esd_1_h;
    wire [1:0] sio_pad_a_noesd_h;
    wire [1:0] sio_slow;
    wire [1:0] sio_tie_lo_esd;
    wire [1:0] sio_vref_sel;
    wire [1:0] sio_vreg_en;
    wire [1:0] sio_vtrip_sel;
    wire [2:0] gpio0_0_dm;
    wire [2:0] gpio0_1_dm;
    wire [2:0] gpio0_2_dm;
    wire [2:0] gpio0_3_dm;
    wire [2:0] gpio0_4_dm;
    wire [2:0] gpio0_5_dm;
    wire [2:0] gpio0_6_dm;
    wire [2:0] gpio0_7_dm;
    wire [2:0] gpio1_0_dm;
    wire [2:0] gpio1_1_dm;
    wire [2:0] gpio1_2_dm;
    wire [2:0] gpio1_3_dm;
    wire [2:0] gpio1_4_dm;
    wire [2:0] gpio1_5_dm;
    wire [2:0] gpio1_6_dm;
    wire [2:0] gpio1_7_dm;
    wire [2:0] gpio2_0_dm;
    wire [2:0] gpio2_1_dm;
    wire [2:0] gpio2_2_dm;
    wire [2:0] gpio2_3_dm;
    wire [2:0] gpio2_4_dm;
    wire [2:0] gpio2_5_dm;
    wire [2:0] gpio2_6_dm;
    wire [2:0] gpio2_7_dm;
    wire [2:0] gpio3_0_dm;
    wire [2:0] gpio3_1_dm;
    wire [2:0] gpio3_2_dm;
    wire [2:0] gpio3_3_dm;
    wire [2:0] gpio3_4_dm;
    wire [2:0] gpio3_5_dm;
    wire [2:0] gpio3_6_dm;
    wire [2:0] gpio3_7_dm;
    wire [2:0] gpio4_0_dm;
    wire [2:0] gpio4_1_dm;
    wire [2:0] gpio4_2_dm;
    wire [2:0] gpio4_3_dm;
    wire [2:0] gpio4_4_dm;
    wire [2:0] gpio4_5_dm;
    wire [2:0] gpio4_6_dm;
    wire [2:0] gpio4_7_dm;
    wire [2:0] gpio5_0_dm;
    wire [2:0] gpio5_1_dm;
    wire [2:0] gpio5_2_dm;
    wire [2:0] gpio5_3_dm;
    wire [2:0] gpio5_4_dm;
    wire [2:0] gpio5_5_dm;
    wire [2:0] gpio5_6_dm;
    wire [2:0] gpio5_7_dm;
    wire [2:0] gpio6_0_dm;
    wire [2:0] gpio6_1_dm;
    wire [2:0] gpio6_2_dm;
    wire [2:0] gpio6_3_dm;
    wire [2:0] gpio6_4_dm;
    wire [2:0] gpio6_5_dm;
    wire [2:0] gpio6_6_dm;
    wire [2:0] gpio6_7_dm;
    wire [2:0] gpio7_0_dm;
    wire [2:0] gpio7_1_dm;
    wire [2:0] gpio7_2_dm;
    wire [2:0] gpio7_3_dm;
    wire [2:0] gpio7_4_dm;
    wire [2:0] gpio7_5_dm;
    wire [2:0] gpio7_6_dm;
    wire [2:0] gpio7_7_dm;
    wire [2:0] gpio8_0_dm;
    wire [2:0] gpio8_1_dm;
    wire [2:0] gpio8_2_dm;
    wire [2:0] gpio8_3_dm;
    wire [2:0] gpio8_4_dm;
    wire [2:0] gpio8_5_dm;
    wire [2:0] gpio8_6_dm;
    wire [2:0] gpio8_7_dm;
    wire [2:0] select_dm;
    wire [2:0] sio_dm0;
    wire [2:0] sio_dm1;
    wire [2:0] sio_voh_sel;
    wire [4:0] vref_e_ref_sel;
    wire [4:0] vref_w_ref_sel;
    wire amuxbus_a_n;
    wire amuxbus_b_n;
    wire analog_0_core;
    wire analog_1_core;
    wire gpio0_0_analog_en;
    wire gpio0_0_analog_pol;
    wire gpio0_0_analog_sel;
    wire gpio0_0_enable_h;
    wire gpio0_0_enable_inp_h;
    wire gpio0_0_enable_vdda_h;
    wire gpio0_0_enable_vddio;
    wire gpio0_0_enable_vswitch_h;
    wire gpio0_0_hld_h_n;
    wire gpio0_0_hld_ovr;
    wire gpio0_0_ib_mode_sel;
    wire gpio0_0_in;
    wire gpio0_0_in_h;
    wire gpio0_0_inp_dis;
    wire gpio0_0_oe_n;
    wire gpio0_0_one;
    wire gpio0_0_out;
    wire gpio0_0_pad_a_esd_0_h;
    wire gpio0_0_pad_a_esd_1_h;
    wire gpio0_0_pad_a_noesd_h;
    wire gpio0_0_slow;
    wire gpio0_0_tie_hi_esd;
    wire gpio0_0_tie_lo_esd;
    wire gpio0_0_vtrip_sel;
    wire gpio0_0_zero;
    wire gpio0_1_analog_en;
    wire gpio0_1_analog_pol;
    wire gpio0_1_analog_sel;
    wire gpio0_1_enable_h;
    wire gpio0_1_enable_inp_h;
    wire gpio0_1_enable_vdda_h;
    wire gpio0_1_enable_vddio;
    wire gpio0_1_enable_vswitch_h;
    wire gpio0_1_hld_h_n;
    wire gpio0_1_hld_ovr;
    wire gpio0_1_ib_mode_sel;
    wire gpio0_1_in;
    wire gpio0_1_in_h;
    wire gpio0_1_inp_dis;
    wire gpio0_1_oe_n;
    wire gpio0_1_one;
    wire gpio0_1_out;
    wire gpio0_1_pad_a_esd_0_h;
    wire gpio0_1_pad_a_esd_1_h;
    wire gpio0_1_pad_a_noesd_h;
    wire gpio0_1_slow;
    wire gpio0_1_tie_hi_esd;
    wire gpio0_1_tie_lo_esd;
    wire gpio0_1_vtrip_sel;
    wire gpio0_1_zero;
    wire gpio0_2_analog_en;
    wire gpio0_2_analog_pol;
    wire gpio0_2_analog_sel;
    wire gpio0_2_enable_h;
    wire gpio0_2_enable_inp_h;
    wire gpio0_2_enable_vdda_h;
    wire gpio0_2_enable_vddio;
    wire gpio0_2_enable_vswitch_h;
    wire gpio0_2_hld_h_n;
    wire gpio0_2_hld_ovr;
    wire gpio0_2_ib_mode_sel;
    wire gpio0_2_in;
    wire gpio0_2_in_h;
    wire gpio0_2_inp_dis;
    wire gpio0_2_oe_n;
    wire gpio0_2_one;
    wire gpio0_2_out;
    wire gpio0_2_pad_a_esd_0_h;
    wire gpio0_2_pad_a_esd_1_h;
    wire gpio0_2_pad_a_noesd_h;
    wire gpio0_2_slow;
    wire gpio0_2_tie_hi_esd;
    wire gpio0_2_tie_lo_esd;
    wire gpio0_2_vtrip_sel;
    wire gpio0_2_zero;
    wire gpio0_3_analog_en;
    wire gpio0_3_analog_pol;
    wire gpio0_3_analog_sel;
    wire gpio0_3_enable_h;
    wire gpio0_3_enable_inp_h;
    wire gpio0_3_enable_vdda_h;
    wire gpio0_3_enable_vddio;
    wire gpio0_3_enable_vswitch_h;
    wire gpio0_3_hld_h_n;
    wire gpio0_3_hld_ovr;
    wire gpio0_3_ib_mode_sel;
    wire gpio0_3_in;
    wire gpio0_3_in_h;
    wire gpio0_3_inp_dis;
    wire gpio0_3_oe_n;
    wire gpio0_3_one;
    wire gpio0_3_out;
    wire gpio0_3_pad_a_esd_0_h;
    wire gpio0_3_pad_a_esd_1_h;
    wire gpio0_3_pad_a_noesd_h;
    wire gpio0_3_slow;
    wire gpio0_3_tie_hi_esd;
    wire gpio0_3_tie_lo_esd;
    wire gpio0_3_vtrip_sel;
    wire gpio0_3_zero;
    wire gpio0_4_analog_en;
    wire gpio0_4_analog_pol;
    wire gpio0_4_analog_sel;
    wire gpio0_4_enable_h;
    wire gpio0_4_enable_inp_h;
    wire gpio0_4_enable_vdda_h;
    wire gpio0_4_enable_vddio;
    wire gpio0_4_enable_vswitch_h;
    wire gpio0_4_hld_h_n;
    wire gpio0_4_hld_ovr;
    wire gpio0_4_ib_mode_sel;
    wire gpio0_4_in;
    wire gpio0_4_in_h;
    wire gpio0_4_inp_dis;
    wire gpio0_4_oe_n;
    wire gpio0_4_one;
    wire gpio0_4_out;
    wire gpio0_4_pad_a_esd_0_h;
    wire gpio0_4_pad_a_esd_1_h;
    wire gpio0_4_pad_a_noesd_h;
    wire gpio0_4_slow;
    wire gpio0_4_tie_hi_esd;
    wire gpio0_4_tie_lo_esd;
    wire gpio0_4_vtrip_sel;
    wire gpio0_4_zero;
    wire gpio0_5_analog_en;
    wire gpio0_5_analog_pol;
    wire gpio0_5_analog_sel;
    wire gpio0_5_enable_h;
    wire gpio0_5_enable_inp_h;
    wire gpio0_5_enable_vdda_h;
    wire gpio0_5_enable_vddio;
    wire gpio0_5_enable_vswitch_h;
    wire gpio0_5_hld_h_n;
    wire gpio0_5_hld_ovr;
    wire gpio0_5_ib_mode_sel;
    wire gpio0_5_in;
    wire gpio0_5_in_h;
    wire gpio0_5_inp_dis;
    wire gpio0_5_oe_n;
    wire gpio0_5_one;
    wire gpio0_5_out;
    wire gpio0_5_pad_a_esd_0_h;
    wire gpio0_5_pad_a_esd_1_h;
    wire gpio0_5_pad_a_noesd_h;
    wire gpio0_5_slow;
    wire gpio0_5_tie_hi_esd;
    wire gpio0_5_tie_lo_esd;
    wire gpio0_5_vtrip_sel;
    wire gpio0_5_zero;
    wire gpio0_6_analog_en;
    wire gpio0_6_analog_pol;
    wire gpio0_6_analog_sel;
    wire gpio0_6_enable_h;
    wire gpio0_6_enable_inp_h;
    wire gpio0_6_enable_vdda_h;
    wire gpio0_6_enable_vddio;
    wire gpio0_6_enable_vswitch_h;
    wire gpio0_6_hld_h_n;
    wire gpio0_6_hld_ovr;
    wire gpio0_6_ib_mode_sel;
    wire gpio0_6_in;
    wire gpio0_6_in_h;
    wire gpio0_6_inp_dis;
    wire gpio0_6_oe_n;
    wire gpio0_6_one;
    wire gpio0_6_out;
    wire gpio0_6_pad_a_esd_0_h;
    wire gpio0_6_pad_a_esd_1_h;
    wire gpio0_6_pad_a_noesd_h;
    wire gpio0_6_slow;
    wire gpio0_6_tie_hi_esd;
    wire gpio0_6_tie_lo_esd;
    wire gpio0_6_vtrip_sel;
    wire gpio0_6_zero;
    wire gpio0_7_analog_en;
    wire gpio0_7_analog_pol;
    wire gpio0_7_analog_sel;
    wire gpio0_7_enable_h;
    wire gpio0_7_enable_inp_h;
    wire gpio0_7_enable_vdda_h;
    wire gpio0_7_enable_vddio;
    wire gpio0_7_enable_vswitch_h;
    wire gpio0_7_hld_h_n;
    wire gpio0_7_hld_ovr;
    wire gpio0_7_ib_mode_sel;
    wire gpio0_7_in;
    wire gpio0_7_in_h;
    wire gpio0_7_inp_dis;
    wire gpio0_7_oe_n;
    wire gpio0_7_one;
    wire gpio0_7_out;
    wire gpio0_7_pad_a_esd_0_h;
    wire gpio0_7_pad_a_esd_1_h;
    wire gpio0_7_pad_a_noesd_h;
    wire gpio0_7_slow;
    wire gpio0_7_tie_hi_esd;
    wire gpio0_7_tie_lo_esd;
    wire gpio0_7_vtrip_sel;
    wire gpio0_7_zero;
    wire gpio1_0_analog_en;
    wire gpio1_0_analog_pol;
    wire gpio1_0_analog_sel;
    wire gpio1_0_enable_h;
    wire gpio1_0_enable_inp_h;
    wire gpio1_0_enable_vdda_h;
    wire gpio1_0_enable_vddio;
    wire gpio1_0_enable_vswitch_h;
    wire gpio1_0_hld_h_n;
    wire gpio1_0_hld_ovr;
    wire gpio1_0_hys_trim;
    wire gpio1_0_in;
    wire gpio1_0_in_h;
    wire gpio1_0_inp_dis;
    wire gpio1_0_oe_n;
    wire gpio1_0_one;
    wire gpio1_0_out;
    wire gpio1_0_pad_a_esd_0_h;
    wire gpio1_0_pad_a_esd_1_h;
    wire gpio1_0_pad_a_noesd_h;
    wire gpio1_0_slow;
    wire gpio1_0_tie_hi_esd;
    wire gpio1_0_tie_lo_esd;
    wire gpio1_0_vtrip_sel;
    wire gpio1_0_zero;
    wire gpio1_1_analog_en;
    wire gpio1_1_analog_pol;
    wire gpio1_1_analog_sel;
    wire gpio1_1_enable_h;
    wire gpio1_1_enable_inp_h;
    wire gpio1_1_enable_vdda_h;
    wire gpio1_1_enable_vddio;
    wire gpio1_1_enable_vswitch_h;
    wire gpio1_1_hld_h_n;
    wire gpio1_1_hld_ovr;
    wire gpio1_1_hys_trim;
    wire gpio1_1_in;
    wire gpio1_1_in_h;
    wire gpio1_1_inp_dis;
    wire gpio1_1_oe_n;
    wire gpio1_1_one;
    wire gpio1_1_out;
    wire gpio1_1_pad_a_esd_0_h;
    wire gpio1_1_pad_a_esd_1_h;
    wire gpio1_1_pad_a_noesd_h;
    wire gpio1_1_slow;
    wire gpio1_1_tie_hi_esd;
    wire gpio1_1_tie_lo_esd;
    wire gpio1_1_vtrip_sel;
    wire gpio1_1_zero;
    wire gpio1_2_analog_en;
    wire gpio1_2_analog_pol;
    wire gpio1_2_analog_sel;
    wire gpio1_2_enable_h;
    wire gpio1_2_enable_inp_h;
    wire gpio1_2_enable_vdda_h;
    wire gpio1_2_enable_vddio;
    wire gpio1_2_enable_vswitch_h;
    wire gpio1_2_hld_h_n;
    wire gpio1_2_hld_ovr;
    wire gpio1_2_hys_trim;
    wire gpio1_2_in;
    wire gpio1_2_in_h;
    wire gpio1_2_inp_dis;
    wire gpio1_2_oe_n;
    wire gpio1_2_one;
    wire gpio1_2_out;
    wire gpio1_2_pad_a_esd_0_h;
    wire gpio1_2_pad_a_esd_1_h;
    wire gpio1_2_pad_a_noesd_h;
    wire gpio1_2_slow;
    wire gpio1_2_tie_hi_esd;
    wire gpio1_2_tie_lo_esd;
    wire gpio1_2_vtrip_sel;
    wire gpio1_2_zero;
    wire gpio1_3_analog_en;
    wire gpio1_3_analog_pol;
    wire gpio1_3_analog_sel;
    wire gpio1_3_enable_h;
    wire gpio1_3_enable_inp_h;
    wire gpio1_3_enable_vdda_h;
    wire gpio1_3_enable_vddio;
    wire gpio1_3_enable_vswitch_h;
    wire gpio1_3_hld_h_n;
    wire gpio1_3_hld_ovr;
    wire gpio1_3_hys_trim;
    wire gpio1_3_in;
    wire gpio1_3_in_h;
    wire gpio1_3_inp_dis;
    wire gpio1_3_oe_n;
    wire gpio1_3_one;
    wire gpio1_3_out;
    wire gpio1_3_pad_a_esd_0_h;
    wire gpio1_3_pad_a_esd_1_h;
    wire gpio1_3_pad_a_noesd_h;
    wire gpio1_3_slow;
    wire gpio1_3_tie_hi_esd;
    wire gpio1_3_tie_lo_esd;
    wire gpio1_3_vtrip_sel;
    wire gpio1_3_zero;
    wire gpio1_4_analog_en;
    wire gpio1_4_analog_pol;
    wire gpio1_4_analog_sel;
    wire gpio1_4_enable_h;
    wire gpio1_4_enable_inp_h;
    wire gpio1_4_enable_vdda_h;
    wire gpio1_4_enable_vddio;
    wire gpio1_4_enable_vswitch_h;
    wire gpio1_4_hld_h_n;
    wire gpio1_4_hld_ovr;
    wire gpio1_4_hys_trim;
    wire gpio1_4_in;
    wire gpio1_4_in_h;
    wire gpio1_4_inp_dis;
    wire gpio1_4_oe_n;
    wire gpio1_4_one;
    wire gpio1_4_out;
    wire gpio1_4_pad_a_esd_0_h;
    wire gpio1_4_pad_a_esd_1_h;
    wire gpio1_4_pad_a_noesd_h;
    wire gpio1_4_slow;
    wire gpio1_4_tie_hi_esd;
    wire gpio1_4_tie_lo_esd;
    wire gpio1_4_vtrip_sel;
    wire gpio1_4_zero;
    wire gpio1_5_analog_en;
    wire gpio1_5_analog_pol;
    wire gpio1_5_analog_sel;
    wire gpio1_5_enable_h;
    wire gpio1_5_enable_inp_h;
    wire gpio1_5_enable_vdda_h;
    wire gpio1_5_enable_vddio;
    wire gpio1_5_enable_vswitch_h;
    wire gpio1_5_hld_h_n;
    wire gpio1_5_hld_ovr;
    wire gpio1_5_hys_trim;
    wire gpio1_5_in;
    wire gpio1_5_in_h;
    wire gpio1_5_inp_dis;
    wire gpio1_5_oe_n;
    wire gpio1_5_one;
    wire gpio1_5_out;
    wire gpio1_5_pad_a_esd_0_h;
    wire gpio1_5_pad_a_esd_1_h;
    wire gpio1_5_pad_a_noesd_h;
    wire gpio1_5_slow;
    wire gpio1_5_tie_hi_esd;
    wire gpio1_5_tie_lo_esd;
    wire gpio1_5_vtrip_sel;
    wire gpio1_5_zero;
    wire gpio1_6_analog_en;
    wire gpio1_6_analog_pol;
    wire gpio1_6_analog_sel;
    wire gpio1_6_enable_h;
    wire gpio1_6_enable_inp_h;
    wire gpio1_6_enable_vdda_h;
    wire gpio1_6_enable_vddio;
    wire gpio1_6_enable_vswitch_h;
    wire gpio1_6_hld_h_n;
    wire gpio1_6_hld_ovr;
    wire gpio1_6_hys_trim;
    wire gpio1_6_in;
    wire gpio1_6_in_h;
    wire gpio1_6_inp_dis;
    wire gpio1_6_oe_n;
    wire gpio1_6_one;
    wire gpio1_6_out;
    wire gpio1_6_pad_a_esd_0_h;
    wire gpio1_6_pad_a_esd_1_h;
    wire gpio1_6_pad_a_noesd_h;
    wire gpio1_6_slow;
    wire gpio1_6_tie_hi_esd;
    wire gpio1_6_tie_lo_esd;
    wire gpio1_6_vtrip_sel;
    wire gpio1_6_zero;
    wire gpio1_7_analog_en;
    wire gpio1_7_analog_pol;
    wire gpio1_7_analog_sel;
    wire gpio1_7_enable_h;
    wire gpio1_7_enable_inp_h;
    wire gpio1_7_enable_vdda_h;
    wire gpio1_7_enable_vddio;
    wire gpio1_7_enable_vswitch_h;
    wire gpio1_7_hld_h_n;
    wire gpio1_7_hld_ovr;
    wire gpio1_7_hys_trim;
    wire gpio1_7_in;
    wire gpio1_7_in_h;
    wire gpio1_7_inp_dis;
    wire gpio1_7_oe_n;
    wire gpio1_7_one;
    wire gpio1_7_out;
    wire gpio1_7_pad_a_esd_0_h;
    wire gpio1_7_pad_a_esd_1_h;
    wire gpio1_7_pad_a_noesd_h;
    wire gpio1_7_slow;
    wire gpio1_7_tie_hi_esd;
    wire gpio1_7_tie_lo_esd;
    wire gpio1_7_vtrip_sel;
    wire gpio1_7_zero;
    wire gpio2_0_analog_en;
    wire gpio2_0_analog_pol;
    wire gpio2_0_analog_sel;
    wire gpio2_0_enable_h;
    wire gpio2_0_enable_inp_h;
    wire gpio2_0_enable_vdda_h;
    wire gpio2_0_enable_vddio;
    wire gpio2_0_enable_vswitch_h;
    wire gpio2_0_hld_h_n;
    wire gpio2_0_hld_ovr;
    wire gpio2_0_ib_mode_sel;
    wire gpio2_0_in;
    wire gpio2_0_in_h;
    wire gpio2_0_inp_dis;
    wire gpio2_0_oe_n;
    wire gpio2_0_one;
    wire gpio2_0_out;
    wire gpio2_0_pad_a_esd_0_h;
    wire gpio2_0_pad_a_esd_1_h;
    wire gpio2_0_pad_a_noesd_h;
    wire gpio2_0_slow;
    wire gpio2_0_tie_hi_esd;
    wire gpio2_0_tie_lo_esd;
    wire gpio2_0_vtrip_sel;
    wire gpio2_0_zero;
    wire gpio2_1_analog_en;
    wire gpio2_1_analog_pol;
    wire gpio2_1_analog_sel;
    wire gpio2_1_enable_h;
    wire gpio2_1_enable_inp_h;
    wire gpio2_1_enable_vdda_h;
    wire gpio2_1_enable_vddio;
    wire gpio2_1_enable_vswitch_h;
    wire gpio2_1_hld_h_n;
    wire gpio2_1_hld_ovr;
    wire gpio2_1_ib_mode_sel;
    wire gpio2_1_in;
    wire gpio2_1_in_h;
    wire gpio2_1_inp_dis;
    wire gpio2_1_oe_n;
    wire gpio2_1_one;
    wire gpio2_1_out;
    wire gpio2_1_pad_a_esd_0_h;
    wire gpio2_1_pad_a_esd_1_h;
    wire gpio2_1_pad_a_noesd_h;
    wire gpio2_1_slow;
    wire gpio2_1_tie_hi_esd;
    wire gpio2_1_tie_lo_esd;
    wire gpio2_1_vtrip_sel;
    wire gpio2_1_zero;
    wire gpio2_2_analog_en;
    wire gpio2_2_analog_pol;
    wire gpio2_2_analog_sel;
    wire gpio2_2_enable_h;
    wire gpio2_2_enable_inp_h;
    wire gpio2_2_enable_vdda_h;
    wire gpio2_2_enable_vddio;
    wire gpio2_2_enable_vswitch_h;
    wire gpio2_2_hld_h_n;
    wire gpio2_2_hld_ovr;
    wire gpio2_2_ib_mode_sel;
    wire gpio2_2_in;
    wire gpio2_2_in_h;
    wire gpio2_2_inp_dis;
    wire gpio2_2_oe_n;
    wire gpio2_2_one;
    wire gpio2_2_out;
    wire gpio2_2_pad_a_esd_0_h;
    wire gpio2_2_pad_a_esd_1_h;
    wire gpio2_2_pad_a_noesd_h;
    wire gpio2_2_slow;
    wire gpio2_2_tie_hi_esd;
    wire gpio2_2_tie_lo_esd;
    wire gpio2_2_vtrip_sel;
    wire gpio2_2_zero;
    wire gpio2_3_analog_en;
    wire gpio2_3_analog_pol;
    wire gpio2_3_analog_sel;
    wire gpio2_3_enable_h;
    wire gpio2_3_enable_inp_h;
    wire gpio2_3_enable_vdda_h;
    wire gpio2_3_enable_vddio;
    wire gpio2_3_enable_vswitch_h;
    wire gpio2_3_hld_h_n;
    wire gpio2_3_hld_ovr;
    wire gpio2_3_ib_mode_sel;
    wire gpio2_3_in;
    wire gpio2_3_in_h;
    wire gpio2_3_inp_dis;
    wire gpio2_3_oe_n;
    wire gpio2_3_one;
    wire gpio2_3_out;
    wire gpio2_3_pad_a_esd_0_h;
    wire gpio2_3_pad_a_esd_1_h;
    wire gpio2_3_pad_a_noesd_h;
    wire gpio2_3_slow;
    wire gpio2_3_tie_hi_esd;
    wire gpio2_3_tie_lo_esd;
    wire gpio2_3_vtrip_sel;
    wire gpio2_3_zero;
    wire gpio2_4_analog_en;
    wire gpio2_4_analog_pol;
    wire gpio2_4_analog_sel;
    wire gpio2_4_enable_h;
    wire gpio2_4_enable_inp_h;
    wire gpio2_4_enable_vdda_h;
    wire gpio2_4_enable_vddio;
    wire gpio2_4_enable_vswitch_h;
    wire gpio2_4_hld_h_n;
    wire gpio2_4_hld_ovr;
    wire gpio2_4_ib_mode_sel;
    wire gpio2_4_in;
    wire gpio2_4_in_h;
    wire gpio2_4_inp_dis;
    wire gpio2_4_oe_n;
    wire gpio2_4_one;
    wire gpio2_4_out;
    wire gpio2_4_pad_a_esd_0_h;
    wire gpio2_4_pad_a_esd_1_h;
    wire gpio2_4_pad_a_noesd_h;
    wire gpio2_4_slow;
    wire gpio2_4_tie_hi_esd;
    wire gpio2_4_tie_lo_esd;
    wire gpio2_4_vtrip_sel;
    wire gpio2_4_zero;
    wire gpio2_5_analog_en;
    wire gpio2_5_analog_pol;
    wire gpio2_5_analog_sel;
    wire gpio2_5_enable_h;
    wire gpio2_5_enable_inp_h;
    wire gpio2_5_enable_vdda_h;
    wire gpio2_5_enable_vddio;
    wire gpio2_5_enable_vswitch_h;
    wire gpio2_5_hld_h_n;
    wire gpio2_5_hld_ovr;
    wire gpio2_5_ib_mode_sel;
    wire gpio2_5_in;
    wire gpio2_5_in_h;
    wire gpio2_5_inp_dis;
    wire gpio2_5_oe_n;
    wire gpio2_5_one;
    wire gpio2_5_out;
    wire gpio2_5_pad_a_esd_0_h;
    wire gpio2_5_pad_a_esd_1_h;
    wire gpio2_5_pad_a_noesd_h;
    wire gpio2_5_slow;
    wire gpio2_5_tie_hi_esd;
    wire gpio2_5_tie_lo_esd;
    wire gpio2_5_vtrip_sel;
    wire gpio2_5_zero;
    wire gpio2_6_analog_en;
    wire gpio2_6_analog_pol;
    wire gpio2_6_analog_sel;
    wire gpio2_6_enable_h;
    wire gpio2_6_enable_inp_h;
    wire gpio2_6_enable_vdda_h;
    wire gpio2_6_enable_vddio;
    wire gpio2_6_enable_vswitch_h;
    wire gpio2_6_hld_h_n;
    wire gpio2_6_hld_ovr;
    wire gpio2_6_ib_mode_sel;
    wire gpio2_6_in;
    wire gpio2_6_in_h;
    wire gpio2_6_inp_dis;
    wire gpio2_6_oe_n;
    wire gpio2_6_one;
    wire gpio2_6_out;
    wire gpio2_6_pad_a_esd_0_h;
    wire gpio2_6_pad_a_esd_1_h;
    wire gpio2_6_pad_a_noesd_h;
    wire gpio2_6_slow;
    wire gpio2_6_tie_hi_esd;
    wire gpio2_6_tie_lo_esd;
    wire gpio2_6_vtrip_sel;
    wire gpio2_6_zero;
    wire gpio2_7_analog_en;
    wire gpio2_7_analog_pol;
    wire gpio2_7_analog_sel;
    wire gpio2_7_enable_h;
    wire gpio2_7_enable_inp_h;
    wire gpio2_7_enable_vdda_h;
    wire gpio2_7_enable_vddio;
    wire gpio2_7_enable_vswitch_h;
    wire gpio2_7_hld_h_n;
    wire gpio2_7_hld_ovr;
    wire gpio2_7_ib_mode_sel;
    wire gpio2_7_in;
    wire gpio2_7_in_h;
    wire gpio2_7_inp_dis;
    wire gpio2_7_oe_n;
    wire gpio2_7_one;
    wire gpio2_7_out;
    wire gpio2_7_pad_a_esd_0_h;
    wire gpio2_7_pad_a_esd_1_h;
    wire gpio2_7_pad_a_noesd_h;
    wire gpio2_7_slow;
    wire gpio2_7_tie_hi_esd;
    wire gpio2_7_tie_lo_esd;
    wire gpio2_7_vtrip_sel;
    wire gpio2_7_zero;
    wire gpio3_0_analog_en;
    wire gpio3_0_analog_pol;
    wire gpio3_0_analog_sel;
    wire gpio3_0_enable_h;
    wire gpio3_0_enable_inp_h;
    wire gpio3_0_enable_vdda_h;
    wire gpio3_0_enable_vddio;
    wire gpio3_0_enable_vswitch_h;
    wire gpio3_0_hld_h_n;
    wire gpio3_0_hld_ovr;
    wire gpio3_0_ib_mode_sel;
    wire gpio3_0_in;
    wire gpio3_0_in_h;
    wire gpio3_0_inp_dis;
    wire gpio3_0_oe_n;
    wire gpio3_0_one;
    wire gpio3_0_out;
    wire gpio3_0_pad_a_esd_0_h;
    wire gpio3_0_pad_a_esd_1_h;
    wire gpio3_0_pad_a_noesd_h;
    wire gpio3_0_slow;
    wire gpio3_0_tie_hi_esd;
    wire gpio3_0_tie_lo_esd;
    wire gpio3_0_vtrip_sel;
    wire gpio3_0_zero;
    wire gpio3_1_analog_en;
    wire gpio3_1_analog_pol;
    wire gpio3_1_analog_sel;
    wire gpio3_1_enable_h;
    wire gpio3_1_enable_inp_h;
    wire gpio3_1_enable_vdda_h;
    wire gpio3_1_enable_vddio;
    wire gpio3_1_enable_vswitch_h;
    wire gpio3_1_hld_h_n;
    wire gpio3_1_hld_ovr;
    wire gpio3_1_ib_mode_sel;
    wire gpio3_1_in;
    wire gpio3_1_in_h;
    wire gpio3_1_inp_dis;
    wire gpio3_1_oe_n;
    wire gpio3_1_one;
    wire gpio3_1_out;
    wire gpio3_1_pad_a_esd_0_h;
    wire gpio3_1_pad_a_esd_1_h;
    wire gpio3_1_pad_a_noesd_h;
    wire gpio3_1_slow;
    wire gpio3_1_tie_hi_esd;
    wire gpio3_1_tie_lo_esd;
    wire gpio3_1_vtrip_sel;
    wire gpio3_1_zero;
    wire gpio3_2_analog_en;
    wire gpio3_2_analog_pol;
    wire gpio3_2_analog_sel;
    wire gpio3_2_enable_h;
    wire gpio3_2_enable_inp_h;
    wire gpio3_2_enable_vdda_h;
    wire gpio3_2_enable_vddio;
    wire gpio3_2_enable_vswitch_h;
    wire gpio3_2_hld_h_n;
    wire gpio3_2_hld_ovr;
    wire gpio3_2_ib_mode_sel;
    wire gpio3_2_in;
    wire gpio3_2_in_h;
    wire gpio3_2_inp_dis;
    wire gpio3_2_oe_n;
    wire gpio3_2_one;
    wire gpio3_2_out;
    wire gpio3_2_pad_a_esd_0_h;
    wire gpio3_2_pad_a_esd_1_h;
    wire gpio3_2_pad_a_noesd_h;
    wire gpio3_2_slow;
    wire gpio3_2_tie_hi_esd;
    wire gpio3_2_tie_lo_esd;
    wire gpio3_2_vtrip_sel;
    wire gpio3_2_zero;
    wire gpio3_3_analog_en;
    wire gpio3_3_analog_pol;
    wire gpio3_3_analog_sel;
    wire gpio3_3_enable_h;
    wire gpio3_3_enable_inp_h;
    wire gpio3_3_enable_vdda_h;
    wire gpio3_3_enable_vddio;
    wire gpio3_3_enable_vswitch_h;
    wire gpio3_3_hld_h_n;
    wire gpio3_3_hld_ovr;
    wire gpio3_3_ib_mode_sel;
    wire gpio3_3_in;
    wire gpio3_3_in_h;
    wire gpio3_3_inp_dis;
    wire gpio3_3_oe_n;
    wire gpio3_3_one;
    wire gpio3_3_out;
    wire gpio3_3_pad_a_esd_0_h;
    wire gpio3_3_pad_a_esd_1_h;
    wire gpio3_3_pad_a_noesd_h;
    wire gpio3_3_slow;
    wire gpio3_3_tie_hi_esd;
    wire gpio3_3_tie_lo_esd;
    wire gpio3_3_vtrip_sel;
    wire gpio3_3_zero;
    wire gpio3_4_analog_en;
    wire gpio3_4_analog_pol;
    wire gpio3_4_analog_sel;
    wire gpio3_4_enable_h;
    wire gpio3_4_enable_inp_h;
    wire gpio3_4_enable_vdda_h;
    wire gpio3_4_enable_vddio;
    wire gpio3_4_enable_vswitch_h;
    wire gpio3_4_hld_h_n;
    wire gpio3_4_hld_ovr;
    wire gpio3_4_ib_mode_sel;
    wire gpio3_4_in;
    wire gpio3_4_in_h;
    wire gpio3_4_inp_dis;
    wire gpio3_4_oe_n;
    wire gpio3_4_one;
    wire gpio3_4_out;
    wire gpio3_4_pad_a_esd_0_h;
    wire gpio3_4_pad_a_esd_1_h;
    wire gpio3_4_pad_a_noesd_h;
    wire gpio3_4_slow;
    wire gpio3_4_tie_hi_esd;
    wire gpio3_4_tie_lo_esd;
    wire gpio3_4_vtrip_sel;
    wire gpio3_4_zero;
    wire gpio3_5_analog_en;
    wire gpio3_5_analog_pol;
    wire gpio3_5_analog_sel;
    wire gpio3_5_enable_h;
    wire gpio3_5_enable_inp_h;
    wire gpio3_5_enable_vdda_h;
    wire gpio3_5_enable_vddio;
    wire gpio3_5_enable_vswitch_h;
    wire gpio3_5_hld_h_n;
    wire gpio3_5_hld_ovr;
    wire gpio3_5_ib_mode_sel;
    wire gpio3_5_in;
    wire gpio3_5_in_h;
    wire gpio3_5_inp_dis;
    wire gpio3_5_oe_n;
    wire gpio3_5_one;
    wire gpio3_5_out;
    wire gpio3_5_pad_a_esd_0_h;
    wire gpio3_5_pad_a_esd_1_h;
    wire gpio3_5_pad_a_noesd_h;
    wire gpio3_5_slow;
    wire gpio3_5_tie_hi_esd;
    wire gpio3_5_tie_lo_esd;
    wire gpio3_5_vtrip_sel;
    wire gpio3_5_zero;
    wire gpio3_6_analog_en;
    wire gpio3_6_analog_pol;
    wire gpio3_6_analog_sel;
    wire gpio3_6_enable_h;
    wire gpio3_6_enable_inp_h;
    wire gpio3_6_enable_vdda_h;
    wire gpio3_6_enable_vddio;
    wire gpio3_6_enable_vswitch_h;
    wire gpio3_6_hld_h_n;
    wire gpio3_6_hld_ovr;
    wire gpio3_6_ib_mode_sel;
    wire gpio3_6_in;
    wire gpio3_6_in_h;
    wire gpio3_6_inp_dis;
    wire gpio3_6_oe_n;
    wire gpio3_6_one;
    wire gpio3_6_out;
    wire gpio3_6_pad_a_esd_0_h;
    wire gpio3_6_pad_a_esd_1_h;
    wire gpio3_6_pad_a_noesd_h;
    wire gpio3_6_slow;
    wire gpio3_6_tie_hi_esd;
    wire gpio3_6_tie_lo_esd;
    wire gpio3_6_vtrip_sel;
    wire gpio3_6_zero;
    wire gpio3_7_analog_en;
    wire gpio3_7_analog_pol;
    wire gpio3_7_analog_sel;
    wire gpio3_7_enable_h;
    wire gpio3_7_enable_inp_h;
    wire gpio3_7_enable_vdda_h;
    wire gpio3_7_enable_vddio;
    wire gpio3_7_enable_vswitch_h;
    wire gpio3_7_hld_h_n;
    wire gpio3_7_hld_ovr;
    wire gpio3_7_ib_mode_sel;
    wire gpio3_7_in;
    wire gpio3_7_in_h;
    wire gpio3_7_inp_dis;
    wire gpio3_7_oe_n;
    wire gpio3_7_one;
    wire gpio3_7_out;
    wire gpio3_7_pad_a_esd_0_h;
    wire gpio3_7_pad_a_esd_1_h;
    wire gpio3_7_pad_a_noesd_h;
    wire gpio3_7_slow;
    wire gpio3_7_tie_hi_esd;
    wire gpio3_7_tie_lo_esd;
    wire gpio3_7_vtrip_sel;
    wire gpio3_7_zero;
    wire gpio4_0_analog_en;
    wire gpio4_0_analog_pol;
    wire gpio4_0_analog_sel;
    wire gpio4_0_enable_h;
    wire gpio4_0_enable_inp_h;
    wire gpio4_0_enable_vdda_h;
    wire gpio4_0_enable_vddio;
    wire gpio4_0_enable_vswitch_h;
    wire gpio4_0_hld_h_n;
    wire gpio4_0_hld_ovr;
    wire gpio4_0_ib_mode_sel;
    wire gpio4_0_in;
    wire gpio4_0_in_h;
    wire gpio4_0_inp_dis;
    wire gpio4_0_oe_n;
    wire gpio4_0_one;
    wire gpio4_0_out;
    wire gpio4_0_pad_a_esd_0_h;
    wire gpio4_0_pad_a_esd_1_h;
    wire gpio4_0_pad_a_noesd_h;
    wire gpio4_0_slow;
    wire gpio4_0_tie_hi_esd;
    wire gpio4_0_tie_lo_esd;
    wire gpio4_0_vtrip_sel;
    wire gpio4_0_zero;
    wire gpio4_1_analog_en;
    wire gpio4_1_analog_pol;
    wire gpio4_1_analog_sel;
    wire gpio4_1_enable_h;
    wire gpio4_1_enable_inp_h;
    wire gpio4_1_enable_vdda_h;
    wire gpio4_1_enable_vddio;
    wire gpio4_1_enable_vswitch_h;
    wire gpio4_1_hld_h_n;
    wire gpio4_1_hld_ovr;
    wire gpio4_1_ib_mode_sel;
    wire gpio4_1_in;
    wire gpio4_1_in_h;
    wire gpio4_1_inp_dis;
    wire gpio4_1_oe_n;
    wire gpio4_1_one;
    wire gpio4_1_out;
    wire gpio4_1_pad_a_esd_0_h;
    wire gpio4_1_pad_a_esd_1_h;
    wire gpio4_1_pad_a_noesd_h;
    wire gpio4_1_slow;
    wire gpio4_1_tie_hi_esd;
    wire gpio4_1_tie_lo_esd;
    wire gpio4_1_vtrip_sel;
    wire gpio4_1_zero;
    wire gpio4_2_analog_en;
    wire gpio4_2_analog_pol;
    wire gpio4_2_analog_sel;
    wire gpio4_2_enable_h;
    wire gpio4_2_enable_inp_h;
    wire gpio4_2_enable_vdda_h;
    wire gpio4_2_enable_vddio;
    wire gpio4_2_enable_vswitch_h;
    wire gpio4_2_hld_h_n;
    wire gpio4_2_hld_ovr;
    wire gpio4_2_ib_mode_sel;
    wire gpio4_2_in;
    wire gpio4_2_in_h;
    wire gpio4_2_inp_dis;
    wire gpio4_2_oe_n;
    wire gpio4_2_one;
    wire gpio4_2_out;
    wire gpio4_2_pad_a_esd_0_h;
    wire gpio4_2_pad_a_esd_1_h;
    wire gpio4_2_pad_a_noesd_h;
    wire gpio4_2_slow;
    wire gpio4_2_tie_hi_esd;
    wire gpio4_2_tie_lo_esd;
    wire gpio4_2_vtrip_sel;
    wire gpio4_2_zero;
    wire gpio4_3_analog_en;
    wire gpio4_3_analog_pol;
    wire gpio4_3_analog_sel;
    wire gpio4_3_enable_h;
    wire gpio4_3_enable_inp_h;
    wire gpio4_3_enable_vdda_h;
    wire gpio4_3_enable_vddio;
    wire gpio4_3_enable_vswitch_h;
    wire gpio4_3_hld_h_n;
    wire gpio4_3_hld_ovr;
    wire gpio4_3_ib_mode_sel;
    wire gpio4_3_in;
    wire gpio4_3_in_h;
    wire gpio4_3_inp_dis;
    wire gpio4_3_oe_n;
    wire gpio4_3_one;
    wire gpio4_3_out;
    wire gpio4_3_pad_a_esd_0_h;
    wire gpio4_3_pad_a_esd_1_h;
    wire gpio4_3_pad_a_noesd_h;
    wire gpio4_3_slow;
    wire gpio4_3_tie_hi_esd;
    wire gpio4_3_tie_lo_esd;
    wire gpio4_3_vtrip_sel;
    wire gpio4_3_zero;
    wire gpio4_4_analog_en;
    wire gpio4_4_analog_pol;
    wire gpio4_4_analog_sel;
    wire gpio4_4_enable_h;
    wire gpio4_4_enable_inp_h;
    wire gpio4_4_enable_vdda_h;
    wire gpio4_4_enable_vddio;
    wire gpio4_4_enable_vswitch_h;
    wire gpio4_4_hld_h_n;
    wire gpio4_4_hld_ovr;
    wire gpio4_4_ib_mode_sel;
    wire gpio4_4_in;
    wire gpio4_4_in_h;
    wire gpio4_4_inp_dis;
    wire gpio4_4_oe_n;
    wire gpio4_4_one;
    wire gpio4_4_out;
    wire gpio4_4_pad_a_esd_0_h;
    wire gpio4_4_pad_a_esd_1_h;
    wire gpio4_4_pad_a_noesd_h;
    wire gpio4_4_slow;
    wire gpio4_4_tie_hi_esd;
    wire gpio4_4_tie_lo_esd;
    wire gpio4_4_vtrip_sel;
    wire gpio4_4_zero;
    wire gpio4_5_analog_en;
    wire gpio4_5_analog_pol;
    wire gpio4_5_analog_sel;
    wire gpio4_5_enable_h;
    wire gpio4_5_enable_inp_h;
    wire gpio4_5_enable_vdda_h;
    wire gpio4_5_enable_vddio;
    wire gpio4_5_enable_vswitch_h;
    wire gpio4_5_hld_h_n;
    wire gpio4_5_hld_ovr;
    wire gpio4_5_ib_mode_sel;
    wire gpio4_5_in;
    wire gpio4_5_in_h;
    wire gpio4_5_inp_dis;
    wire gpio4_5_oe_n;
    wire gpio4_5_one;
    wire gpio4_5_out;
    wire gpio4_5_pad_a_esd_0_h;
    wire gpio4_5_pad_a_esd_1_h;
    wire gpio4_5_pad_a_noesd_h;
    wire gpio4_5_slow;
    wire gpio4_5_tie_hi_esd;
    wire gpio4_5_tie_lo_esd;
    wire gpio4_5_vtrip_sel;
    wire gpio4_5_zero;
    wire gpio4_6_analog_en;
    wire gpio4_6_analog_pol;
    wire gpio4_6_analog_sel;
    wire gpio4_6_enable_h;
    wire gpio4_6_enable_inp_h;
    wire gpio4_6_enable_vdda_h;
    wire gpio4_6_enable_vddio;
    wire gpio4_6_enable_vswitch_h;
    wire gpio4_6_hld_h_n;
    wire gpio4_6_hld_ovr;
    wire gpio4_6_ib_mode_sel;
    wire gpio4_6_in;
    wire gpio4_6_in_h;
    wire gpio4_6_inp_dis;
    wire gpio4_6_oe_n;
    wire gpio4_6_one;
    wire gpio4_6_out;
    wire gpio4_6_pad_a_esd_0_h;
    wire gpio4_6_pad_a_esd_1_h;
    wire gpio4_6_pad_a_noesd_h;
    wire gpio4_6_slow;
    wire gpio4_6_tie_hi_esd;
    wire gpio4_6_tie_lo_esd;
    wire gpio4_6_vtrip_sel;
    wire gpio4_6_zero;
    wire gpio4_7_analog_en;
    wire gpio4_7_analog_pol;
    wire gpio4_7_analog_sel;
    wire gpio4_7_enable_h;
    wire gpio4_7_enable_inp_h;
    wire gpio4_7_enable_vdda_h;
    wire gpio4_7_enable_vddio;
    wire gpio4_7_enable_vswitch_h;
    wire gpio4_7_hld_h_n;
    wire gpio4_7_hld_ovr;
    wire gpio4_7_ib_mode_sel;
    wire gpio4_7_in;
    wire gpio4_7_in_h;
    wire gpio4_7_inp_dis;
    wire gpio4_7_oe_n;
    wire gpio4_7_one;
    wire gpio4_7_out;
    wire gpio4_7_pad_a_esd_0_h;
    wire gpio4_7_pad_a_esd_1_h;
    wire gpio4_7_pad_a_noesd_h;
    wire gpio4_7_slow;
    wire gpio4_7_tie_hi_esd;
    wire gpio4_7_tie_lo_esd;
    wire gpio4_7_vtrip_sel;
    wire gpio4_7_zero;
    wire gpio5_0_analog_en;
    wire gpio5_0_analog_pol;
    wire gpio5_0_analog_sel;
    wire gpio5_0_enable_h;
    wire gpio5_0_enable_inp_h;
    wire gpio5_0_enable_vdda_h;
    wire gpio5_0_enable_vddio;
    wire gpio5_0_enable_vswitch_h;
    wire gpio5_0_hld_h_n;
    wire gpio5_0_hld_ovr;
    wire gpio5_0_ib_mode_sel;
    wire gpio5_0_in;
    wire gpio5_0_in_h;
    wire gpio5_0_inp_dis;
    wire gpio5_0_oe_n;
    wire gpio5_0_one;
    wire gpio5_0_out;
    wire gpio5_0_pad_a_esd_0_h;
    wire gpio5_0_pad_a_esd_1_h;
    wire gpio5_0_pad_a_noesd_h;
    wire gpio5_0_slow;
    wire gpio5_0_tie_hi_esd;
    wire gpio5_0_tie_lo_esd;
    wire gpio5_0_vtrip_sel;
    wire gpio5_0_zero;
    wire gpio5_1_analog_en;
    wire gpio5_1_analog_pol;
    wire gpio5_1_analog_sel;
    wire gpio5_1_enable_h;
    wire gpio5_1_enable_inp_h;
    wire gpio5_1_enable_vdda_h;
    wire gpio5_1_enable_vddio;
    wire gpio5_1_enable_vswitch_h;
    wire gpio5_1_hld_h_n;
    wire gpio5_1_hld_ovr;
    wire gpio5_1_ib_mode_sel;
    wire gpio5_1_in;
    wire gpio5_1_in_h;
    wire gpio5_1_inp_dis;
    wire gpio5_1_oe_n;
    wire gpio5_1_one;
    wire gpio5_1_out;
    wire gpio5_1_pad_a_esd_0_h;
    wire gpio5_1_pad_a_esd_1_h;
    wire gpio5_1_pad_a_noesd_h;
    wire gpio5_1_slow;
    wire gpio5_1_tie_hi_esd;
    wire gpio5_1_tie_lo_esd;
    wire gpio5_1_vtrip_sel;
    wire gpio5_1_zero;
    wire gpio5_2_analog_en;
    wire gpio5_2_analog_pol;
    wire gpio5_2_analog_sel;
    wire gpio5_2_enable_h;
    wire gpio5_2_enable_inp_h;
    wire gpio5_2_enable_vdda_h;
    wire gpio5_2_enable_vddio;
    wire gpio5_2_enable_vswitch_h;
    wire gpio5_2_hld_h_n;
    wire gpio5_2_hld_ovr;
    wire gpio5_2_ib_mode_sel;
    wire gpio5_2_in;
    wire gpio5_2_in_h;
    wire gpio5_2_inp_dis;
    wire gpio5_2_oe_n;
    wire gpio5_2_one;
    wire gpio5_2_out;
    wire gpio5_2_pad_a_esd_0_h;
    wire gpio5_2_pad_a_esd_1_h;
    wire gpio5_2_pad_a_noesd_h;
    wire gpio5_2_slow;
    wire gpio5_2_tie_hi_esd;
    wire gpio5_2_tie_lo_esd;
    wire gpio5_2_vtrip_sel;
    wire gpio5_2_zero;
    wire gpio5_3_analog_en;
    wire gpio5_3_analog_pol;
    wire gpio5_3_analog_sel;
    wire gpio5_3_enable_h;
    wire gpio5_3_enable_inp_h;
    wire gpio5_3_enable_vdda_h;
    wire gpio5_3_enable_vddio;
    wire gpio5_3_enable_vswitch_h;
    wire gpio5_3_hld_h_n;
    wire gpio5_3_hld_ovr;
    wire gpio5_3_ib_mode_sel;
    wire gpio5_3_in;
    wire gpio5_3_in_h;
    wire gpio5_3_inp_dis;
    wire gpio5_3_oe_n;
    wire gpio5_3_one;
    wire gpio5_3_out;
    wire gpio5_3_pad_a_esd_0_h;
    wire gpio5_3_pad_a_esd_1_h;
    wire gpio5_3_pad_a_noesd_h;
    wire gpio5_3_slow;
    wire gpio5_3_tie_hi_esd;
    wire gpio5_3_tie_lo_esd;
    wire gpio5_3_vtrip_sel;
    wire gpio5_3_zero;
    wire gpio5_4_analog_en;
    wire gpio5_4_analog_pol;
    wire gpio5_4_analog_sel;
    wire gpio5_4_enable_h;
    wire gpio5_4_enable_inp_h;
    wire gpio5_4_enable_vdda_h;
    wire gpio5_4_enable_vddio;
    wire gpio5_4_enable_vswitch_h;
    wire gpio5_4_hld_h_n;
    wire gpio5_4_hld_ovr;
    wire gpio5_4_ib_mode_sel;
    wire gpio5_4_in;
    wire gpio5_4_in_h;
    wire gpio5_4_inp_dis;
    wire gpio5_4_oe_n;
    wire gpio5_4_one;
    wire gpio5_4_out;
    wire gpio5_4_pad_a_esd_0_h;
    wire gpio5_4_pad_a_esd_1_h;
    wire gpio5_4_pad_a_noesd_h;
    wire gpio5_4_slow;
    wire gpio5_4_tie_hi_esd;
    wire gpio5_4_tie_lo_esd;
    wire gpio5_4_vtrip_sel;
    wire gpio5_4_zero;
    wire gpio5_5_analog_en;
    wire gpio5_5_analog_pol;
    wire gpio5_5_analog_sel;
    wire gpio5_5_enable_h;
    wire gpio5_5_enable_inp_h;
    wire gpio5_5_enable_vdda_h;
    wire gpio5_5_enable_vddio;
    wire gpio5_5_enable_vswitch_h;
    wire gpio5_5_hld_h_n;
    wire gpio5_5_hld_ovr;
    wire gpio5_5_ib_mode_sel;
    wire gpio5_5_in;
    wire gpio5_5_in_h;
    wire gpio5_5_inp_dis;
    wire gpio5_5_oe_n;
    wire gpio5_5_one;
    wire gpio5_5_out;
    wire gpio5_5_pad_a_esd_0_h;
    wire gpio5_5_pad_a_esd_1_h;
    wire gpio5_5_pad_a_noesd_h;
    wire gpio5_5_slow;
    wire gpio5_5_tie_hi_esd;
    wire gpio5_5_tie_lo_esd;
    wire gpio5_5_vtrip_sel;
    wire gpio5_5_zero;
    wire gpio5_6_analog_en;
    wire gpio5_6_analog_pol;
    wire gpio5_6_analog_sel;
    wire gpio5_6_enable_h;
    wire gpio5_6_enable_inp_h;
    wire gpio5_6_enable_vdda_h;
    wire gpio5_6_enable_vddio;
    wire gpio5_6_enable_vswitch_h;
    wire gpio5_6_hld_h_n;
    wire gpio5_6_hld_ovr;
    wire gpio5_6_ib_mode_sel;
    wire gpio5_6_in;
    wire gpio5_6_in_h;
    wire gpio5_6_inp_dis;
    wire gpio5_6_oe_n;
    wire gpio5_6_one;
    wire gpio5_6_out;
    wire gpio5_6_pad_a_esd_0_h;
    wire gpio5_6_pad_a_esd_1_h;
    wire gpio5_6_pad_a_noesd_h;
    wire gpio5_6_slow;
    wire gpio5_6_tie_hi_esd;
    wire gpio5_6_tie_lo_esd;
    wire gpio5_6_vtrip_sel;
    wire gpio5_6_zero;
    wire gpio5_7_analog_en;
    wire gpio5_7_analog_pol;
    wire gpio5_7_analog_sel;
    wire gpio5_7_enable_h;
    wire gpio5_7_enable_inp_h;
    wire gpio5_7_enable_vdda_h;
    wire gpio5_7_enable_vddio;
    wire gpio5_7_enable_vswitch_h;
    wire gpio5_7_hld_h_n;
    wire gpio5_7_hld_ovr;
    wire gpio5_7_ib_mode_sel;
    wire gpio5_7_in;
    wire gpio5_7_in_h;
    wire gpio5_7_inp_dis;
    wire gpio5_7_oe_n;
    wire gpio5_7_one;
    wire gpio5_7_out;
    wire gpio5_7_pad_a_esd_0_h;
    wire gpio5_7_pad_a_esd_1_h;
    wire gpio5_7_pad_a_noesd_h;
    wire gpio5_7_slow;
    wire gpio5_7_tie_hi_esd;
    wire gpio5_7_tie_lo_esd;
    wire gpio5_7_vtrip_sel;
    wire gpio5_7_zero;
    wire gpio6_0_analog_en;
    wire gpio6_0_analog_pol;
    wire gpio6_0_analog_sel;
    wire gpio6_0_enable_h;
    wire gpio6_0_enable_inp_h;
    wire gpio6_0_enable_vdda_h;
    wire gpio6_0_enable_vddio;
    wire gpio6_0_enable_vswitch_h;
    wire gpio6_0_hld_h_n;
    wire gpio6_0_hld_ovr;
    wire gpio6_0_hys_trim;
    wire gpio6_0_in;
    wire gpio6_0_in_h;
    wire gpio6_0_inp_dis;
    wire gpio6_0_oe_n;
    wire gpio6_0_one;
    wire gpio6_0_out;
    wire gpio6_0_pad_a_esd_0_h;
    wire gpio6_0_pad_a_esd_1_h;
    wire gpio6_0_pad_a_noesd_h;
    wire gpio6_0_slow;
    wire gpio6_0_tie_hi_esd;
    wire gpio6_0_tie_lo_esd;
    wire gpio6_0_vtrip_sel;
    wire gpio6_0_zero;
    wire gpio6_1_analog_en;
    wire gpio6_1_analog_pol;
    wire gpio6_1_analog_sel;
    wire gpio6_1_enable_h;
    wire gpio6_1_enable_inp_h;
    wire gpio6_1_enable_vdda_h;
    wire gpio6_1_enable_vddio;
    wire gpio6_1_enable_vswitch_h;
    wire gpio6_1_hld_h_n;
    wire gpio6_1_hld_ovr;
    wire gpio6_1_hys_trim;
    wire gpio6_1_in;
    wire gpio6_1_in_h;
    wire gpio6_1_inp_dis;
    wire gpio6_1_oe_n;
    wire gpio6_1_one;
    wire gpio6_1_out;
    wire gpio6_1_pad_a_esd_0_h;
    wire gpio6_1_pad_a_esd_1_h;
    wire gpio6_1_pad_a_noesd_h;
    wire gpio6_1_slow;
    wire gpio6_1_tie_hi_esd;
    wire gpio6_1_tie_lo_esd;
    wire gpio6_1_vtrip_sel;
    wire gpio6_1_zero;
    wire gpio6_2_analog_en;
    wire gpio6_2_analog_pol;
    wire gpio6_2_analog_sel;
    wire gpio6_2_enable_h;
    wire gpio6_2_enable_inp_h;
    wire gpio6_2_enable_vdda_h;
    wire gpio6_2_enable_vddio;
    wire gpio6_2_enable_vswitch_h;
    wire gpio6_2_hld_h_n;
    wire gpio6_2_hld_ovr;
    wire gpio6_2_hys_trim;
    wire gpio6_2_in;
    wire gpio6_2_in_h;
    wire gpio6_2_inp_dis;
    wire gpio6_2_oe_n;
    wire gpio6_2_one;
    wire gpio6_2_out;
    wire gpio6_2_pad_a_esd_0_h;
    wire gpio6_2_pad_a_esd_1_h;
    wire gpio6_2_pad_a_noesd_h;
    wire gpio6_2_slow;
    wire gpio6_2_tie_hi_esd;
    wire gpio6_2_tie_lo_esd;
    wire gpio6_2_vtrip_sel;
    wire gpio6_2_zero;
    wire gpio6_3_analog_en;
    wire gpio6_3_analog_pol;
    wire gpio6_3_analog_sel;
    wire gpio6_3_enable_h;
    wire gpio6_3_enable_inp_h;
    wire gpio6_3_enable_vdda_h;
    wire gpio6_3_enable_vddio;
    wire gpio6_3_enable_vswitch_h;
    wire gpio6_3_hld_h_n;
    wire gpio6_3_hld_ovr;
    wire gpio6_3_hys_trim;
    wire gpio6_3_in;
    wire gpio6_3_in_h;
    wire gpio6_3_inp_dis;
    wire gpio6_3_oe_n;
    wire gpio6_3_one;
    wire gpio6_3_out;
    wire gpio6_3_pad_a_esd_0_h;
    wire gpio6_3_pad_a_esd_1_h;
    wire gpio6_3_pad_a_noesd_h;
    wire gpio6_3_slow;
    wire gpio6_3_tie_hi_esd;
    wire gpio6_3_tie_lo_esd;
    wire gpio6_3_vtrip_sel;
    wire gpio6_3_zero;
    wire gpio6_4_analog_en;
    wire gpio6_4_analog_pol;
    wire gpio6_4_analog_sel;
    wire gpio6_4_enable_h;
    wire gpio6_4_enable_inp_h;
    wire gpio6_4_enable_vdda_h;
    wire gpio6_4_enable_vddio;
    wire gpio6_4_enable_vswitch_h;
    wire gpio6_4_hld_h_n;
    wire gpio6_4_hld_ovr;
    wire gpio6_4_hys_trim;
    wire gpio6_4_in;
    wire gpio6_4_in_h;
    wire gpio6_4_inp_dis;
    wire gpio6_4_oe_n;
    wire gpio6_4_one;
    wire gpio6_4_out;
    wire gpio6_4_pad_a_esd_0_h;
    wire gpio6_4_pad_a_esd_1_h;
    wire gpio6_4_pad_a_noesd_h;
    wire gpio6_4_slow;
    wire gpio6_4_tie_hi_esd;
    wire gpio6_4_tie_lo_esd;
    wire gpio6_4_vtrip_sel;
    wire gpio6_4_zero;
    wire gpio6_5_analog_en;
    wire gpio6_5_analog_pol;
    wire gpio6_5_analog_sel;
    wire gpio6_5_enable_h;
    wire gpio6_5_enable_inp_h;
    wire gpio6_5_enable_vdda_h;
    wire gpio6_5_enable_vddio;
    wire gpio6_5_enable_vswitch_h;
    wire gpio6_5_hld_h_n;
    wire gpio6_5_hld_ovr;
    wire gpio6_5_hys_trim;
    wire gpio6_5_in;
    wire gpio6_5_in_h;
    wire gpio6_5_inp_dis;
    wire gpio6_5_oe_n;
    wire gpio6_5_one;
    wire gpio6_5_out;
    wire gpio6_5_pad_a_esd_0_h;
    wire gpio6_5_pad_a_esd_1_h;
    wire gpio6_5_pad_a_noesd_h;
    wire gpio6_5_slow;
    wire gpio6_5_tie_hi_esd;
    wire gpio6_5_tie_lo_esd;
    wire gpio6_5_vtrip_sel;
    wire gpio6_5_zero;
    wire gpio6_6_analog_en;
    wire gpio6_6_analog_pol;
    wire gpio6_6_analog_sel;
    wire gpio6_6_enable_h;
    wire gpio6_6_enable_inp_h;
    wire gpio6_6_enable_vdda_h;
    wire gpio6_6_enable_vddio;
    wire gpio6_6_enable_vswitch_h;
    wire gpio6_6_hld_h_n;
    wire gpio6_6_hld_ovr;
    wire gpio6_6_hys_trim;
    wire gpio6_6_in;
    wire gpio6_6_in_h;
    wire gpio6_6_inp_dis;
    wire gpio6_6_oe_n;
    wire gpio6_6_one;
    wire gpio6_6_out;
    wire gpio6_6_pad_a_esd_0_h;
    wire gpio6_6_pad_a_esd_1_h;
    wire gpio6_6_pad_a_noesd_h;
    wire gpio6_6_slow;
    wire gpio6_6_tie_hi_esd;
    wire gpio6_6_tie_lo_esd;
    wire gpio6_6_vtrip_sel;
    wire gpio6_6_zero;
    wire gpio6_7_analog_en;
    wire gpio6_7_analog_pol;
    wire gpio6_7_analog_sel;
    wire gpio6_7_enable_h;
    wire gpio6_7_enable_inp_h;
    wire gpio6_7_enable_vdda_h;
    wire gpio6_7_enable_vddio;
    wire gpio6_7_enable_vswitch_h;
    wire gpio6_7_hld_h_n;
    wire gpio6_7_hld_ovr;
    wire gpio6_7_hys_trim;
    wire gpio6_7_in;
    wire gpio6_7_in_h;
    wire gpio6_7_inp_dis;
    wire gpio6_7_oe_n;
    wire gpio6_7_one;
    wire gpio6_7_out;
    wire gpio6_7_pad_a_esd_0_h;
    wire gpio6_7_pad_a_esd_1_h;
    wire gpio6_7_pad_a_noesd_h;
    wire gpio6_7_slow;
    wire gpio6_7_tie_hi_esd;
    wire gpio6_7_tie_lo_esd;
    wire gpio6_7_vtrip_sel;
    wire gpio6_7_zero;
    wire gpio7_0_analog_en;
    wire gpio7_0_analog_pol;
    wire gpio7_0_analog_sel;
    wire gpio7_0_enable_h;
    wire gpio7_0_enable_inp_h;
    wire gpio7_0_enable_vdda_h;
    wire gpio7_0_enable_vddio;
    wire gpio7_0_enable_vswitch_h;
    wire gpio7_0_hld_h_n;
    wire gpio7_0_hld_ovr;
    wire gpio7_0_ib_mode_sel;
    wire gpio7_0_in;
    wire gpio7_0_in_h;
    wire gpio7_0_inp_dis;
    wire gpio7_0_oe_n;
    wire gpio7_0_one;
    wire gpio7_0_out;
    wire gpio7_0_pad_a_esd_0_h;
    wire gpio7_0_pad_a_esd_1_h;
    wire gpio7_0_pad_a_noesd_h;
    wire gpio7_0_slow;
    wire gpio7_0_tie_hi_esd;
    wire gpio7_0_tie_lo_esd;
    wire gpio7_0_vtrip_sel;
    wire gpio7_0_zero;
    wire gpio7_1_analog_en;
    wire gpio7_1_analog_pol;
    wire gpio7_1_analog_sel;
    wire gpio7_1_enable_h;
    wire gpio7_1_enable_inp_h;
    wire gpio7_1_enable_vdda_h;
    wire gpio7_1_enable_vddio;
    wire gpio7_1_enable_vswitch_h;
    wire gpio7_1_hld_h_n;
    wire gpio7_1_hld_ovr;
    wire gpio7_1_ib_mode_sel;
    wire gpio7_1_in;
    wire gpio7_1_in_h;
    wire gpio7_1_inp_dis;
    wire gpio7_1_oe_n;
    wire gpio7_1_one;
    wire gpio7_1_out;
    wire gpio7_1_pad_a_esd_0_h;
    wire gpio7_1_pad_a_esd_1_h;
    wire gpio7_1_pad_a_noesd_h;
    wire gpio7_1_slow;
    wire gpio7_1_tie_hi_esd;
    wire gpio7_1_tie_lo_esd;
    wire gpio7_1_vtrip_sel;
    wire gpio7_1_zero;
    wire gpio7_2_analog_en;
    wire gpio7_2_analog_pol;
    wire gpio7_2_analog_sel;
    wire gpio7_2_enable_h;
    wire gpio7_2_enable_inp_h;
    wire gpio7_2_enable_vdda_h;
    wire gpio7_2_enable_vddio;
    wire gpio7_2_enable_vswitch_h;
    wire gpio7_2_hld_h_n;
    wire gpio7_2_hld_ovr;
    wire gpio7_2_ib_mode_sel;
    wire gpio7_2_in;
    wire gpio7_2_in_h;
    wire gpio7_2_inp_dis;
    wire gpio7_2_oe_n;
    wire gpio7_2_one;
    wire gpio7_2_out;
    wire gpio7_2_pad_a_esd_0_h;
    wire gpio7_2_pad_a_esd_1_h;
    wire gpio7_2_pad_a_noesd_h;
    wire gpio7_2_slow;
    wire gpio7_2_tie_hi_esd;
    wire gpio7_2_tie_lo_esd;
    wire gpio7_2_vtrip_sel;
    wire gpio7_2_zero;
    wire gpio7_3_analog_en;
    wire gpio7_3_analog_pol;
    wire gpio7_3_analog_sel;
    wire gpio7_3_enable_h;
    wire gpio7_3_enable_inp_h;
    wire gpio7_3_enable_vdda_h;
    wire gpio7_3_enable_vddio;
    wire gpio7_3_enable_vswitch_h;
    wire gpio7_3_hld_h_n;
    wire gpio7_3_hld_ovr;
    wire gpio7_3_ib_mode_sel;
    wire gpio7_3_in;
    wire gpio7_3_in_h;
    wire gpio7_3_inp_dis;
    wire gpio7_3_oe_n;
    wire gpio7_3_one;
    wire gpio7_3_out;
    wire gpio7_3_pad_a_esd_0_h;
    wire gpio7_3_pad_a_esd_1_h;
    wire gpio7_3_pad_a_noesd_h;
    wire gpio7_3_slow;
    wire gpio7_3_tie_hi_esd;
    wire gpio7_3_tie_lo_esd;
    wire gpio7_3_vtrip_sel;
    wire gpio7_3_zero;
    wire gpio7_4_analog_en;
    wire gpio7_4_analog_pol;
    wire gpio7_4_analog_sel;
    wire gpio7_4_enable_h;
    wire gpio7_4_enable_inp_h;
    wire gpio7_4_enable_vdda_h;
    wire gpio7_4_enable_vddio;
    wire gpio7_4_enable_vswitch_h;
    wire gpio7_4_hld_h_n;
    wire gpio7_4_hld_ovr;
    wire gpio7_4_ib_mode_sel;
    wire gpio7_4_in;
    wire gpio7_4_in_h;
    wire gpio7_4_inp_dis;
    wire gpio7_4_oe_n;
    wire gpio7_4_one;
    wire gpio7_4_out;
    wire gpio7_4_pad_a_esd_0_h;
    wire gpio7_4_pad_a_esd_1_h;
    wire gpio7_4_pad_a_noesd_h;
    wire gpio7_4_slow;
    wire gpio7_4_tie_hi_esd;
    wire gpio7_4_tie_lo_esd;
    wire gpio7_4_vtrip_sel;
    wire gpio7_4_zero;
    wire gpio7_5_analog_en;
    wire gpio7_5_analog_pol;
    wire gpio7_5_analog_sel;
    wire gpio7_5_enable_h;
    wire gpio7_5_enable_inp_h;
    wire gpio7_5_enable_vdda_h;
    wire gpio7_5_enable_vddio;
    wire gpio7_5_enable_vswitch_h;
    wire gpio7_5_hld_h_n;
    wire gpio7_5_hld_ovr;
    wire gpio7_5_ib_mode_sel;
    wire gpio7_5_in;
    wire gpio7_5_in_h;
    wire gpio7_5_inp_dis;
    wire gpio7_5_oe_n;
    wire gpio7_5_one;
    wire gpio7_5_out;
    wire gpio7_5_pad_a_esd_0_h;
    wire gpio7_5_pad_a_esd_1_h;
    wire gpio7_5_pad_a_noesd_h;
    wire gpio7_5_slow;
    wire gpio7_5_tie_hi_esd;
    wire gpio7_5_tie_lo_esd;
    wire gpio7_5_vtrip_sel;
    wire gpio7_5_zero;
    wire gpio7_6_analog_en;
    wire gpio7_6_analog_pol;
    wire gpio7_6_analog_sel;
    wire gpio7_6_enable_h;
    wire gpio7_6_enable_inp_h;
    wire gpio7_6_enable_vdda_h;
    wire gpio7_6_enable_vddio;
    wire gpio7_6_enable_vswitch_h;
    wire gpio7_6_hld_h_n;
    wire gpio7_6_hld_ovr;
    wire gpio7_6_ib_mode_sel;
    wire gpio7_6_in;
    wire gpio7_6_in_h;
    wire gpio7_6_inp_dis;
    wire gpio7_6_oe_n;
    wire gpio7_6_one;
    wire gpio7_6_out;
    wire gpio7_6_pad_a_esd_0_h;
    wire gpio7_6_pad_a_esd_1_h;
    wire gpio7_6_pad_a_noesd_h;
    wire gpio7_6_slow;
    wire gpio7_6_tie_hi_esd;
    wire gpio7_6_tie_lo_esd;
    wire gpio7_6_vtrip_sel;
    wire gpio7_6_zero;
    wire gpio7_7_analog_en;
    wire gpio7_7_analog_pol;
    wire gpio7_7_analog_sel;
    wire gpio7_7_enable_h;
    wire gpio7_7_enable_inp_h;
    wire gpio7_7_enable_vdda_h;
    wire gpio7_7_enable_vddio;
    wire gpio7_7_enable_vswitch_h;
    wire gpio7_7_hld_h_n;
    wire gpio7_7_hld_ovr;
    wire gpio7_7_ib_mode_sel;
    wire gpio7_7_in;
    wire gpio7_7_in_h;
    wire gpio7_7_inp_dis;
    wire gpio7_7_oe_n;
    wire gpio7_7_one;
    wire gpio7_7_out;
    wire gpio7_7_pad_a_esd_0_h;
    wire gpio7_7_pad_a_esd_1_h;
    wire gpio7_7_pad_a_noesd_h;
    wire gpio7_7_slow;
    wire gpio7_7_tie_hi_esd;
    wire gpio7_7_tie_lo_esd;
    wire gpio7_7_vtrip_sel;
    wire gpio7_7_zero;
    wire gpio8_0_analog_en;
    wire gpio8_0_analog_pol;
    wire gpio8_0_analog_sel;
    wire gpio8_0_enable_h;
    wire gpio8_0_enable_inp_h;
    wire gpio8_0_enable_vdda_h;
    wire gpio8_0_enable_vddio;
    wire gpio8_0_enable_vswitch_h;
    wire gpio8_0_hld_h_n;
    wire gpio8_0_hld_ovr;
    wire gpio8_0_ib_mode_sel;
    wire gpio8_0_in;
    wire gpio8_0_in_h;
    wire gpio8_0_inp_dis;
    wire gpio8_0_oe_n;
    wire gpio8_0_one;
    wire gpio8_0_out;
    wire gpio8_0_pad_a_esd_0_h;
    wire gpio8_0_pad_a_esd_1_h;
    wire gpio8_0_pad_a_noesd_h;
    wire gpio8_0_slow;
    wire gpio8_0_tie_hi_esd;
    wire gpio8_0_tie_lo_esd;
    wire gpio8_0_vtrip_sel;
    wire gpio8_0_zero;
    wire gpio8_1_analog_en;
    wire gpio8_1_analog_pol;
    wire gpio8_1_analog_sel;
    wire gpio8_1_enable_h;
    wire gpio8_1_enable_inp_h;
    wire gpio8_1_enable_vdda_h;
    wire gpio8_1_enable_vddio;
    wire gpio8_1_enable_vswitch_h;
    wire gpio8_1_hld_h_n;
    wire gpio8_1_hld_ovr;
    wire gpio8_1_ib_mode_sel;
    wire gpio8_1_in;
    wire gpio8_1_in_h;
    wire gpio8_1_inp_dis;
    wire gpio8_1_oe_n;
    wire gpio8_1_one;
    wire gpio8_1_out;
    wire gpio8_1_pad_a_esd_0_h;
    wire gpio8_1_pad_a_esd_1_h;
    wire gpio8_1_pad_a_noesd_h;
    wire gpio8_1_slow;
    wire gpio8_1_tie_hi_esd;
    wire gpio8_1_tie_lo_esd;
    wire gpio8_1_vtrip_sel;
    wire gpio8_1_zero;
    wire gpio8_2_analog_en;
    wire gpio8_2_analog_pol;
    wire gpio8_2_analog_sel;
    wire gpio8_2_enable_h;
    wire gpio8_2_enable_inp_h;
    wire gpio8_2_enable_vdda_h;
    wire gpio8_2_enable_vddio;
    wire gpio8_2_enable_vswitch_h;
    wire gpio8_2_hld_h_n;
    wire gpio8_2_hld_ovr;
    wire gpio8_2_ib_mode_sel;
    wire gpio8_2_in;
    wire gpio8_2_in_h;
    wire gpio8_2_inp_dis;
    wire gpio8_2_oe_n;
    wire gpio8_2_one;
    wire gpio8_2_out;
    wire gpio8_2_pad_a_esd_0_h;
    wire gpio8_2_pad_a_esd_1_h;
    wire gpio8_2_pad_a_noesd_h;
    wire gpio8_2_slow;
    wire gpio8_2_tie_hi_esd;
    wire gpio8_2_tie_lo_esd;
    wire gpio8_2_vtrip_sel;
    wire gpio8_2_zero;
    wire gpio8_3_analog_en;
    wire gpio8_3_analog_pol;
    wire gpio8_3_analog_sel;
    wire gpio8_3_enable_h;
    wire gpio8_3_enable_inp_h;
    wire gpio8_3_enable_vdda_h;
    wire gpio8_3_enable_vddio;
    wire gpio8_3_enable_vswitch_h;
    wire gpio8_3_hld_h_n;
    wire gpio8_3_hld_ovr;
    wire gpio8_3_ib_mode_sel;
    wire gpio8_3_in;
    wire gpio8_3_in_h;
    wire gpio8_3_inp_dis;
    wire gpio8_3_oe_n;
    wire gpio8_3_one;
    wire gpio8_3_out;
    wire gpio8_3_pad_a_esd_0_h;
    wire gpio8_3_pad_a_esd_1_h;
    wire gpio8_3_pad_a_noesd_h;
    wire gpio8_3_slow;
    wire gpio8_3_tie_hi_esd;
    wire gpio8_3_tie_lo_esd;
    wire gpio8_3_vtrip_sel;
    wire gpio8_3_zero;
    wire gpio8_4_analog_en;
    wire gpio8_4_analog_pol;
    wire gpio8_4_analog_sel;
    wire gpio8_4_enable_h;
    wire gpio8_4_enable_inp_h;
    wire gpio8_4_enable_vdda_h;
    wire gpio8_4_enable_vddio;
    wire gpio8_4_enable_vswitch_h;
    wire gpio8_4_hld_h_n;
    wire gpio8_4_hld_ovr;
    wire gpio8_4_ib_mode_sel;
    wire gpio8_4_in;
    wire gpio8_4_in_h;
    wire gpio8_4_inp_dis;
    wire gpio8_4_oe_n;
    wire gpio8_4_one;
    wire gpio8_4_out;
    wire gpio8_4_pad_a_esd_0_h;
    wire gpio8_4_pad_a_esd_1_h;
    wire gpio8_4_pad_a_noesd_h;
    wire gpio8_4_slow;
    wire gpio8_4_tie_hi_esd;
    wire gpio8_4_tie_lo_esd;
    wire gpio8_4_vtrip_sel;
    wire gpio8_4_zero;
    wire gpio8_5_analog_en;
    wire gpio8_5_analog_pol;
    wire gpio8_5_analog_sel;
    wire gpio8_5_enable_h;
    wire gpio8_5_enable_inp_h;
    wire gpio8_5_enable_vdda_h;
    wire gpio8_5_enable_vddio;
    wire gpio8_5_enable_vswitch_h;
    wire gpio8_5_hld_h_n;
    wire gpio8_5_hld_ovr;
    wire gpio8_5_ib_mode_sel;
    wire gpio8_5_in;
    wire gpio8_5_in_h;
    wire gpio8_5_inp_dis;
    wire gpio8_5_oe_n;
    wire gpio8_5_one;
    wire gpio8_5_out;
    wire gpio8_5_pad_a_esd_0_h;
    wire gpio8_5_pad_a_esd_1_h;
    wire gpio8_5_pad_a_noesd_h;
    wire gpio8_5_slow;
    wire gpio8_5_tie_hi_esd;
    wire gpio8_5_tie_lo_esd;
    wire gpio8_5_vtrip_sel;
    wire gpio8_5_zero;
    wire gpio8_6_analog_en;
    wire gpio8_6_analog_pol;
    wire gpio8_6_analog_sel;
    wire gpio8_6_enable_h;
    wire gpio8_6_enable_inp_h;
    wire gpio8_6_enable_vdda_h;
    wire gpio8_6_enable_vddio;
    wire gpio8_6_enable_vswitch_h;
    wire gpio8_6_hld_h_n;
    wire gpio8_6_hld_ovr;
    wire gpio8_6_ib_mode_sel;
    wire gpio8_6_in;
    wire gpio8_6_in_h;
    wire gpio8_6_inp_dis;
    wire gpio8_6_oe_n;
    wire gpio8_6_one;
    wire gpio8_6_out;
    wire gpio8_6_pad_a_esd_0_h;
    wire gpio8_6_pad_a_esd_1_h;
    wire gpio8_6_pad_a_noesd_h;
    wire gpio8_6_slow;
    wire gpio8_6_tie_hi_esd;
    wire gpio8_6_tie_lo_esd;
    wire gpio8_6_vtrip_sel;
    wire gpio8_6_zero;
    wire gpio8_7_analog_en;
    wire gpio8_7_analog_pol;
    wire gpio8_7_analog_sel;
    wire gpio8_7_enable_h;
    wire gpio8_7_enable_inp_h;
    wire gpio8_7_enable_vdda_h;
    wire gpio8_7_enable_vddio;
    wire gpio8_7_enable_vswitch_h;
    wire gpio8_7_hld_h_n;
    wire gpio8_7_hld_ovr;
    wire gpio8_7_ib_mode_sel;
    wire gpio8_7_in;
    wire gpio8_7_in_h;
    wire gpio8_7_inp_dis;
    wire gpio8_7_oe_n;
    wire gpio8_7_one;
    wire gpio8_7_out;
    wire gpio8_7_pad_a_esd_0_h;
    wire gpio8_7_pad_a_esd_1_h;
    wire gpio8_7_pad_a_noesd_h;
    wire gpio8_7_slow;
    wire gpio8_7_tie_hi_esd;
    wire gpio8_7_tie_lo_esd;
    wire gpio8_7_vtrip_sel;
    wire gpio8_7_zero;
    wire muxsplit_ne_enable_vdda_h;
    wire muxsplit_ne_hld_vdda_h_n;
    wire muxsplit_ne_switch_aa_s0;
    wire muxsplit_ne_switch_aa_sl;
    wire muxsplit_ne_switch_aa_sr;
    wire muxsplit_ne_switch_bb_s0;
    wire muxsplit_ne_switch_bb_sl;
    wire muxsplit_ne_switch_bb_sr;
    wire muxsplit_nw_enable_vdda_h;
    wire muxsplit_nw_hld_vdda_h_n;
    wire muxsplit_nw_switch_aa_s0;
    wire muxsplit_nw_switch_aa_sl;
    wire muxsplit_nw_switch_aa_sr;
    wire muxsplit_nw_switch_bb_s0;
    wire muxsplit_nw_switch_bb_sl;
    wire muxsplit_nw_switch_bb_sr;
    wire muxsplit_se_enable_vdda_h;
    wire muxsplit_se_hld_vdda_h_n;
    wire muxsplit_se_switch_aa_s0;
    wire muxsplit_se_switch_aa_sl;
    wire muxsplit_se_switch_aa_sr;
    wire muxsplit_se_switch_bb_s0;
    wire muxsplit_se_switch_bb_sl;
    wire muxsplit_se_switch_bb_sr;
    wire muxsplit_sw_enable_vdda_h;
    wire muxsplit_sw_hld_vdda_h_n;
    wire muxsplit_sw_switch_aa_s0;
    wire muxsplit_sw_switch_aa_sl;
    wire muxsplit_sw_switch_aa_sr;
    wire muxsplit_sw_switch_bb_s0;
    wire muxsplit_sw_switch_bb_sl;
    wire muxsplit_sw_switch_bb_sr;
    wire pwrdet_in1_vddd_hv;
    wire pwrdet_in1_vddio_hv;
    wire pwrdet_in2_vddd_hv;
    wire pwrdet_in2_vddio_hv;
    wire pwrdet_in3_vddd_hv;
    wire pwrdet_in3_vddio_hv;
    wire pwrdet_out1_vddd_hv;
    wire pwrdet_out1_vddio_hv;
    wire pwrdet_out2_vddd_hv;
    wire pwrdet_out2_vddio_hv;
    wire pwrdet_out3_vddd_hv;
    wire pwrdet_out3_vddio_hv;
    wire pwrdet_rst_por_hv_n;
    wire pwrdet_tie_lo_esd;
    wire pwrdet_vddd_present_vddio_hv;
    wire pwrdet_vddio_present_vddd_hv;
    wire resetb_disable_pullup_h;
    wire resetb_en_vddio_sig_h;
    wire resetb_enable_h;
    wire resetb_enable_vddio;
    wire resetb_filt_in_h;
    wire resetb_inp_sel_h;
    wire resetb_pad_a_esd_h;
    wire resetb_pullup_h;
    wire resetb_tie_hi_esd;
    wire resetb_tie_lo_esd;
    wire resetb_tie_weak_hi_h;
    wire resetb_xres_h_n;
    wire resetb_xres_n;
    wire select_analog_en;
    wire select_analog_pol;
    wire select_analog_sel;
    wire select_enable_h;
    wire select_enable_inp_h;
    wire select_enable_vdda_h;
    wire select_enable_vddio;
    wire select_enable_vswitch_h;
    wire select_hld_h_n;
    wire select_hld_ovr;
    wire select_ib_mode_sel;
    wire select_in;
    wire select_in_h;
    wire select_inp_dis;
    wire select_oe_n;
    wire select_one;
    wire select_out;
    wire select_pad_a_esd_0_h;
    wire select_pad_a_esd_1_h;
    wire select_pad_a_noesd_h;
    wire select_slow;
    wire select_tie_hi_esd;
    wire select_tie_lo_esd;
    wire select_vtrip_sel;
    wire select_zero;
    wire sio_amuxbus_a;
    wire sio_amuxbus_b;
    wire sio_dft_refgen;
    wire sio_enable_h;
    wire sio_enable_vdda_h;
    wire sio_hld_h_n_refgen;
    wire sio_ibuf_sel_refgen;
    wire sio_vinref_dft;
    wire sio_vohref;
    wire sio_voutref_dft;
    wire sio_vreg_en_refgen;
    wire sio_vtrip_sel_refgen;
    wire vccd0_core;
    wire vccd1_core;
    wire vccd2_core;
    wire vdda0_core;
    wire vdda1_core;
    wire vdda2_core;
    wire vdda3_core;
    wire vddio_core;
    wire vref_e_enable_h;
    wire vref_e_hld_h_n;
    wire vref_e_vrefgen_en;
    wire vref_w_enable_h;
    wire vref_w_hld_h_n;
    wire vref_w_vrefgen_en;
    wire vref_e_vinref;
    wire vref_w_vinref;
    wire vssa0_core;
    wire vssa1_core;
    wire vssa2_core;
    wire vssa3_core;
    wire vssd0_core;
    wire vssd1_core;
    wire vssd2_core;
    wire vssio_core;
    wire xi0_core;
    wire xi1_core;
    wire xo0_core;
    wire xo1_core;

    panamax panamax(
        .amuxbus_a_n(amuxbus_a_n),
        .amuxbus_b_n(amuxbus_b_n),
        .analog_0(analog_0),
        .analog_0_core(analog_0_core),
        .analog_1(analog_1),
        .analog_1_core(analog_1_core),
        .gpio0_0(gpio0_0),
        .gpio0_0_analog_en(gpio0_0_analog_en),
        .gpio0_0_analog_pol(gpio0_0_analog_pol),
        .gpio0_0_analog_sel(gpio0_0_analog_sel),
        .gpio0_0_dm(gpio0_0_dm),
        .gpio0_0_enable_h(gpio0_0_enable_h),
        .gpio0_0_enable_inp_h(gpio0_0_enable_inp_h),
        .gpio0_0_enable_vdda_h(gpio0_0_enable_vdda_h),
        .gpio0_0_enable_vddio(gpio0_0_enable_vddio),
        .gpio0_0_enable_vswitch_h(gpio0_0_enable_vswitch_h),
        .gpio0_0_hld_h_n(gpio0_0_hld_h_n),
        .gpio0_0_hld_ovr(gpio0_0_hld_ovr),
        .gpio0_0_ib_mode_sel(gpio0_0_ib_mode_sel),
        .gpio0_0_in(gpio0_0_in),
        .gpio0_0_in_h(gpio0_0_in_h),
        .gpio0_0_inp_dis(gpio0_0_inp_dis),
        .gpio0_0_oe_n(gpio0_0_oe_n),
        .gpio0_0_one(gpio0_0_one),
        .gpio0_0_out(gpio0_0_out),
        .gpio0_0_pad_a_esd_0_h(gpio0_0_pad_a_esd_0_h),
        .gpio0_0_pad_a_esd_1_h(gpio0_0_pad_a_esd_1_h),
        .gpio0_0_pad_a_noesd_h(gpio0_0_pad_a_noesd_h),
        .gpio0_0_slow(gpio0_0_slow),
        .gpio0_0_tie_hi_esd(gpio0_0_tie_hi_esd),
        .gpio0_0_tie_lo_esd(gpio0_0_tie_lo_esd),
        .gpio0_0_vtrip_sel(gpio0_0_vtrip_sel),
        .gpio0_0_zero(gpio0_0_zero),
        .gpio0_1(gpio0_1),
        .gpio0_1_analog_en(gpio0_1_analog_en),
        .gpio0_1_analog_pol(gpio0_1_analog_pol),
        .gpio0_1_analog_sel(gpio0_1_analog_sel),
        .gpio0_1_dm(gpio0_1_dm),
        .gpio0_1_enable_h(gpio0_1_enable_h),
        .gpio0_1_enable_inp_h(gpio0_1_enable_inp_h),
        .gpio0_1_enable_vdda_h(gpio0_1_enable_vdda_h),
        .gpio0_1_enable_vddio(gpio0_1_enable_vddio),
        .gpio0_1_enable_vswitch_h(gpio0_1_enable_vswitch_h),
        .gpio0_1_hld_h_n(gpio0_1_hld_h_n),
        .gpio0_1_hld_ovr(gpio0_1_hld_ovr),
        .gpio0_1_ib_mode_sel(gpio0_1_ib_mode_sel),
        .gpio0_1_in(gpio0_1_in),
        .gpio0_1_in_h(gpio0_1_in_h),
        .gpio0_1_inp_dis(gpio0_1_inp_dis),
        .gpio0_1_oe_n(gpio0_1_oe_n),
        .gpio0_1_one(gpio0_1_one),
        .gpio0_1_out(gpio0_1_out),
        .gpio0_1_pad_a_esd_0_h(gpio0_1_pad_a_esd_0_h),
        .gpio0_1_pad_a_esd_1_h(gpio0_1_pad_a_esd_1_h),
        .gpio0_1_pad_a_noesd_h(gpio0_1_pad_a_noesd_h),
        .gpio0_1_slow(gpio0_1_slow),
        .gpio0_1_tie_hi_esd(gpio0_1_tie_hi_esd),
        .gpio0_1_tie_lo_esd(gpio0_1_tie_lo_esd),
        .gpio0_1_vtrip_sel(gpio0_1_vtrip_sel),
        .gpio0_1_zero(gpio0_1_zero),
        .gpio0_2(gpio0_2),
        .gpio0_2_analog_en(gpio0_2_analog_en),
        .gpio0_2_analog_pol(gpio0_2_analog_pol),
        .gpio0_2_analog_sel(gpio0_2_analog_sel),
        .gpio0_2_dm(gpio0_2_dm),
        .gpio0_2_enable_h(gpio0_2_enable_h),
        .gpio0_2_enable_inp_h(gpio0_2_enable_inp_h),
        .gpio0_2_enable_vdda_h(gpio0_2_enable_vdda_h),
        .gpio0_2_enable_vddio(gpio0_2_enable_vddio),
        .gpio0_2_enable_vswitch_h(gpio0_2_enable_vswitch_h),
        .gpio0_2_hld_h_n(gpio0_2_hld_h_n),
        .gpio0_2_hld_ovr(gpio0_2_hld_ovr),
        .gpio0_2_ib_mode_sel(gpio0_2_ib_mode_sel),
        .gpio0_2_in(gpio0_2_in),
        .gpio0_2_in_h(gpio0_2_in_h),
        .gpio0_2_inp_dis(gpio0_2_inp_dis),
        .gpio0_2_oe_n(gpio0_2_oe_n),
        .gpio0_2_one(gpio0_2_one),
        .gpio0_2_out(gpio0_2_out),
        .gpio0_2_pad_a_esd_0_h(gpio0_2_pad_a_esd_0_h),
        .gpio0_2_pad_a_esd_1_h(gpio0_2_pad_a_esd_1_h),
        .gpio0_2_pad_a_noesd_h(gpio0_2_pad_a_noesd_h),
        .gpio0_2_slow(gpio0_2_slow),
        .gpio0_2_tie_hi_esd(gpio0_2_tie_hi_esd),
        .gpio0_2_tie_lo_esd(gpio0_2_tie_lo_esd),
        .gpio0_2_vtrip_sel(gpio0_2_vtrip_sel),
        .gpio0_2_zero(gpio0_2_zero),
        .gpio0_3(gpio0_3),
        .gpio0_3_analog_en(gpio0_3_analog_en),
        .gpio0_3_analog_pol(gpio0_3_analog_pol),
        .gpio0_3_analog_sel(gpio0_3_analog_sel),
        .gpio0_3_dm(gpio0_3_dm),
        .gpio0_3_enable_h(gpio0_3_enable_h),
        .gpio0_3_enable_inp_h(gpio0_3_enable_inp_h),
        .gpio0_3_enable_vdda_h(gpio0_3_enable_vdda_h),
        .gpio0_3_enable_vddio(gpio0_3_enable_vddio),
        .gpio0_3_enable_vswitch_h(gpio0_3_enable_vswitch_h),
        .gpio0_3_hld_h_n(gpio0_3_hld_h_n),
        .gpio0_3_hld_ovr(gpio0_3_hld_ovr),
        .gpio0_3_ib_mode_sel(gpio0_3_ib_mode_sel),
        .gpio0_3_in(gpio0_3_in),
        .gpio0_3_in_h(gpio0_3_in_h),
        .gpio0_3_inp_dis(gpio0_3_inp_dis),
        .gpio0_3_oe_n(gpio0_3_oe_n),
        .gpio0_3_one(gpio0_3_one),
        .gpio0_3_out(gpio0_3_out),
        .gpio0_3_pad_a_esd_0_h(gpio0_3_pad_a_esd_0_h),
        .gpio0_3_pad_a_esd_1_h(gpio0_3_pad_a_esd_1_h),
        .gpio0_3_pad_a_noesd_h(gpio0_3_pad_a_noesd_h),
        .gpio0_3_slow(gpio0_3_slow),
        .gpio0_3_tie_hi_esd(gpio0_3_tie_hi_esd),
        .gpio0_3_tie_lo_esd(gpio0_3_tie_lo_esd),
        .gpio0_3_vtrip_sel(gpio0_3_vtrip_sel),
        .gpio0_3_zero(gpio0_3_zero),
        .gpio0_4(gpio0_4),
        .gpio0_4_analog_en(gpio0_4_analog_en),
        .gpio0_4_analog_pol(gpio0_4_analog_pol),
        .gpio0_4_analog_sel(gpio0_4_analog_sel),
        .gpio0_4_dm(gpio0_4_dm),
        .gpio0_4_enable_h(gpio0_4_enable_h),
        .gpio0_4_enable_inp_h(gpio0_4_enable_inp_h),
        .gpio0_4_enable_vdda_h(gpio0_4_enable_vdda_h),
        .gpio0_4_enable_vddio(gpio0_4_enable_vddio),
        .gpio0_4_enable_vswitch_h(gpio0_4_enable_vswitch_h),
        .gpio0_4_hld_h_n(gpio0_4_hld_h_n),
        .gpio0_4_hld_ovr(gpio0_4_hld_ovr),
        .gpio0_4_ib_mode_sel(gpio0_4_ib_mode_sel),
        .gpio0_4_in(gpio0_4_in),
        .gpio0_4_in_h(gpio0_4_in_h),
        .gpio0_4_inp_dis(gpio0_4_inp_dis),
        .gpio0_4_oe_n(gpio0_4_oe_n),
        .gpio0_4_one(gpio0_4_one),
        .gpio0_4_out(gpio0_4_out),
        .gpio0_4_pad_a_esd_0_h(gpio0_4_pad_a_esd_0_h),
        .gpio0_4_pad_a_esd_1_h(gpio0_4_pad_a_esd_1_h),
        .gpio0_4_pad_a_noesd_h(gpio0_4_pad_a_noesd_h),
        .gpio0_4_slow(gpio0_4_slow),
        .gpio0_4_tie_hi_esd(gpio0_4_tie_hi_esd),
        .gpio0_4_tie_lo_esd(gpio0_4_tie_lo_esd),
        .gpio0_4_vtrip_sel(gpio0_4_vtrip_sel),
        .gpio0_4_zero(gpio0_4_zero),
        .gpio0_5(gpio0_5),
        .gpio0_5_analog_en(gpio0_5_analog_en),
        .gpio0_5_analog_pol(gpio0_5_analog_pol),
        .gpio0_5_analog_sel(gpio0_5_analog_sel),
        .gpio0_5_dm(gpio0_5_dm),
        .gpio0_5_enable_h(gpio0_5_enable_h),
        .gpio0_5_enable_inp_h(gpio0_5_enable_inp_h),
        .gpio0_5_enable_vdda_h(gpio0_5_enable_vdda_h),
        .gpio0_5_enable_vddio(gpio0_5_enable_vddio),
        .gpio0_5_enable_vswitch_h(gpio0_5_enable_vswitch_h),
        .gpio0_5_hld_h_n(gpio0_5_hld_h_n),
        .gpio0_5_hld_ovr(gpio0_5_hld_ovr),
        .gpio0_5_ib_mode_sel(gpio0_5_ib_mode_sel),
        .gpio0_5_in(gpio0_5_in),
        .gpio0_5_in_h(gpio0_5_in_h),
        .gpio0_5_inp_dis(gpio0_5_inp_dis),
        .gpio0_5_oe_n(gpio0_5_oe_n),
        .gpio0_5_one(gpio0_5_one),
        .gpio0_5_out(gpio0_5_out),
        .gpio0_5_pad_a_esd_0_h(gpio0_5_pad_a_esd_0_h),
        .gpio0_5_pad_a_esd_1_h(gpio0_5_pad_a_esd_1_h),
        .gpio0_5_pad_a_noesd_h(gpio0_5_pad_a_noesd_h),
        .gpio0_5_slow(gpio0_5_slow),
        .gpio0_5_tie_hi_esd(gpio0_5_tie_hi_esd),
        .gpio0_5_tie_lo_esd(gpio0_5_tie_lo_esd),
        .gpio0_5_vtrip_sel(gpio0_5_vtrip_sel),
        .gpio0_5_zero(gpio0_5_zero),
        .gpio0_6(gpio0_6),
        .gpio0_6_analog_en(gpio0_6_analog_en),
        .gpio0_6_analog_pol(gpio0_6_analog_pol),
        .gpio0_6_analog_sel(gpio0_6_analog_sel),
        .gpio0_6_dm(gpio0_6_dm),
        .gpio0_6_enable_h(gpio0_6_enable_h),
        .gpio0_6_enable_inp_h(gpio0_6_enable_inp_h),
        .gpio0_6_enable_vdda_h(gpio0_6_enable_vdda_h),
        .gpio0_6_enable_vddio(gpio0_6_enable_vddio),
        .gpio0_6_enable_vswitch_h(gpio0_6_enable_vswitch_h),
        .gpio0_6_hld_h_n(gpio0_6_hld_h_n),
        .gpio0_6_hld_ovr(gpio0_6_hld_ovr),
        .gpio0_6_ib_mode_sel(gpio0_6_ib_mode_sel),
        .gpio0_6_in(gpio0_6_in),
        .gpio0_6_in_h(gpio0_6_in_h),
        .gpio0_6_inp_dis(gpio0_6_inp_dis),
        .gpio0_6_oe_n(gpio0_6_oe_n),
        .gpio0_6_one(gpio0_6_one),
        .gpio0_6_out(gpio0_6_out),
        .gpio0_6_pad_a_esd_0_h(gpio0_6_pad_a_esd_0_h),
        .gpio0_6_pad_a_esd_1_h(gpio0_6_pad_a_esd_1_h),
        .gpio0_6_pad_a_noesd_h(gpio0_6_pad_a_noesd_h),
        .gpio0_6_slow(gpio0_6_slow),
        .gpio0_6_tie_hi_esd(gpio0_6_tie_hi_esd),
        .gpio0_6_tie_lo_esd(gpio0_6_tie_lo_esd),
        .gpio0_6_vtrip_sel(gpio0_6_vtrip_sel),
        .gpio0_6_zero(gpio0_6_zero),
        .gpio0_7(gpio0_7),
        .gpio0_7_analog_en(gpio0_7_analog_en),
        .gpio0_7_analog_pol(gpio0_7_analog_pol),
        .gpio0_7_analog_sel(gpio0_7_analog_sel),
        .gpio0_7_dm(gpio0_7_dm),
        .gpio0_7_enable_h(gpio0_7_enable_h),
        .gpio0_7_enable_inp_h(gpio0_7_enable_inp_h),
        .gpio0_7_enable_vdda_h(gpio0_7_enable_vdda_h),
        .gpio0_7_enable_vddio(gpio0_7_enable_vddio),
        .gpio0_7_enable_vswitch_h(gpio0_7_enable_vswitch_h),
        .gpio0_7_hld_h_n(gpio0_7_hld_h_n),
        .gpio0_7_hld_ovr(gpio0_7_hld_ovr),
        .gpio0_7_ib_mode_sel(gpio0_7_ib_mode_sel),
        .gpio0_7_in(gpio0_7_in),
        .gpio0_7_in_h(gpio0_7_in_h),
        .gpio0_7_inp_dis(gpio0_7_inp_dis),
        .gpio0_7_oe_n(gpio0_7_oe_n),
        .gpio0_7_one(gpio0_7_one),
        .gpio0_7_out(gpio0_7_out),
        .gpio0_7_pad_a_esd_0_h(gpio0_7_pad_a_esd_0_h),
        .gpio0_7_pad_a_esd_1_h(gpio0_7_pad_a_esd_1_h),
        .gpio0_7_pad_a_noesd_h(gpio0_7_pad_a_noesd_h),
        .gpio0_7_slow(gpio0_7_slow),
        .gpio0_7_tie_hi_esd(gpio0_7_tie_hi_esd),
        .gpio0_7_tie_lo_esd(gpio0_7_tie_lo_esd),
        .gpio0_7_vtrip_sel(gpio0_7_vtrip_sel),
        .gpio0_7_zero(gpio0_7_zero),
        .gpio1_0(gpio1_0),
        .gpio1_0_analog_en(gpio1_0_analog_en),
        .gpio1_0_analog_pol(gpio1_0_analog_pol),
        .gpio1_0_analog_sel(gpio1_0_analog_sel),
        .gpio1_0_dm(gpio1_0_dm),
        .gpio1_0_enable_h(gpio1_0_enable_h),
        .gpio1_0_enable_inp_h(gpio1_0_enable_inp_h),
        .gpio1_0_enable_vdda_h(gpio1_0_enable_vdda_h),
        .gpio1_0_enable_vddio(gpio1_0_enable_vddio),
        .gpio1_0_enable_vswitch_h(gpio1_0_enable_vswitch_h),
        .gpio1_0_hld_h_n(gpio1_0_hld_h_n),
        .gpio1_0_hld_ovr(gpio1_0_hld_ovr),
        .gpio1_0_hys_trim(gpio1_0_hys_trim),
        .gpio1_0_ib_mode_sel(gpio1_0_ib_mode_sel),
        .gpio1_0_in(gpio1_0_in),
        .gpio1_0_in_h(gpio1_0_in_h),
        .gpio1_0_inp_dis(gpio1_0_inp_dis),
        .gpio1_0_oe_n(gpio1_0_oe_n),
        .gpio1_0_one(gpio1_0_one),
        .gpio1_0_out(gpio1_0_out),
        .gpio1_0_pad_a_esd_0_h(gpio1_0_pad_a_esd_0_h),
        .gpio1_0_pad_a_esd_1_h(gpio1_0_pad_a_esd_1_h),
        .gpio1_0_pad_a_noesd_h(gpio1_0_pad_a_noesd_h),
        .gpio1_0_slew_ctl(gpio1_0_slew_ctl),
        .gpio1_0_slow(gpio1_0_slow),
        .gpio1_0_tie_hi_esd(gpio1_0_tie_hi_esd),
        .gpio1_0_tie_lo_esd(gpio1_0_tie_lo_esd),
        .gpio1_0_vtrip_sel(gpio1_0_vtrip_sel),
        .gpio1_0_zero(gpio1_0_zero),
        .gpio1_1(gpio1_1),
        .gpio1_1_analog_en(gpio1_1_analog_en),
        .gpio1_1_analog_pol(gpio1_1_analog_pol),
        .gpio1_1_analog_sel(gpio1_1_analog_sel),
        .gpio1_1_dm(gpio1_1_dm),
        .gpio1_1_enable_h(gpio1_1_enable_h),
        .gpio1_1_enable_inp_h(gpio1_1_enable_inp_h),
        .gpio1_1_enable_vdda_h(gpio1_1_enable_vdda_h),
        .gpio1_1_enable_vddio(gpio1_1_enable_vddio),
        .gpio1_1_enable_vswitch_h(gpio1_1_enable_vswitch_h),
        .gpio1_1_hld_h_n(gpio1_1_hld_h_n),
        .gpio1_1_hld_ovr(gpio1_1_hld_ovr),
        .gpio1_1_hys_trim(gpio1_1_hys_trim),
        .gpio1_1_ib_mode_sel(gpio1_1_ib_mode_sel),
        .gpio1_1_in(gpio1_1_in),
        .gpio1_1_in_h(gpio1_1_in_h),
        .gpio1_1_inp_dis(gpio1_1_inp_dis),
        .gpio1_1_oe_n(gpio1_1_oe_n),
        .gpio1_1_one(gpio1_1_one),
        .gpio1_1_out(gpio1_1_out),
        .gpio1_1_pad_a_esd_0_h(gpio1_1_pad_a_esd_0_h),
        .gpio1_1_pad_a_esd_1_h(gpio1_1_pad_a_esd_1_h),
        .gpio1_1_pad_a_noesd_h(gpio1_1_pad_a_noesd_h),
        .gpio1_1_slew_ctl(gpio1_1_slew_ctl),
        .gpio1_1_slow(gpio1_1_slow),
        .gpio1_1_tie_hi_esd(gpio1_1_tie_hi_esd),
        .gpio1_1_tie_lo_esd(gpio1_1_tie_lo_esd),
        .gpio1_1_vtrip_sel(gpio1_1_vtrip_sel),
        .gpio1_1_zero(gpio1_1_zero),
        .gpio1_2(gpio1_2),
        .gpio1_2_analog_en(gpio1_2_analog_en),
        .gpio1_2_analog_pol(gpio1_2_analog_pol),
        .gpio1_2_analog_sel(gpio1_2_analog_sel),
        .gpio1_2_dm(gpio1_2_dm),
        .gpio1_2_enable_h(gpio1_2_enable_h),
        .gpio1_2_enable_inp_h(gpio1_2_enable_inp_h),
        .gpio1_2_enable_vdda_h(gpio1_2_enable_vdda_h),
        .gpio1_2_enable_vddio(gpio1_2_enable_vddio),
        .gpio1_2_enable_vswitch_h(gpio1_2_enable_vswitch_h),
        .gpio1_2_hld_h_n(gpio1_2_hld_h_n),
        .gpio1_2_hld_ovr(gpio1_2_hld_ovr),
        .gpio1_2_hys_trim(gpio1_2_hys_trim),
        .gpio1_2_ib_mode_sel(gpio1_2_ib_mode_sel),
        .gpio1_2_in(gpio1_2_in),
        .gpio1_2_in_h(gpio1_2_in_h),
        .gpio1_2_inp_dis(gpio1_2_inp_dis),
        .gpio1_2_oe_n(gpio1_2_oe_n),
        .gpio1_2_one(gpio1_2_one),
        .gpio1_2_out(gpio1_2_out),
        .gpio1_2_pad_a_esd_0_h(gpio1_2_pad_a_esd_0_h),
        .gpio1_2_pad_a_esd_1_h(gpio1_2_pad_a_esd_1_h),
        .gpio1_2_pad_a_noesd_h(gpio1_2_pad_a_noesd_h),
        .gpio1_2_slew_ctl(gpio1_2_slew_ctl),
        .gpio1_2_slow(gpio1_2_slow),
        .gpio1_2_tie_hi_esd(gpio1_2_tie_hi_esd),
        .gpio1_2_tie_lo_esd(gpio1_2_tie_lo_esd),
        .gpio1_2_vtrip_sel(gpio1_2_vtrip_sel),
        .gpio1_2_zero(gpio1_2_zero),
        .gpio1_3(gpio1_3),
        .gpio1_3_analog_en(gpio1_3_analog_en),
        .gpio1_3_analog_pol(gpio1_3_analog_pol),
        .gpio1_3_analog_sel(gpio1_3_analog_sel),
        .gpio1_3_dm(gpio1_3_dm),
        .gpio1_3_enable_h(gpio1_3_enable_h),
        .gpio1_3_enable_inp_h(gpio1_3_enable_inp_h),
        .gpio1_3_enable_vdda_h(gpio1_3_enable_vdda_h),
        .gpio1_3_enable_vddio(gpio1_3_enable_vddio),
        .gpio1_3_enable_vswitch_h(gpio1_3_enable_vswitch_h),
        .gpio1_3_hld_h_n(gpio1_3_hld_h_n),
        .gpio1_3_hld_ovr(gpio1_3_hld_ovr),
        .gpio1_3_hys_trim(gpio1_3_hys_trim),
        .gpio1_3_ib_mode_sel(gpio1_3_ib_mode_sel),
        .gpio1_3_in(gpio1_3_in),
        .gpio1_3_in_h(gpio1_3_in_h),
        .gpio1_3_inp_dis(gpio1_3_inp_dis),
        .gpio1_3_oe_n(gpio1_3_oe_n),
        .gpio1_3_one(gpio1_3_one),
        .gpio1_3_out(gpio1_3_out),
        .gpio1_3_pad_a_esd_0_h(gpio1_3_pad_a_esd_0_h),
        .gpio1_3_pad_a_esd_1_h(gpio1_3_pad_a_esd_1_h),
        .gpio1_3_pad_a_noesd_h(gpio1_3_pad_a_noesd_h),
        .gpio1_3_slew_ctl(gpio1_3_slew_ctl),
        .gpio1_3_slow(gpio1_3_slow),
        .gpio1_3_tie_hi_esd(gpio1_3_tie_hi_esd),
        .gpio1_3_tie_lo_esd(gpio1_3_tie_lo_esd),
        .gpio1_3_vtrip_sel(gpio1_3_vtrip_sel),
        .gpio1_3_zero(gpio1_3_zero),
        .gpio1_4(gpio1_4),
        .gpio1_4_analog_en(gpio1_4_analog_en),
        .gpio1_4_analog_pol(gpio1_4_analog_pol),
        .gpio1_4_analog_sel(gpio1_4_analog_sel),
        .gpio1_4_dm(gpio1_4_dm),
        .gpio1_4_enable_h(gpio1_4_enable_h),
        .gpio1_4_enable_inp_h(gpio1_4_enable_inp_h),
        .gpio1_4_enable_vdda_h(gpio1_4_enable_vdda_h),
        .gpio1_4_enable_vddio(gpio1_4_enable_vddio),
        .gpio1_4_enable_vswitch_h(gpio1_4_enable_vswitch_h),
        .gpio1_4_hld_h_n(gpio1_4_hld_h_n),
        .gpio1_4_hld_ovr(gpio1_4_hld_ovr),
        .gpio1_4_hys_trim(gpio1_4_hys_trim),
        .gpio1_4_ib_mode_sel(gpio1_4_ib_mode_sel),
        .gpio1_4_in(gpio1_4_in),
        .gpio1_4_in_h(gpio1_4_in_h),
        .gpio1_4_inp_dis(gpio1_4_inp_dis),
        .gpio1_4_oe_n(gpio1_4_oe_n),
        .gpio1_4_one(gpio1_4_one),
        .gpio1_4_out(gpio1_4_out),
        .gpio1_4_pad_a_esd_0_h(gpio1_4_pad_a_esd_0_h),
        .gpio1_4_pad_a_esd_1_h(gpio1_4_pad_a_esd_1_h),
        .gpio1_4_pad_a_noesd_h(gpio1_4_pad_a_noesd_h),
        .gpio1_4_slew_ctl(gpio1_4_slew_ctl),
        .gpio1_4_slow(gpio1_4_slow),
        .gpio1_4_tie_hi_esd(gpio1_4_tie_hi_esd),
        .gpio1_4_tie_lo_esd(gpio1_4_tie_lo_esd),
        .gpio1_4_vtrip_sel(gpio1_4_vtrip_sel),
        .gpio1_4_zero(gpio1_4_zero),
        .gpio1_5(gpio1_5),
        .gpio1_5_analog_en(gpio1_5_analog_en),
        .gpio1_5_analog_pol(gpio1_5_analog_pol),
        .gpio1_5_analog_sel(gpio1_5_analog_sel),
        .gpio1_5_dm(gpio1_5_dm),
        .gpio1_5_enable_h(gpio1_5_enable_h),
        .gpio1_5_enable_inp_h(gpio1_5_enable_inp_h),
        .gpio1_5_enable_vdda_h(gpio1_5_enable_vdda_h),
        .gpio1_5_enable_vddio(gpio1_5_enable_vddio),
        .gpio1_5_enable_vswitch_h(gpio1_5_enable_vswitch_h),
        .gpio1_5_hld_h_n(gpio1_5_hld_h_n),
        .gpio1_5_hld_ovr(gpio1_5_hld_ovr),
        .gpio1_5_hys_trim(gpio1_5_hys_trim),
        .gpio1_5_ib_mode_sel(gpio1_5_ib_mode_sel),
        .gpio1_5_in(gpio1_5_in),
        .gpio1_5_in_h(gpio1_5_in_h),
        .gpio1_5_inp_dis(gpio1_5_inp_dis),
        .gpio1_5_oe_n(gpio1_5_oe_n),
        .gpio1_5_one(gpio1_5_one),
        .gpio1_5_out(gpio1_5_out),
        .gpio1_5_pad_a_esd_0_h(gpio1_5_pad_a_esd_0_h),
        .gpio1_5_pad_a_esd_1_h(gpio1_5_pad_a_esd_1_h),
        .gpio1_5_pad_a_noesd_h(gpio1_5_pad_a_noesd_h),
        .gpio1_5_slew_ctl(gpio1_5_slew_ctl),
        .gpio1_5_slow(gpio1_5_slow),
        .gpio1_5_tie_hi_esd(gpio1_5_tie_hi_esd),
        .gpio1_5_tie_lo_esd(gpio1_5_tie_lo_esd),
        .gpio1_5_vtrip_sel(gpio1_5_vtrip_sel),
        .gpio1_5_zero(gpio1_5_zero),
        .gpio1_6(gpio1_6),
        .gpio1_6_analog_en(gpio1_6_analog_en),
        .gpio1_6_analog_pol(gpio1_6_analog_pol),
        .gpio1_6_analog_sel(gpio1_6_analog_sel),
        .gpio1_6_dm(gpio1_6_dm),
        .gpio1_6_enable_h(gpio1_6_enable_h),
        .gpio1_6_enable_inp_h(gpio1_6_enable_inp_h),
        .gpio1_6_enable_vdda_h(gpio1_6_enable_vdda_h),
        .gpio1_6_enable_vddio(gpio1_6_enable_vddio),
        .gpio1_6_enable_vswitch_h(gpio1_6_enable_vswitch_h),
        .gpio1_6_hld_h_n(gpio1_6_hld_h_n),
        .gpio1_6_hld_ovr(gpio1_6_hld_ovr),
        .gpio1_6_hys_trim(gpio1_6_hys_trim),
        .gpio1_6_ib_mode_sel(gpio1_6_ib_mode_sel),
        .gpio1_6_in(gpio1_6_in),
        .gpio1_6_in_h(gpio1_6_in_h),
        .gpio1_6_inp_dis(gpio1_6_inp_dis),
        .gpio1_6_oe_n(gpio1_6_oe_n),
        .gpio1_6_one(gpio1_6_one),
        .gpio1_6_out(gpio1_6_out),
        .gpio1_6_pad_a_esd_0_h(gpio1_6_pad_a_esd_0_h),
        .gpio1_6_pad_a_esd_1_h(gpio1_6_pad_a_esd_1_h),
        .gpio1_6_pad_a_noesd_h(gpio1_6_pad_a_noesd_h),
        .gpio1_6_slew_ctl(gpio1_6_slew_ctl),
        .gpio1_6_slow(gpio1_6_slow),
        .gpio1_6_tie_hi_esd(gpio1_6_tie_hi_esd),
        .gpio1_6_tie_lo_esd(gpio1_6_tie_lo_esd),
        .gpio1_6_vtrip_sel(gpio1_6_vtrip_sel),
        .gpio1_6_zero(gpio1_6_zero),
        .gpio1_7(gpio1_7),
        .gpio1_7_analog_en(gpio1_7_analog_en),
        .gpio1_7_analog_pol(gpio1_7_analog_pol),
        .gpio1_7_analog_sel(gpio1_7_analog_sel),
        .gpio1_7_dm(gpio1_7_dm),
        .gpio1_7_enable_h(gpio1_7_enable_h),
        .gpio1_7_enable_inp_h(gpio1_7_enable_inp_h),
        .gpio1_7_enable_vdda_h(gpio1_7_enable_vdda_h),
        .gpio1_7_enable_vddio(gpio1_7_enable_vddio),
        .gpio1_7_enable_vswitch_h(gpio1_7_enable_vswitch_h),
        .gpio1_7_hld_h_n(gpio1_7_hld_h_n),
        .gpio1_7_hld_ovr(gpio1_7_hld_ovr),
        .gpio1_7_hys_trim(gpio1_7_hys_trim),
        .gpio1_7_ib_mode_sel(gpio1_7_ib_mode_sel),
        .gpio1_7_in(gpio1_7_in),
        .gpio1_7_in_h(gpio1_7_in_h),
        .gpio1_7_inp_dis(gpio1_7_inp_dis),
        .gpio1_7_oe_n(gpio1_7_oe_n),
        .gpio1_7_one(gpio1_7_one),
        .gpio1_7_out(gpio1_7_out),
        .gpio1_7_pad_a_esd_0_h(gpio1_7_pad_a_esd_0_h),
        .gpio1_7_pad_a_esd_1_h(gpio1_7_pad_a_esd_1_h),
        .gpio1_7_pad_a_noesd_h(gpio1_7_pad_a_noesd_h),
        .gpio1_7_slew_ctl(gpio1_7_slew_ctl),
        .gpio1_7_slow(gpio1_7_slow),
        .gpio1_7_tie_hi_esd(gpio1_7_tie_hi_esd),
        .gpio1_7_tie_lo_esd(gpio1_7_tie_lo_esd),
        .gpio1_7_vtrip_sel(gpio1_7_vtrip_sel),
        .gpio1_7_zero(gpio1_7_zero),
        .gpio2_0(gpio2_0),
        .gpio2_0_analog_en(gpio2_0_analog_en),
        .gpio2_0_analog_pol(gpio2_0_analog_pol),
        .gpio2_0_analog_sel(gpio2_0_analog_sel),
        .gpio2_0_dm(gpio2_0_dm),
        .gpio2_0_enable_h(gpio2_0_enable_h),
        .gpio2_0_enable_inp_h(gpio2_0_enable_inp_h),
        .gpio2_0_enable_vdda_h(gpio2_0_enable_vdda_h),
        .gpio2_0_enable_vddio(gpio2_0_enable_vddio),
        .gpio2_0_enable_vswitch_h(gpio2_0_enable_vswitch_h),
        .gpio2_0_hld_h_n(gpio2_0_hld_h_n),
        .gpio2_0_hld_ovr(gpio2_0_hld_ovr),
        .gpio2_0_ib_mode_sel(gpio2_0_ib_mode_sel),
        .gpio2_0_in(gpio2_0_in),
        .gpio2_0_in_h(gpio2_0_in_h),
        .gpio2_0_inp_dis(gpio2_0_inp_dis),
        .gpio2_0_oe_n(gpio2_0_oe_n),
        .gpio2_0_one(gpio2_0_one),
        .gpio2_0_out(gpio2_0_out),
        .gpio2_0_pad_a_esd_0_h(gpio2_0_pad_a_esd_0_h),
        .gpio2_0_pad_a_esd_1_h(gpio2_0_pad_a_esd_1_h),
        .gpio2_0_pad_a_noesd_h(gpio2_0_pad_a_noesd_h),
        .gpio2_0_slow(gpio2_0_slow),
        .gpio2_0_tie_hi_esd(gpio2_0_tie_hi_esd),
        .gpio2_0_tie_lo_esd(gpio2_0_tie_lo_esd),
        .gpio2_0_vtrip_sel(gpio2_0_vtrip_sel),
        .gpio2_0_zero(gpio2_0_zero),
        .gpio2_1(gpio2_1),
        .gpio2_1_analog_en(gpio2_1_analog_en),
        .gpio2_1_analog_pol(gpio2_1_analog_pol),
        .gpio2_1_analog_sel(gpio2_1_analog_sel),
        .gpio2_1_dm(gpio2_1_dm),
        .gpio2_1_enable_h(gpio2_1_enable_h),
        .gpio2_1_enable_inp_h(gpio2_1_enable_inp_h),
        .gpio2_1_enable_vdda_h(gpio2_1_enable_vdda_h),
        .gpio2_1_enable_vddio(gpio2_1_enable_vddio),
        .gpio2_1_enable_vswitch_h(gpio2_1_enable_vswitch_h),
        .gpio2_1_hld_h_n(gpio2_1_hld_h_n),
        .gpio2_1_hld_ovr(gpio2_1_hld_ovr),
        .gpio2_1_ib_mode_sel(gpio2_1_ib_mode_sel),
        .gpio2_1_in(gpio2_1_in),
        .gpio2_1_in_h(gpio2_1_in_h),
        .gpio2_1_inp_dis(gpio2_1_inp_dis),
        .gpio2_1_oe_n(gpio2_1_oe_n),
        .gpio2_1_one(gpio2_1_one),
        .gpio2_1_out(gpio2_1_out),
        .gpio2_1_pad_a_esd_0_h(gpio2_1_pad_a_esd_0_h),
        .gpio2_1_pad_a_esd_1_h(gpio2_1_pad_a_esd_1_h),
        .gpio2_1_pad_a_noesd_h(gpio2_1_pad_a_noesd_h),
        .gpio2_1_slow(gpio2_1_slow),
        .gpio2_1_tie_hi_esd(gpio2_1_tie_hi_esd),
        .gpio2_1_tie_lo_esd(gpio2_1_tie_lo_esd),
        .gpio2_1_vtrip_sel(gpio2_1_vtrip_sel),
        .gpio2_1_zero(gpio2_1_zero),
        .gpio2_2(gpio2_2),
        .gpio2_2_analog_en(gpio2_2_analog_en),
        .gpio2_2_analog_pol(gpio2_2_analog_pol),
        .gpio2_2_analog_sel(gpio2_2_analog_sel),
        .gpio2_2_dm(gpio2_2_dm),
        .gpio2_2_enable_h(gpio2_2_enable_h),
        .gpio2_2_enable_inp_h(gpio2_2_enable_inp_h),
        .gpio2_2_enable_vdda_h(gpio2_2_enable_vdda_h),
        .gpio2_2_enable_vddio(gpio2_2_enable_vddio),
        .gpio2_2_enable_vswitch_h(gpio2_2_enable_vswitch_h),
        .gpio2_2_hld_h_n(gpio2_2_hld_h_n),
        .gpio2_2_hld_ovr(gpio2_2_hld_ovr),
        .gpio2_2_ib_mode_sel(gpio2_2_ib_mode_sel),
        .gpio2_2_in(gpio2_2_in),
        .gpio2_2_in_h(gpio2_2_in_h),
        .gpio2_2_inp_dis(gpio2_2_inp_dis),
        .gpio2_2_oe_n(gpio2_2_oe_n),
        .gpio2_2_one(gpio2_2_one),
        .gpio2_2_out(gpio2_2_out),
        .gpio2_2_pad_a_esd_0_h(gpio2_2_pad_a_esd_0_h),
        .gpio2_2_pad_a_esd_1_h(gpio2_2_pad_a_esd_1_h),
        .gpio2_2_pad_a_noesd_h(gpio2_2_pad_a_noesd_h),
        .gpio2_2_slow(gpio2_2_slow),
        .gpio2_2_tie_hi_esd(gpio2_2_tie_hi_esd),
        .gpio2_2_tie_lo_esd(gpio2_2_tie_lo_esd),
        .gpio2_2_vtrip_sel(gpio2_2_vtrip_sel),
        .gpio2_2_zero(gpio2_2_zero),
        .gpio2_3(gpio2_3),
        .gpio2_3_analog_en(gpio2_3_analog_en),
        .gpio2_3_analog_pol(gpio2_3_analog_pol),
        .gpio2_3_analog_sel(gpio2_3_analog_sel),
        .gpio2_3_dm(gpio2_3_dm),
        .gpio2_3_enable_h(gpio2_3_enable_h),
        .gpio2_3_enable_inp_h(gpio2_3_enable_inp_h),
        .gpio2_3_enable_vdda_h(gpio2_3_enable_vdda_h),
        .gpio2_3_enable_vddio(gpio2_3_enable_vddio),
        .gpio2_3_enable_vswitch_h(gpio2_3_enable_vswitch_h),
        .gpio2_3_hld_h_n(gpio2_3_hld_h_n),
        .gpio2_3_hld_ovr(gpio2_3_hld_ovr),
        .gpio2_3_ib_mode_sel(gpio2_3_ib_mode_sel),
        .gpio2_3_in(gpio2_3_in),
        .gpio2_3_in_h(gpio2_3_in_h),
        .gpio2_3_inp_dis(gpio2_3_inp_dis),
        .gpio2_3_oe_n(gpio2_3_oe_n),
        .gpio2_3_one(gpio2_3_one),
        .gpio2_3_out(gpio2_3_out),
        .gpio2_3_pad_a_esd_0_h(gpio2_3_pad_a_esd_0_h),
        .gpio2_3_pad_a_esd_1_h(gpio2_3_pad_a_esd_1_h),
        .gpio2_3_pad_a_noesd_h(gpio2_3_pad_a_noesd_h),
        .gpio2_3_slow(gpio2_3_slow),
        .gpio2_3_tie_hi_esd(gpio2_3_tie_hi_esd),
        .gpio2_3_tie_lo_esd(gpio2_3_tie_lo_esd),
        .gpio2_3_vtrip_sel(gpio2_3_vtrip_sel),
        .gpio2_3_zero(gpio2_3_zero),
        .gpio2_4(gpio2_4),
        .gpio2_4_analog_en(gpio2_4_analog_en),
        .gpio2_4_analog_pol(gpio2_4_analog_pol),
        .gpio2_4_analog_sel(gpio2_4_analog_sel),
        .gpio2_4_dm(gpio2_4_dm),
        .gpio2_4_enable_h(gpio2_4_enable_h),
        .gpio2_4_enable_inp_h(gpio2_4_enable_inp_h),
        .gpio2_4_enable_vdda_h(gpio2_4_enable_vdda_h),
        .gpio2_4_enable_vddio(gpio2_4_enable_vddio),
        .gpio2_4_enable_vswitch_h(gpio2_4_enable_vswitch_h),
        .gpio2_4_hld_h_n(gpio2_4_hld_h_n),
        .gpio2_4_hld_ovr(gpio2_4_hld_ovr),
        .gpio2_4_ib_mode_sel(gpio2_4_ib_mode_sel),
        .gpio2_4_in(gpio2_4_in),
        .gpio2_4_in_h(gpio2_4_in_h),
        .gpio2_4_inp_dis(gpio2_4_inp_dis),
        .gpio2_4_oe_n(gpio2_4_oe_n),
        .gpio2_4_one(gpio2_4_one),
        .gpio2_4_out(gpio2_4_out),
        .gpio2_4_pad_a_esd_0_h(gpio2_4_pad_a_esd_0_h),
        .gpio2_4_pad_a_esd_1_h(gpio2_4_pad_a_esd_1_h),
        .gpio2_4_pad_a_noesd_h(gpio2_4_pad_a_noesd_h),
        .gpio2_4_slow(gpio2_4_slow),
        .gpio2_4_tie_hi_esd(gpio2_4_tie_hi_esd),
        .gpio2_4_tie_lo_esd(gpio2_4_tie_lo_esd),
        .gpio2_4_vtrip_sel(gpio2_4_vtrip_sel),
        .gpio2_4_zero(gpio2_4_zero),
        .gpio2_5(gpio2_5),
        .gpio2_5_analog_en(gpio2_5_analog_en),
        .gpio2_5_analog_pol(gpio2_5_analog_pol),
        .gpio2_5_analog_sel(gpio2_5_analog_sel),
        .gpio2_5_dm(gpio2_5_dm),
        .gpio2_5_enable_h(gpio2_5_enable_h),
        .gpio2_5_enable_inp_h(gpio2_5_enable_inp_h),
        .gpio2_5_enable_vdda_h(gpio2_5_enable_vdda_h),
        .gpio2_5_enable_vddio(gpio2_5_enable_vddio),
        .gpio2_5_enable_vswitch_h(gpio2_5_enable_vswitch_h),
        .gpio2_5_hld_h_n(gpio2_5_hld_h_n),
        .gpio2_5_hld_ovr(gpio2_5_hld_ovr),
        .gpio2_5_ib_mode_sel(gpio2_5_ib_mode_sel),
        .gpio2_5_in(gpio2_5_in),
        .gpio2_5_in_h(gpio2_5_in_h),
        .gpio2_5_inp_dis(gpio2_5_inp_dis),
        .gpio2_5_oe_n(gpio2_5_oe_n),
        .gpio2_5_one(gpio2_5_one),
        .gpio2_5_out(gpio2_5_out),
        .gpio2_5_pad_a_esd_0_h(gpio2_5_pad_a_esd_0_h),
        .gpio2_5_pad_a_esd_1_h(gpio2_5_pad_a_esd_1_h),
        .gpio2_5_pad_a_noesd_h(gpio2_5_pad_a_noesd_h),
        .gpio2_5_slow(gpio2_5_slow),
        .gpio2_5_tie_hi_esd(gpio2_5_tie_hi_esd),
        .gpio2_5_tie_lo_esd(gpio2_5_tie_lo_esd),
        .gpio2_5_vtrip_sel(gpio2_5_vtrip_sel),
        .gpio2_5_zero(gpio2_5_zero),
        .gpio2_6(gpio2_6),
        .gpio2_6_analog_en(gpio2_6_analog_en),
        .gpio2_6_analog_pol(gpio2_6_analog_pol),
        .gpio2_6_analog_sel(gpio2_6_analog_sel),
        .gpio2_6_dm(gpio2_6_dm),
        .gpio2_6_enable_h(gpio2_6_enable_h),
        .gpio2_6_enable_inp_h(gpio2_6_enable_inp_h),
        .gpio2_6_enable_vdda_h(gpio2_6_enable_vdda_h),
        .gpio2_6_enable_vddio(gpio2_6_enable_vddio),
        .gpio2_6_enable_vswitch_h(gpio2_6_enable_vswitch_h),
        .gpio2_6_hld_h_n(gpio2_6_hld_h_n),
        .gpio2_6_hld_ovr(gpio2_6_hld_ovr),
        .gpio2_6_ib_mode_sel(gpio2_6_ib_mode_sel),
        .gpio2_6_in(gpio2_6_in),
        .gpio2_6_in_h(gpio2_6_in_h),
        .gpio2_6_inp_dis(gpio2_6_inp_dis),
        .gpio2_6_oe_n(gpio2_6_oe_n),
        .gpio2_6_one(gpio2_6_one),
        .gpio2_6_out(gpio2_6_out),
        .gpio2_6_pad_a_esd_0_h(gpio2_6_pad_a_esd_0_h),
        .gpio2_6_pad_a_esd_1_h(gpio2_6_pad_a_esd_1_h),
        .gpio2_6_pad_a_noesd_h(gpio2_6_pad_a_noesd_h),
        .gpio2_6_slow(gpio2_6_slow),
        .gpio2_6_tie_hi_esd(gpio2_6_tie_hi_esd),
        .gpio2_6_tie_lo_esd(gpio2_6_tie_lo_esd),
        .gpio2_6_vtrip_sel(gpio2_6_vtrip_sel),
        .gpio2_6_zero(gpio2_6_zero),
        .gpio2_7(gpio2_7),
        .gpio2_7_analog_en(gpio2_7_analog_en),
        .gpio2_7_analog_pol(gpio2_7_analog_pol),
        .gpio2_7_analog_sel(gpio2_7_analog_sel),
        .gpio2_7_dm(gpio2_7_dm),
        .gpio2_7_enable_h(gpio2_7_enable_h),
        .gpio2_7_enable_inp_h(gpio2_7_enable_inp_h),
        .gpio2_7_enable_vdda_h(gpio2_7_enable_vdda_h),
        .gpio2_7_enable_vddio(gpio2_7_enable_vddio),
        .gpio2_7_enable_vswitch_h(gpio2_7_enable_vswitch_h),
        .gpio2_7_hld_h_n(gpio2_7_hld_h_n),
        .gpio2_7_hld_ovr(gpio2_7_hld_ovr),
        .gpio2_7_ib_mode_sel(gpio2_7_ib_mode_sel),
        .gpio2_7_in(gpio2_7_in),
        .gpio2_7_in_h(gpio2_7_in_h),
        .gpio2_7_inp_dis(gpio2_7_inp_dis),
        .gpio2_7_oe_n(gpio2_7_oe_n),
        .gpio2_7_one(gpio2_7_one),
        .gpio2_7_out(gpio2_7_out),
        .gpio2_7_pad_a_esd_0_h(gpio2_7_pad_a_esd_0_h),
        .gpio2_7_pad_a_esd_1_h(gpio2_7_pad_a_esd_1_h),
        .gpio2_7_pad_a_noesd_h(gpio2_7_pad_a_noesd_h),
        .gpio2_7_slow(gpio2_7_slow),
        .gpio2_7_tie_hi_esd(gpio2_7_tie_hi_esd),
        .gpio2_7_tie_lo_esd(gpio2_7_tie_lo_esd),
        .gpio2_7_vtrip_sel(gpio2_7_vtrip_sel),
        .gpio2_7_zero(gpio2_7_zero),
        .gpio3_0(gpio3_0),
        .gpio3_0_analog_en(gpio3_0_analog_en),
        .gpio3_0_analog_pol(gpio3_0_analog_pol),
        .gpio3_0_analog_sel(gpio3_0_analog_sel),
        .gpio3_0_dm(gpio3_0_dm),
        .gpio3_0_enable_h(gpio3_0_enable_h),
        .gpio3_0_enable_inp_h(gpio3_0_enable_inp_h),
        .gpio3_0_enable_vdda_h(gpio3_0_enable_vdda_h),
        .gpio3_0_enable_vddio(gpio3_0_enable_vddio),
        .gpio3_0_enable_vswitch_h(gpio3_0_enable_vswitch_h),
        .gpio3_0_hld_h_n(gpio3_0_hld_h_n),
        .gpio3_0_hld_ovr(gpio3_0_hld_ovr),
        .gpio3_0_ib_mode_sel(gpio3_0_ib_mode_sel),
        .gpio3_0_in(gpio3_0_in),
        .gpio3_0_in_h(gpio3_0_in_h),
        .gpio3_0_inp_dis(gpio3_0_inp_dis),
        .gpio3_0_oe_n(gpio3_0_oe_n),
        .gpio3_0_one(gpio3_0_one),
        .gpio3_0_out(gpio3_0_out),
        .gpio3_0_pad_a_esd_0_h(gpio3_0_pad_a_esd_0_h),
        .gpio3_0_pad_a_esd_1_h(gpio3_0_pad_a_esd_1_h),
        .gpio3_0_pad_a_noesd_h(gpio3_0_pad_a_noesd_h),
        .gpio3_0_slow(gpio3_0_slow),
        .gpio3_0_tie_hi_esd(gpio3_0_tie_hi_esd),
        .gpio3_0_tie_lo_esd(gpio3_0_tie_lo_esd),
        .gpio3_0_vtrip_sel(gpio3_0_vtrip_sel),
        .gpio3_0_zero(gpio3_0_zero),
        .gpio3_1(gpio3_1),
        .gpio3_1_analog_en(gpio3_1_analog_en),
        .gpio3_1_analog_pol(gpio3_1_analog_pol),
        .gpio3_1_analog_sel(gpio3_1_analog_sel),
        .gpio3_1_dm(gpio3_1_dm),
        .gpio3_1_enable_h(gpio3_1_enable_h),
        .gpio3_1_enable_inp_h(gpio3_1_enable_inp_h),
        .gpio3_1_enable_vdda_h(gpio3_1_enable_vdda_h),
        .gpio3_1_enable_vddio(gpio3_1_enable_vddio),
        .gpio3_1_enable_vswitch_h(gpio3_1_enable_vswitch_h),
        .gpio3_1_hld_h_n(gpio3_1_hld_h_n),
        .gpio3_1_hld_ovr(gpio3_1_hld_ovr),
        .gpio3_1_ib_mode_sel(gpio3_1_ib_mode_sel),
        .gpio3_1_in(gpio3_1_in),
        .gpio3_1_in_h(gpio3_1_in_h),
        .gpio3_1_inp_dis(gpio3_1_inp_dis),
        .gpio3_1_oe_n(gpio3_1_oe_n),
        .gpio3_1_one(gpio3_1_one),
        .gpio3_1_out(gpio3_1_out),
        .gpio3_1_pad_a_esd_0_h(gpio3_1_pad_a_esd_0_h),
        .gpio3_1_pad_a_esd_1_h(gpio3_1_pad_a_esd_1_h),
        .gpio3_1_pad_a_noesd_h(gpio3_1_pad_a_noesd_h),
        .gpio3_1_slow(gpio3_1_slow),
        .gpio3_1_tie_hi_esd(gpio3_1_tie_hi_esd),
        .gpio3_1_tie_lo_esd(gpio3_1_tie_lo_esd),
        .gpio3_1_vtrip_sel(gpio3_1_vtrip_sel),
        .gpio3_1_zero(gpio3_1_zero),
        .gpio3_2(gpio3_2),
        .gpio3_2_analog_en(gpio3_2_analog_en),
        .gpio3_2_analog_pol(gpio3_2_analog_pol),
        .gpio3_2_analog_sel(gpio3_2_analog_sel),
        .gpio3_2_dm(gpio3_2_dm),
        .gpio3_2_enable_h(gpio3_2_enable_h),
        .gpio3_2_enable_inp_h(gpio3_2_enable_inp_h),
        .gpio3_2_enable_vdda_h(gpio3_2_enable_vdda_h),
        .gpio3_2_enable_vddio(gpio3_2_enable_vddio),
        .gpio3_2_enable_vswitch_h(gpio3_2_enable_vswitch_h),
        .gpio3_2_hld_h_n(gpio3_2_hld_h_n),
        .gpio3_2_hld_ovr(gpio3_2_hld_ovr),
        .gpio3_2_ib_mode_sel(gpio3_2_ib_mode_sel),
        .gpio3_2_in(gpio3_2_in),
        .gpio3_2_in_h(gpio3_2_in_h),
        .gpio3_2_inp_dis(gpio3_2_inp_dis),
        .gpio3_2_oe_n(gpio3_2_oe_n),
        .gpio3_2_one(gpio3_2_one),
        .gpio3_2_out(gpio3_2_out),
        .gpio3_2_pad_a_esd_0_h(gpio3_2_pad_a_esd_0_h),
        .gpio3_2_pad_a_esd_1_h(gpio3_2_pad_a_esd_1_h),
        .gpio3_2_pad_a_noesd_h(gpio3_2_pad_a_noesd_h),
        .gpio3_2_slow(gpio3_2_slow),
        .gpio3_2_tie_hi_esd(gpio3_2_tie_hi_esd),
        .gpio3_2_tie_lo_esd(gpio3_2_tie_lo_esd),
        .gpio3_2_vtrip_sel(gpio3_2_vtrip_sel),
        .gpio3_2_zero(gpio3_2_zero),
        .gpio3_3(gpio3_3),
        .gpio3_3_analog_en(gpio3_3_analog_en),
        .gpio3_3_analog_pol(gpio3_3_analog_pol),
        .gpio3_3_analog_sel(gpio3_3_analog_sel),
        .gpio3_3_dm(gpio3_3_dm),
        .gpio3_3_enable_h(gpio3_3_enable_h),
        .gpio3_3_enable_inp_h(gpio3_3_enable_inp_h),
        .gpio3_3_enable_vdda_h(gpio3_3_enable_vdda_h),
        .gpio3_3_enable_vddio(gpio3_3_enable_vddio),
        .gpio3_3_enable_vswitch_h(gpio3_3_enable_vswitch_h),
        .gpio3_3_hld_h_n(gpio3_3_hld_h_n),
        .gpio3_3_hld_ovr(gpio3_3_hld_ovr),
        .gpio3_3_ib_mode_sel(gpio3_3_ib_mode_sel),
        .gpio3_3_in(gpio3_3_in),
        .gpio3_3_in_h(gpio3_3_in_h),
        .gpio3_3_inp_dis(gpio3_3_inp_dis),
        .gpio3_3_oe_n(gpio3_3_oe_n),
        .gpio3_3_one(gpio3_3_one),
        .gpio3_3_out(gpio3_3_out),
        .gpio3_3_pad_a_esd_0_h(gpio3_3_pad_a_esd_0_h),
        .gpio3_3_pad_a_esd_1_h(gpio3_3_pad_a_esd_1_h),
        .gpio3_3_pad_a_noesd_h(gpio3_3_pad_a_noesd_h),
        .gpio3_3_slow(gpio3_3_slow),
        .gpio3_3_tie_hi_esd(gpio3_3_tie_hi_esd),
        .gpio3_3_tie_lo_esd(gpio3_3_tie_lo_esd),
        .gpio3_3_vtrip_sel(gpio3_3_vtrip_sel),
        .gpio3_3_zero(gpio3_3_zero),
        .gpio3_4(gpio3_4),
        .gpio3_4_analog_en(gpio3_4_analog_en),
        .gpio3_4_analog_pol(gpio3_4_analog_pol),
        .gpio3_4_analog_sel(gpio3_4_analog_sel),
        .gpio3_4_dm(gpio3_4_dm),
        .gpio3_4_enable_h(gpio3_4_enable_h),
        .gpio3_4_enable_inp_h(gpio3_4_enable_inp_h),
        .gpio3_4_enable_vdda_h(gpio3_4_enable_vdda_h),
        .gpio3_4_enable_vddio(gpio3_4_enable_vddio),
        .gpio3_4_enable_vswitch_h(gpio3_4_enable_vswitch_h),
        .gpio3_4_hld_h_n(gpio3_4_hld_h_n),
        .gpio3_4_hld_ovr(gpio3_4_hld_ovr),
        .gpio3_4_ib_mode_sel(gpio3_4_ib_mode_sel),
        .gpio3_4_in(gpio3_4_in),
        .gpio3_4_in_h(gpio3_4_in_h),
        .gpio3_4_inp_dis(gpio3_4_inp_dis),
        .gpio3_4_oe_n(gpio3_4_oe_n),
        .gpio3_4_one(gpio3_4_one),
        .gpio3_4_out(gpio3_4_out),
        .gpio3_4_pad_a_esd_0_h(gpio3_4_pad_a_esd_0_h),
        .gpio3_4_pad_a_esd_1_h(gpio3_4_pad_a_esd_1_h),
        .gpio3_4_pad_a_noesd_h(gpio3_4_pad_a_noesd_h),
        .gpio3_4_slow(gpio3_4_slow),
        .gpio3_4_tie_hi_esd(gpio3_4_tie_hi_esd),
        .gpio3_4_tie_lo_esd(gpio3_4_tie_lo_esd),
        .gpio3_4_vtrip_sel(gpio3_4_vtrip_sel),
        .gpio3_4_zero(gpio3_4_zero),
        .gpio3_5(gpio3_5),
        .gpio3_5_analog_en(gpio3_5_analog_en),
        .gpio3_5_analog_pol(gpio3_5_analog_pol),
        .gpio3_5_analog_sel(gpio3_5_analog_sel),
        .gpio3_5_dm(gpio3_5_dm),
        .gpio3_5_enable_h(gpio3_5_enable_h),
        .gpio3_5_enable_inp_h(gpio3_5_enable_inp_h),
        .gpio3_5_enable_vdda_h(gpio3_5_enable_vdda_h),
        .gpio3_5_enable_vddio(gpio3_5_enable_vddio),
        .gpio3_5_enable_vswitch_h(gpio3_5_enable_vswitch_h),
        .gpio3_5_hld_h_n(gpio3_5_hld_h_n),
        .gpio3_5_hld_ovr(gpio3_5_hld_ovr),
        .gpio3_5_ib_mode_sel(gpio3_5_ib_mode_sel),
        .gpio3_5_in(gpio3_5_in),
        .gpio3_5_in_h(gpio3_5_in_h),
        .gpio3_5_inp_dis(gpio3_5_inp_dis),
        .gpio3_5_oe_n(gpio3_5_oe_n),
        .gpio3_5_one(gpio3_5_one),
        .gpio3_5_out(gpio3_5_out),
        .gpio3_5_pad_a_esd_0_h(gpio3_5_pad_a_esd_0_h),
        .gpio3_5_pad_a_esd_1_h(gpio3_5_pad_a_esd_1_h),
        .gpio3_5_pad_a_noesd_h(gpio3_5_pad_a_noesd_h),
        .gpio3_5_slow(gpio3_5_slow),
        .gpio3_5_tie_hi_esd(gpio3_5_tie_hi_esd),
        .gpio3_5_tie_lo_esd(gpio3_5_tie_lo_esd),
        .gpio3_5_vtrip_sel(gpio3_5_vtrip_sel),
        .gpio3_5_zero(gpio3_5_zero),
        .gpio3_6(gpio3_6),
        .gpio3_6_analog_en(gpio3_6_analog_en),
        .gpio3_6_analog_pol(gpio3_6_analog_pol),
        .gpio3_6_analog_sel(gpio3_6_analog_sel),
        .gpio3_6_dm(gpio3_6_dm),
        .gpio3_6_enable_h(gpio3_6_enable_h),
        .gpio3_6_enable_inp_h(gpio3_6_enable_inp_h),
        .gpio3_6_enable_vdda_h(gpio3_6_enable_vdda_h),
        .gpio3_6_enable_vddio(gpio3_6_enable_vddio),
        .gpio3_6_enable_vswitch_h(gpio3_6_enable_vswitch_h),
        .gpio3_6_hld_h_n(gpio3_6_hld_h_n),
        .gpio3_6_hld_ovr(gpio3_6_hld_ovr),
        .gpio3_6_ib_mode_sel(gpio3_6_ib_mode_sel),
        .gpio3_6_in(gpio3_6_in),
        .gpio3_6_in_h(gpio3_6_in_h),
        .gpio3_6_inp_dis(gpio3_6_inp_dis),
        .gpio3_6_oe_n(gpio3_6_oe_n),
        .gpio3_6_one(gpio3_6_one),
        .gpio3_6_out(gpio3_6_out),
        .gpio3_6_pad_a_esd_0_h(gpio3_6_pad_a_esd_0_h),
        .gpio3_6_pad_a_esd_1_h(gpio3_6_pad_a_esd_1_h),
        .gpio3_6_pad_a_noesd_h(gpio3_6_pad_a_noesd_h),
        .gpio3_6_slow(gpio3_6_slow),
        .gpio3_6_tie_hi_esd(gpio3_6_tie_hi_esd),
        .gpio3_6_tie_lo_esd(gpio3_6_tie_lo_esd),
        .gpio3_6_vtrip_sel(gpio3_6_vtrip_sel),
        .gpio3_6_zero(gpio3_6_zero),
        .gpio3_7(gpio3_7),
        .gpio3_7_analog_en(gpio3_7_analog_en),
        .gpio3_7_analog_pol(gpio3_7_analog_pol),
        .gpio3_7_analog_sel(gpio3_7_analog_sel),
        .gpio3_7_dm(gpio3_7_dm),
        .gpio3_7_enable_h(gpio3_7_enable_h),
        .gpio3_7_enable_inp_h(gpio3_7_enable_inp_h),
        .gpio3_7_enable_vdda_h(gpio3_7_enable_vdda_h),
        .gpio3_7_enable_vddio(gpio3_7_enable_vddio),
        .gpio3_7_enable_vswitch_h(gpio3_7_enable_vswitch_h),
        .gpio3_7_hld_h_n(gpio3_7_hld_h_n),
        .gpio3_7_hld_ovr(gpio3_7_hld_ovr),
        .gpio3_7_ib_mode_sel(gpio3_7_ib_mode_sel),
        .gpio3_7_in(gpio3_7_in),
        .gpio3_7_in_h(gpio3_7_in_h),
        .gpio3_7_inp_dis(gpio3_7_inp_dis),
        .gpio3_7_oe_n(gpio3_7_oe_n),
        .gpio3_7_one(gpio3_7_one),
        .gpio3_7_out(gpio3_7_out),
        .gpio3_7_pad_a_esd_0_h(gpio3_7_pad_a_esd_0_h),
        .gpio3_7_pad_a_esd_1_h(gpio3_7_pad_a_esd_1_h),
        .gpio3_7_pad_a_noesd_h(gpio3_7_pad_a_noesd_h),
        .gpio3_7_slow(gpio3_7_slow),
        .gpio3_7_tie_hi_esd(gpio3_7_tie_hi_esd),
        .gpio3_7_tie_lo_esd(gpio3_7_tie_lo_esd),
        .gpio3_7_vtrip_sel(gpio3_7_vtrip_sel),
        .gpio3_7_zero(gpio3_7_zero),
        .gpio4_0(gpio4_0),
        .gpio4_0_analog_en(gpio4_0_analog_en),
        .gpio4_0_analog_pol(gpio4_0_analog_pol),
        .gpio4_0_analog_sel(gpio4_0_analog_sel),
        .gpio4_0_dm(gpio4_0_dm),
        .gpio4_0_enable_h(gpio4_0_enable_h),
        .gpio4_0_enable_inp_h(gpio4_0_enable_inp_h),
        .gpio4_0_enable_vdda_h(gpio4_0_enable_vdda_h),
        .gpio4_0_enable_vddio(gpio4_0_enable_vddio),
        .gpio4_0_enable_vswitch_h(gpio4_0_enable_vswitch_h),
        .gpio4_0_hld_h_n(gpio4_0_hld_h_n),
        .gpio4_0_hld_ovr(gpio4_0_hld_ovr),
        .gpio4_0_ib_mode_sel(gpio4_0_ib_mode_sel),
        .gpio4_0_in(gpio4_0_in),
        .gpio4_0_in_h(gpio4_0_in_h),
        .gpio4_0_inp_dis(gpio4_0_inp_dis),
        .gpio4_0_oe_n(gpio4_0_oe_n),
        .gpio4_0_one(gpio4_0_one),
        .gpio4_0_out(gpio4_0_out),
        .gpio4_0_pad_a_esd_0_h(gpio4_0_pad_a_esd_0_h),
        .gpio4_0_pad_a_esd_1_h(gpio4_0_pad_a_esd_1_h),
        .gpio4_0_pad_a_noesd_h(gpio4_0_pad_a_noesd_h),
        .gpio4_0_slow(gpio4_0_slow),
        .gpio4_0_tie_hi_esd(gpio4_0_tie_hi_esd),
        .gpio4_0_tie_lo_esd(gpio4_0_tie_lo_esd),
        .gpio4_0_vtrip_sel(gpio4_0_vtrip_sel),
        .gpio4_0_zero(gpio4_0_zero),
        .gpio4_1(gpio4_1),
        .gpio4_1_analog_en(gpio4_1_analog_en),
        .gpio4_1_analog_pol(gpio4_1_analog_pol),
        .gpio4_1_analog_sel(gpio4_1_analog_sel),
        .gpio4_1_dm(gpio4_1_dm),
        .gpio4_1_enable_h(gpio4_1_enable_h),
        .gpio4_1_enable_inp_h(gpio4_1_enable_inp_h),
        .gpio4_1_enable_vdda_h(gpio4_1_enable_vdda_h),
        .gpio4_1_enable_vddio(gpio4_1_enable_vddio),
        .gpio4_1_enable_vswitch_h(gpio4_1_enable_vswitch_h),
        .gpio4_1_hld_h_n(gpio4_1_hld_h_n),
        .gpio4_1_hld_ovr(gpio4_1_hld_ovr),
        .gpio4_1_ib_mode_sel(gpio4_1_ib_mode_sel),
        .gpio4_1_in(gpio4_1_in),
        .gpio4_1_in_h(gpio4_1_in_h),
        .gpio4_1_inp_dis(gpio4_1_inp_dis),
        .gpio4_1_oe_n(gpio4_1_oe_n),
        .gpio4_1_one(gpio4_1_one),
        .gpio4_1_out(gpio4_1_out),
        .gpio4_1_pad_a_esd_0_h(gpio4_1_pad_a_esd_0_h),
        .gpio4_1_pad_a_esd_1_h(gpio4_1_pad_a_esd_1_h),
        .gpio4_1_pad_a_noesd_h(gpio4_1_pad_a_noesd_h),
        .gpio4_1_slow(gpio4_1_slow),
        .gpio4_1_tie_hi_esd(gpio4_1_tie_hi_esd),
        .gpio4_1_tie_lo_esd(gpio4_1_tie_lo_esd),
        .gpio4_1_vtrip_sel(gpio4_1_vtrip_sel),
        .gpio4_1_zero(gpio4_1_zero),
        .gpio4_2(gpio4_2),
        .gpio4_2_analog_en(gpio4_2_analog_en),
        .gpio4_2_analog_pol(gpio4_2_analog_pol),
        .gpio4_2_analog_sel(gpio4_2_analog_sel),
        .gpio4_2_dm(gpio4_2_dm),
        .gpio4_2_enable_h(gpio4_2_enable_h),
        .gpio4_2_enable_inp_h(gpio4_2_enable_inp_h),
        .gpio4_2_enable_vdda_h(gpio4_2_enable_vdda_h),
        .gpio4_2_enable_vddio(gpio4_2_enable_vddio),
        .gpio4_2_enable_vswitch_h(gpio4_2_enable_vswitch_h),
        .gpio4_2_hld_h_n(gpio4_2_hld_h_n),
        .gpio4_2_hld_ovr(gpio4_2_hld_ovr),
        .gpio4_2_ib_mode_sel(gpio4_2_ib_mode_sel),
        .gpio4_2_in(gpio4_2_in),
        .gpio4_2_in_h(gpio4_2_in_h),
        .gpio4_2_inp_dis(gpio4_2_inp_dis),
        .gpio4_2_oe_n(gpio4_2_oe_n),
        .gpio4_2_one(gpio4_2_one),
        .gpio4_2_out(gpio4_2_out),
        .gpio4_2_pad_a_esd_0_h(gpio4_2_pad_a_esd_0_h),
        .gpio4_2_pad_a_esd_1_h(gpio4_2_pad_a_esd_1_h),
        .gpio4_2_pad_a_noesd_h(gpio4_2_pad_a_noesd_h),
        .gpio4_2_slow(gpio4_2_slow),
        .gpio4_2_tie_hi_esd(gpio4_2_tie_hi_esd),
        .gpio4_2_tie_lo_esd(gpio4_2_tie_lo_esd),
        .gpio4_2_vtrip_sel(gpio4_2_vtrip_sel),
        .gpio4_2_zero(gpio4_2_zero),
        .gpio4_3(gpio4_3),
        .gpio4_3_analog_en(gpio4_3_analog_en),
        .gpio4_3_analog_pol(gpio4_3_analog_pol),
        .gpio4_3_analog_sel(gpio4_3_analog_sel),
        .gpio4_3_dm(gpio4_3_dm),
        .gpio4_3_enable_h(gpio4_3_enable_h),
        .gpio4_3_enable_inp_h(gpio4_3_enable_inp_h),
        .gpio4_3_enable_vdda_h(gpio4_3_enable_vdda_h),
        .gpio4_3_enable_vddio(gpio4_3_enable_vddio),
        .gpio4_3_enable_vswitch_h(gpio4_3_enable_vswitch_h),
        .gpio4_3_hld_h_n(gpio4_3_hld_h_n),
        .gpio4_3_hld_ovr(gpio4_3_hld_ovr),
        .gpio4_3_ib_mode_sel(gpio4_3_ib_mode_sel),
        .gpio4_3_in(gpio4_3_in),
        .gpio4_3_in_h(gpio4_3_in_h),
        .gpio4_3_inp_dis(gpio4_3_inp_dis),
        .gpio4_3_oe_n(gpio4_3_oe_n),
        .gpio4_3_one(gpio4_3_one),
        .gpio4_3_out(gpio4_3_out),
        .gpio4_3_pad_a_esd_0_h(gpio4_3_pad_a_esd_0_h),
        .gpio4_3_pad_a_esd_1_h(gpio4_3_pad_a_esd_1_h),
        .gpio4_3_pad_a_noesd_h(gpio4_3_pad_a_noesd_h),
        .gpio4_3_slow(gpio4_3_slow),
        .gpio4_3_tie_hi_esd(gpio4_3_tie_hi_esd),
        .gpio4_3_tie_lo_esd(gpio4_3_tie_lo_esd),
        .gpio4_3_vtrip_sel(gpio4_3_vtrip_sel),
        .gpio4_3_zero(gpio4_3_zero),
        .gpio4_4(gpio4_4),
        .gpio4_4_analog_en(gpio4_4_analog_en),
        .gpio4_4_analog_pol(gpio4_4_analog_pol),
        .gpio4_4_analog_sel(gpio4_4_analog_sel),
        .gpio4_4_dm(gpio4_4_dm),
        .gpio4_4_enable_h(gpio4_4_enable_h),
        .gpio4_4_enable_inp_h(gpio4_4_enable_inp_h),
        .gpio4_4_enable_vdda_h(gpio4_4_enable_vdda_h),
        .gpio4_4_enable_vddio(gpio4_4_enable_vddio),
        .gpio4_4_enable_vswitch_h(gpio4_4_enable_vswitch_h),
        .gpio4_4_hld_h_n(gpio4_4_hld_h_n),
        .gpio4_4_hld_ovr(gpio4_4_hld_ovr),
        .gpio4_4_ib_mode_sel(gpio4_4_ib_mode_sel),
        .gpio4_4_in(gpio4_4_in),
        .gpio4_4_in_h(gpio4_4_in_h),
        .gpio4_4_inp_dis(gpio4_4_inp_dis),
        .gpio4_4_oe_n(gpio4_4_oe_n),
        .gpio4_4_one(gpio4_4_one),
        .gpio4_4_out(gpio4_4_out),
        .gpio4_4_pad_a_esd_0_h(gpio4_4_pad_a_esd_0_h),
        .gpio4_4_pad_a_esd_1_h(gpio4_4_pad_a_esd_1_h),
        .gpio4_4_pad_a_noesd_h(gpio4_4_pad_a_noesd_h),
        .gpio4_4_slow(gpio4_4_slow),
        .gpio4_4_tie_hi_esd(gpio4_4_tie_hi_esd),
        .gpio4_4_tie_lo_esd(gpio4_4_tie_lo_esd),
        .gpio4_4_vtrip_sel(gpio4_4_vtrip_sel),
        .gpio4_4_zero(gpio4_4_zero),
        .gpio4_5(gpio4_5),
        .gpio4_5_analog_en(gpio4_5_analog_en),
        .gpio4_5_analog_pol(gpio4_5_analog_pol),
        .gpio4_5_analog_sel(gpio4_5_analog_sel),
        .gpio4_5_dm(gpio4_5_dm),
        .gpio4_5_enable_h(gpio4_5_enable_h),
        .gpio4_5_enable_inp_h(gpio4_5_enable_inp_h),
        .gpio4_5_enable_vdda_h(gpio4_5_enable_vdda_h),
        .gpio4_5_enable_vddio(gpio4_5_enable_vddio),
        .gpio4_5_enable_vswitch_h(gpio4_5_enable_vswitch_h),
        .gpio4_5_hld_h_n(gpio4_5_hld_h_n),
        .gpio4_5_hld_ovr(gpio4_5_hld_ovr),
        .gpio4_5_ib_mode_sel(gpio4_5_ib_mode_sel),
        .gpio4_5_in(gpio4_5_in),
        .gpio4_5_in_h(gpio4_5_in_h),
        .gpio4_5_inp_dis(gpio4_5_inp_dis),
        .gpio4_5_oe_n(gpio4_5_oe_n),
        .gpio4_5_one(gpio4_5_one),
        .gpio4_5_out(gpio4_5_out),
        .gpio4_5_pad_a_esd_0_h(gpio4_5_pad_a_esd_0_h),
        .gpio4_5_pad_a_esd_1_h(gpio4_5_pad_a_esd_1_h),
        .gpio4_5_pad_a_noesd_h(gpio4_5_pad_a_noesd_h),
        .gpio4_5_slow(gpio4_5_slow),
        .gpio4_5_tie_hi_esd(gpio4_5_tie_hi_esd),
        .gpio4_5_tie_lo_esd(gpio4_5_tie_lo_esd),
        .gpio4_5_vtrip_sel(gpio4_5_vtrip_sel),
        .gpio4_5_zero(gpio4_5_zero),
        .gpio4_6(gpio4_6),
        .gpio4_6_analog_en(gpio4_6_analog_en),
        .gpio4_6_analog_pol(gpio4_6_analog_pol),
        .gpio4_6_analog_sel(gpio4_6_analog_sel),
        .gpio4_6_dm(gpio4_6_dm),
        .gpio4_6_enable_h(gpio4_6_enable_h),
        .gpio4_6_enable_inp_h(gpio4_6_enable_inp_h),
        .gpio4_6_enable_vdda_h(gpio4_6_enable_vdda_h),
        .gpio4_6_enable_vddio(gpio4_6_enable_vddio),
        .gpio4_6_enable_vswitch_h(gpio4_6_enable_vswitch_h),
        .gpio4_6_hld_h_n(gpio4_6_hld_h_n),
        .gpio4_6_hld_ovr(gpio4_6_hld_ovr),
        .gpio4_6_ib_mode_sel(gpio4_6_ib_mode_sel),
        .gpio4_6_in(gpio4_6_in),
        .gpio4_6_in_h(gpio4_6_in_h),
        .gpio4_6_inp_dis(gpio4_6_inp_dis),
        .gpio4_6_oe_n(gpio4_6_oe_n),
        .gpio4_6_one(gpio4_6_one),
        .gpio4_6_out(gpio4_6_out),
        .gpio4_6_pad_a_esd_0_h(gpio4_6_pad_a_esd_0_h),
        .gpio4_6_pad_a_esd_1_h(gpio4_6_pad_a_esd_1_h),
        .gpio4_6_pad_a_noesd_h(gpio4_6_pad_a_noesd_h),
        .gpio4_6_slow(gpio4_6_slow),
        .gpio4_6_tie_hi_esd(gpio4_6_tie_hi_esd),
        .gpio4_6_tie_lo_esd(gpio4_6_tie_lo_esd),
        .gpio4_6_vtrip_sel(gpio4_6_vtrip_sel),
        .gpio4_6_zero(gpio4_6_zero),
        .gpio4_7(gpio4_7),
        .gpio4_7_analog_en(gpio4_7_analog_en),
        .gpio4_7_analog_pol(gpio4_7_analog_pol),
        .gpio4_7_analog_sel(gpio4_7_analog_sel),
        .gpio4_7_dm(gpio4_7_dm),
        .gpio4_7_enable_h(gpio4_7_enable_h),
        .gpio4_7_enable_inp_h(gpio4_7_enable_inp_h),
        .gpio4_7_enable_vdda_h(gpio4_7_enable_vdda_h),
        .gpio4_7_enable_vddio(gpio4_7_enable_vddio),
        .gpio4_7_enable_vswitch_h(gpio4_7_enable_vswitch_h),
        .gpio4_7_hld_h_n(gpio4_7_hld_h_n),
        .gpio4_7_hld_ovr(gpio4_7_hld_ovr),
        .gpio4_7_ib_mode_sel(gpio4_7_ib_mode_sel),
        .gpio4_7_in(gpio4_7_in),
        .gpio4_7_in_h(gpio4_7_in_h),
        .gpio4_7_inp_dis(gpio4_7_inp_dis),
        .gpio4_7_oe_n(gpio4_7_oe_n),
        .gpio4_7_one(gpio4_7_one),
        .gpio4_7_out(gpio4_7_out),
        .gpio4_7_pad_a_esd_0_h(gpio4_7_pad_a_esd_0_h),
        .gpio4_7_pad_a_esd_1_h(gpio4_7_pad_a_esd_1_h),
        .gpio4_7_pad_a_noesd_h(gpio4_7_pad_a_noesd_h),
        .gpio4_7_slow(gpio4_7_slow),
        .gpio4_7_tie_hi_esd(gpio4_7_tie_hi_esd),
        .gpio4_7_tie_lo_esd(gpio4_7_tie_lo_esd),
        .gpio4_7_vtrip_sel(gpio4_7_vtrip_sel),
        .gpio4_7_zero(gpio4_7_zero),
        .gpio5_0(gpio5_0),
        .gpio5_0_analog_en(gpio5_0_analog_en),
        .gpio5_0_analog_pol(gpio5_0_analog_pol),
        .gpio5_0_analog_sel(gpio5_0_analog_sel),
        .gpio5_0_dm(gpio5_0_dm),
        .gpio5_0_enable_h(gpio5_0_enable_h),
        .gpio5_0_enable_inp_h(gpio5_0_enable_inp_h),
        .gpio5_0_enable_vdda_h(gpio5_0_enable_vdda_h),
        .gpio5_0_enable_vddio(gpio5_0_enable_vddio),
        .gpio5_0_enable_vswitch_h(gpio5_0_enable_vswitch_h),
        .gpio5_0_hld_h_n(gpio5_0_hld_h_n),
        .gpio5_0_hld_ovr(gpio5_0_hld_ovr),
        .gpio5_0_ib_mode_sel(gpio5_0_ib_mode_sel),
        .gpio5_0_in(gpio5_0_in),
        .gpio5_0_in_h(gpio5_0_in_h),
        .gpio5_0_inp_dis(gpio5_0_inp_dis),
        .gpio5_0_oe_n(gpio5_0_oe_n),
        .gpio5_0_one(gpio5_0_one),
        .gpio5_0_out(gpio5_0_out),
        .gpio5_0_pad_a_esd_0_h(gpio5_0_pad_a_esd_0_h),
        .gpio5_0_pad_a_esd_1_h(gpio5_0_pad_a_esd_1_h),
        .gpio5_0_pad_a_noesd_h(gpio5_0_pad_a_noesd_h),
        .gpio5_0_slow(gpio5_0_slow),
        .gpio5_0_tie_hi_esd(gpio5_0_tie_hi_esd),
        .gpio5_0_tie_lo_esd(gpio5_0_tie_lo_esd),
        .gpio5_0_vtrip_sel(gpio5_0_vtrip_sel),
        .gpio5_0_zero(gpio5_0_zero),
        .gpio5_1(gpio5_1),
        .gpio5_1_analog_en(gpio5_1_analog_en),
        .gpio5_1_analog_pol(gpio5_1_analog_pol),
        .gpio5_1_analog_sel(gpio5_1_analog_sel),
        .gpio5_1_dm(gpio5_1_dm),
        .gpio5_1_enable_h(gpio5_1_enable_h),
        .gpio5_1_enable_inp_h(gpio5_1_enable_inp_h),
        .gpio5_1_enable_vdda_h(gpio5_1_enable_vdda_h),
        .gpio5_1_enable_vddio(gpio5_1_enable_vddio),
        .gpio5_1_enable_vswitch_h(gpio5_1_enable_vswitch_h),
        .gpio5_1_hld_h_n(gpio5_1_hld_h_n),
        .gpio5_1_hld_ovr(gpio5_1_hld_ovr),
        .gpio5_1_ib_mode_sel(gpio5_1_ib_mode_sel),
        .gpio5_1_in(gpio5_1_in),
        .gpio5_1_in_h(gpio5_1_in_h),
        .gpio5_1_inp_dis(gpio5_1_inp_dis),
        .gpio5_1_oe_n(gpio5_1_oe_n),
        .gpio5_1_one(gpio5_1_one),
        .gpio5_1_out(gpio5_1_out),
        .gpio5_1_pad_a_esd_0_h(gpio5_1_pad_a_esd_0_h),
        .gpio5_1_pad_a_esd_1_h(gpio5_1_pad_a_esd_1_h),
        .gpio5_1_pad_a_noesd_h(gpio5_1_pad_a_noesd_h),
        .gpio5_1_slow(gpio5_1_slow),
        .gpio5_1_tie_hi_esd(gpio5_1_tie_hi_esd),
        .gpio5_1_tie_lo_esd(gpio5_1_tie_lo_esd),
        .gpio5_1_vtrip_sel(gpio5_1_vtrip_sel),
        .gpio5_1_zero(gpio5_1_zero),
        .gpio5_2(gpio5_2),
        .gpio5_2_analog_en(gpio5_2_analog_en),
        .gpio5_2_analog_pol(gpio5_2_analog_pol),
        .gpio5_2_analog_sel(gpio5_2_analog_sel),
        .gpio5_2_dm(gpio5_2_dm),
        .gpio5_2_enable_h(gpio5_2_enable_h),
        .gpio5_2_enable_inp_h(gpio5_2_enable_inp_h),
        .gpio5_2_enable_vdda_h(gpio5_2_enable_vdda_h),
        .gpio5_2_enable_vddio(gpio5_2_enable_vddio),
        .gpio5_2_enable_vswitch_h(gpio5_2_enable_vswitch_h),
        .gpio5_2_hld_h_n(gpio5_2_hld_h_n),
        .gpio5_2_hld_ovr(gpio5_2_hld_ovr),
        .gpio5_2_ib_mode_sel(gpio5_2_ib_mode_sel),
        .gpio5_2_in(gpio5_2_in),
        .gpio5_2_in_h(gpio5_2_in_h),
        .gpio5_2_inp_dis(gpio5_2_inp_dis),
        .gpio5_2_oe_n(gpio5_2_oe_n),
        .gpio5_2_one(gpio5_2_one),
        .gpio5_2_out(gpio5_2_out),
        .gpio5_2_pad_a_esd_0_h(gpio5_2_pad_a_esd_0_h),
        .gpio5_2_pad_a_esd_1_h(gpio5_2_pad_a_esd_1_h),
        .gpio5_2_pad_a_noesd_h(gpio5_2_pad_a_noesd_h),
        .gpio5_2_slow(gpio5_2_slow),
        .gpio5_2_tie_hi_esd(gpio5_2_tie_hi_esd),
        .gpio5_2_tie_lo_esd(gpio5_2_tie_lo_esd),
        .gpio5_2_vtrip_sel(gpio5_2_vtrip_sel),
        .gpio5_2_zero(gpio5_2_zero),
        .gpio5_3(gpio5_3),
        .gpio5_3_analog_en(gpio5_3_analog_en),
        .gpio5_3_analog_pol(gpio5_3_analog_pol),
        .gpio5_3_analog_sel(gpio5_3_analog_sel),
        .gpio5_3_dm(gpio5_3_dm),
        .gpio5_3_enable_h(gpio5_3_enable_h),
        .gpio5_3_enable_inp_h(gpio5_3_enable_inp_h),
        .gpio5_3_enable_vdda_h(gpio5_3_enable_vdda_h),
        .gpio5_3_enable_vddio(gpio5_3_enable_vddio),
        .gpio5_3_enable_vswitch_h(gpio5_3_enable_vswitch_h),
        .gpio5_3_hld_h_n(gpio5_3_hld_h_n),
        .gpio5_3_hld_ovr(gpio5_3_hld_ovr),
        .gpio5_3_ib_mode_sel(gpio5_3_ib_mode_sel),
        .gpio5_3_in(gpio5_3_in),
        .gpio5_3_in_h(gpio5_3_in_h),
        .gpio5_3_inp_dis(gpio5_3_inp_dis),
        .gpio5_3_oe_n(gpio5_3_oe_n),
        .gpio5_3_one(gpio5_3_one),
        .gpio5_3_out(gpio5_3_out),
        .gpio5_3_pad_a_esd_0_h(gpio5_3_pad_a_esd_0_h),
        .gpio5_3_pad_a_esd_1_h(gpio5_3_pad_a_esd_1_h),
        .gpio5_3_pad_a_noesd_h(gpio5_3_pad_a_noesd_h),
        .gpio5_3_slow(gpio5_3_slow),
        .gpio5_3_tie_hi_esd(gpio5_3_tie_hi_esd),
        .gpio5_3_tie_lo_esd(gpio5_3_tie_lo_esd),
        .gpio5_3_vtrip_sel(gpio5_3_vtrip_sel),
        .gpio5_3_zero(gpio5_3_zero),
        .gpio5_4(gpio5_4),
        .gpio5_4_analog_en(gpio5_4_analog_en),
        .gpio5_4_analog_pol(gpio5_4_analog_pol),
        .gpio5_4_analog_sel(gpio5_4_analog_sel),
        .gpio5_4_dm(gpio5_4_dm),
        .gpio5_4_enable_h(gpio5_4_enable_h),
        .gpio5_4_enable_inp_h(gpio5_4_enable_inp_h),
        .gpio5_4_enable_vdda_h(gpio5_4_enable_vdda_h),
        .gpio5_4_enable_vddio(gpio5_4_enable_vddio),
        .gpio5_4_enable_vswitch_h(gpio5_4_enable_vswitch_h),
        .gpio5_4_hld_h_n(gpio5_4_hld_h_n),
        .gpio5_4_hld_ovr(gpio5_4_hld_ovr),
        .gpio5_4_ib_mode_sel(gpio5_4_ib_mode_sel),
        .gpio5_4_in(gpio5_4_in),
        .gpio5_4_in_h(gpio5_4_in_h),
        .gpio5_4_inp_dis(gpio5_4_inp_dis),
        .gpio5_4_oe_n(gpio5_4_oe_n),
        .gpio5_4_one(gpio5_4_one),
        .gpio5_4_out(gpio5_4_out),
        .gpio5_4_pad_a_esd_0_h(gpio5_4_pad_a_esd_0_h),
        .gpio5_4_pad_a_esd_1_h(gpio5_4_pad_a_esd_1_h),
        .gpio5_4_pad_a_noesd_h(gpio5_4_pad_a_noesd_h),
        .gpio5_4_slow(gpio5_4_slow),
        .gpio5_4_tie_hi_esd(gpio5_4_tie_hi_esd),
        .gpio5_4_tie_lo_esd(gpio5_4_tie_lo_esd),
        .gpio5_4_vtrip_sel(gpio5_4_vtrip_sel),
        .gpio5_4_zero(gpio5_4_zero),
        .gpio5_5(gpio5_5),
        .gpio5_5_analog_en(gpio5_5_analog_en),
        .gpio5_5_analog_pol(gpio5_5_analog_pol),
        .gpio5_5_analog_sel(gpio5_5_analog_sel),
        .gpio5_5_dm(gpio5_5_dm),
        .gpio5_5_enable_h(gpio5_5_enable_h),
        .gpio5_5_enable_inp_h(gpio5_5_enable_inp_h),
        .gpio5_5_enable_vdda_h(gpio5_5_enable_vdda_h),
        .gpio5_5_enable_vddio(gpio5_5_enable_vddio),
        .gpio5_5_enable_vswitch_h(gpio5_5_enable_vswitch_h),
        .gpio5_5_hld_h_n(gpio5_5_hld_h_n),
        .gpio5_5_hld_ovr(gpio5_5_hld_ovr),
        .gpio5_5_ib_mode_sel(gpio5_5_ib_mode_sel),
        .gpio5_5_in(gpio5_5_in),
        .gpio5_5_in_h(gpio5_5_in_h),
        .gpio5_5_inp_dis(gpio5_5_inp_dis),
        .gpio5_5_oe_n(gpio5_5_oe_n),
        .gpio5_5_one(gpio5_5_one),
        .gpio5_5_out(gpio5_5_out),
        .gpio5_5_pad_a_esd_0_h(gpio5_5_pad_a_esd_0_h),
        .gpio5_5_pad_a_esd_1_h(gpio5_5_pad_a_esd_1_h),
        .gpio5_5_pad_a_noesd_h(gpio5_5_pad_a_noesd_h),
        .gpio5_5_slow(gpio5_5_slow),
        .gpio5_5_tie_hi_esd(gpio5_5_tie_hi_esd),
        .gpio5_5_tie_lo_esd(gpio5_5_tie_lo_esd),
        .gpio5_5_vtrip_sel(gpio5_5_vtrip_sel),
        .gpio5_5_zero(gpio5_5_zero),
        .gpio5_6(gpio5_6),
        .gpio5_6_analog_en(gpio5_6_analog_en),
        .gpio5_6_analog_pol(gpio5_6_analog_pol),
        .gpio5_6_analog_sel(gpio5_6_analog_sel),
        .gpio5_6_dm(gpio5_6_dm),
        .gpio5_6_enable_h(gpio5_6_enable_h),
        .gpio5_6_enable_inp_h(gpio5_6_enable_inp_h),
        .gpio5_6_enable_vdda_h(gpio5_6_enable_vdda_h),
        .gpio5_6_enable_vddio(gpio5_6_enable_vddio),
        .gpio5_6_enable_vswitch_h(gpio5_6_enable_vswitch_h),
        .gpio5_6_hld_h_n(gpio5_6_hld_h_n),
        .gpio5_6_hld_ovr(gpio5_6_hld_ovr),
        .gpio5_6_ib_mode_sel(gpio5_6_ib_mode_sel),
        .gpio5_6_in(gpio5_6_in),
        .gpio5_6_in_h(gpio5_6_in_h),
        .gpio5_6_inp_dis(gpio5_6_inp_dis),
        .gpio5_6_oe_n(gpio5_6_oe_n),
        .gpio5_6_one(gpio5_6_one),
        .gpio5_6_out(gpio5_6_out),
        .gpio5_6_pad_a_esd_0_h(gpio5_6_pad_a_esd_0_h),
        .gpio5_6_pad_a_esd_1_h(gpio5_6_pad_a_esd_1_h),
        .gpio5_6_pad_a_noesd_h(gpio5_6_pad_a_noesd_h),
        .gpio5_6_slow(gpio5_6_slow),
        .gpio5_6_tie_hi_esd(gpio5_6_tie_hi_esd),
        .gpio5_6_tie_lo_esd(gpio5_6_tie_lo_esd),
        .gpio5_6_vtrip_sel(gpio5_6_vtrip_sel),
        .gpio5_6_zero(gpio5_6_zero),
        .gpio5_7(gpio5_7),
        .gpio5_7_analog_en(gpio5_7_analog_en),
        .gpio5_7_analog_pol(gpio5_7_analog_pol),
        .gpio5_7_analog_sel(gpio5_7_analog_sel),
        .gpio5_7_dm(gpio5_7_dm),
        .gpio5_7_enable_h(gpio5_7_enable_h),
        .gpio5_7_enable_inp_h(gpio5_7_enable_inp_h),
        .gpio5_7_enable_vdda_h(gpio5_7_enable_vdda_h),
        .gpio5_7_enable_vddio(gpio5_7_enable_vddio),
        .gpio5_7_enable_vswitch_h(gpio5_7_enable_vswitch_h),
        .gpio5_7_hld_h_n(gpio5_7_hld_h_n),
        .gpio5_7_hld_ovr(gpio5_7_hld_ovr),
        .gpio5_7_ib_mode_sel(gpio5_7_ib_mode_sel),
        .gpio5_7_in(gpio5_7_in),
        .gpio5_7_in_h(gpio5_7_in_h),
        .gpio5_7_inp_dis(gpio5_7_inp_dis),
        .gpio5_7_oe_n(gpio5_7_oe_n),
        .gpio5_7_one(gpio5_7_one),
        .gpio5_7_out(gpio5_7_out),
        .gpio5_7_pad_a_esd_0_h(gpio5_7_pad_a_esd_0_h),
        .gpio5_7_pad_a_esd_1_h(gpio5_7_pad_a_esd_1_h),
        .gpio5_7_pad_a_noesd_h(gpio5_7_pad_a_noesd_h),
        .gpio5_7_slow(gpio5_7_slow),
        .gpio5_7_tie_hi_esd(gpio5_7_tie_hi_esd),
        .gpio5_7_tie_lo_esd(gpio5_7_tie_lo_esd),
        .gpio5_7_vtrip_sel(gpio5_7_vtrip_sel),
        .gpio5_7_zero(gpio5_7_zero),
        .gpio6_0(gpio6_0),
        .gpio6_0_analog_en(gpio6_0_analog_en),
        .gpio6_0_analog_pol(gpio6_0_analog_pol),
        .gpio6_0_analog_sel(gpio6_0_analog_sel),
        .gpio6_0_dm(gpio6_0_dm),
        .gpio6_0_enable_h(gpio6_0_enable_h),
        .gpio6_0_enable_inp_h(gpio6_0_enable_inp_h),
        .gpio6_0_enable_vdda_h(gpio6_0_enable_vdda_h),
        .gpio6_0_enable_vddio(gpio6_0_enable_vddio),
        .gpio6_0_enable_vswitch_h(gpio6_0_enable_vswitch_h),
        .gpio6_0_hld_h_n(gpio6_0_hld_h_n),
        .gpio6_0_hld_ovr(gpio6_0_hld_ovr),
        .gpio6_0_hys_trim(gpio6_0_hys_trim),
        .gpio6_0_ib_mode_sel(gpio6_0_ib_mode_sel),
        .gpio6_0_in(gpio6_0_in),
        .gpio6_0_in_h(gpio6_0_in_h),
        .gpio6_0_inp_dis(gpio6_0_inp_dis),
        .gpio6_0_oe_n(gpio6_0_oe_n),
        .gpio6_0_one(gpio6_0_one),
        .gpio6_0_out(gpio6_0_out),
        .gpio6_0_pad_a_esd_0_h(gpio6_0_pad_a_esd_0_h),
        .gpio6_0_pad_a_esd_1_h(gpio6_0_pad_a_esd_1_h),
        .gpio6_0_pad_a_noesd_h(gpio6_0_pad_a_noesd_h),
        .gpio6_0_slew_ctl(gpio6_0_slew_ctl),
        .gpio6_0_slow(gpio6_0_slow),
        .gpio6_0_tie_hi_esd(gpio6_0_tie_hi_esd),
        .gpio6_0_tie_lo_esd(gpio6_0_tie_lo_esd),
        .gpio6_0_vtrip_sel(gpio6_0_vtrip_sel),
        .gpio6_0_zero(gpio6_0_zero),
        .gpio6_1(gpio6_1),
        .gpio6_1_analog_en(gpio6_1_analog_en),
        .gpio6_1_analog_pol(gpio6_1_analog_pol),
        .gpio6_1_analog_sel(gpio6_1_analog_sel),
        .gpio6_1_dm(gpio6_1_dm),
        .gpio6_1_enable_h(gpio6_1_enable_h),
        .gpio6_1_enable_inp_h(gpio6_1_enable_inp_h),
        .gpio6_1_enable_vdda_h(gpio6_1_enable_vdda_h),
        .gpio6_1_enable_vddio(gpio6_1_enable_vddio),
        .gpio6_1_enable_vswitch_h(gpio6_1_enable_vswitch_h),
        .gpio6_1_hld_h_n(gpio6_1_hld_h_n),
        .gpio6_1_hld_ovr(gpio6_1_hld_ovr),
        .gpio6_1_hys_trim(gpio6_1_hys_trim),
        .gpio6_1_ib_mode_sel(gpio6_1_ib_mode_sel),
        .gpio6_1_in(gpio6_1_in),
        .gpio6_1_in_h(gpio6_1_in_h),
        .gpio6_1_inp_dis(gpio6_1_inp_dis),
        .gpio6_1_oe_n(gpio6_1_oe_n),
        .gpio6_1_one(gpio6_1_one),
        .gpio6_1_out(gpio6_1_out),
        .gpio6_1_pad_a_esd_0_h(gpio6_1_pad_a_esd_0_h),
        .gpio6_1_pad_a_esd_1_h(gpio6_1_pad_a_esd_1_h),
        .gpio6_1_pad_a_noesd_h(gpio6_1_pad_a_noesd_h),
        .gpio6_1_slew_ctl(gpio6_1_slew_ctl),
        .gpio6_1_slow(gpio6_1_slow),
        .gpio6_1_tie_hi_esd(gpio6_1_tie_hi_esd),
        .gpio6_1_tie_lo_esd(gpio6_1_tie_lo_esd),
        .gpio6_1_vtrip_sel(gpio6_1_vtrip_sel),
        .gpio6_1_zero(gpio6_1_zero),
        .gpio6_2(gpio6_2),
        .gpio6_2_analog_en(gpio6_2_analog_en),
        .gpio6_2_analog_pol(gpio6_2_analog_pol),
        .gpio6_2_analog_sel(gpio6_2_analog_sel),
        .gpio6_2_dm(gpio6_2_dm),
        .gpio6_2_enable_h(gpio6_2_enable_h),
        .gpio6_2_enable_inp_h(gpio6_2_enable_inp_h),
        .gpio6_2_enable_vdda_h(gpio6_2_enable_vdda_h),
        .gpio6_2_enable_vddio(gpio6_2_enable_vddio),
        .gpio6_2_enable_vswitch_h(gpio6_2_enable_vswitch_h),
        .gpio6_2_hld_h_n(gpio6_2_hld_h_n),
        .gpio6_2_hld_ovr(gpio6_2_hld_ovr),
        .gpio6_2_hys_trim(gpio6_2_hys_trim),
        .gpio6_2_ib_mode_sel(gpio6_2_ib_mode_sel),
        .gpio6_2_in(gpio6_2_in),
        .gpio6_2_in_h(gpio6_2_in_h),
        .gpio6_2_inp_dis(gpio6_2_inp_dis),
        .gpio6_2_oe_n(gpio6_2_oe_n),
        .gpio6_2_one(gpio6_2_one),
        .gpio6_2_out(gpio6_2_out),
        .gpio6_2_pad_a_esd_0_h(gpio6_2_pad_a_esd_0_h),
        .gpio6_2_pad_a_esd_1_h(gpio6_2_pad_a_esd_1_h),
        .gpio6_2_pad_a_noesd_h(gpio6_2_pad_a_noesd_h),
        .gpio6_2_slew_ctl(gpio6_2_slew_ctl),
        .gpio6_2_slow(gpio6_2_slow),
        .gpio6_2_tie_hi_esd(gpio6_2_tie_hi_esd),
        .gpio6_2_tie_lo_esd(gpio6_2_tie_lo_esd),
        .gpio6_2_vtrip_sel(gpio6_2_vtrip_sel),
        .gpio6_2_zero(gpio6_2_zero),
        .gpio6_3(gpio6_3),
        .gpio6_3_analog_en(gpio6_3_analog_en),
        .gpio6_3_analog_pol(gpio6_3_analog_pol),
        .gpio6_3_analog_sel(gpio6_3_analog_sel),
        .gpio6_3_dm(gpio6_3_dm),
        .gpio6_3_enable_h(gpio6_3_enable_h),
        .gpio6_3_enable_inp_h(gpio6_3_enable_inp_h),
        .gpio6_3_enable_vdda_h(gpio6_3_enable_vdda_h),
        .gpio6_3_enable_vddio(gpio6_3_enable_vddio),
        .gpio6_3_enable_vswitch_h(gpio6_3_enable_vswitch_h),
        .gpio6_3_hld_h_n(gpio6_3_hld_h_n),
        .gpio6_3_hld_ovr(gpio6_3_hld_ovr),
        .gpio6_3_hys_trim(gpio6_3_hys_trim),
        .gpio6_3_ib_mode_sel(gpio6_3_ib_mode_sel),
        .gpio6_3_in(gpio6_3_in),
        .gpio6_3_in_h(gpio6_3_in_h),
        .gpio6_3_inp_dis(gpio6_3_inp_dis),
        .gpio6_3_oe_n(gpio6_3_oe_n),
        .gpio6_3_one(gpio6_3_one),
        .gpio6_3_out(gpio6_3_out),
        .gpio6_3_pad_a_esd_0_h(gpio6_3_pad_a_esd_0_h),
        .gpio6_3_pad_a_esd_1_h(gpio6_3_pad_a_esd_1_h),
        .gpio6_3_pad_a_noesd_h(gpio6_3_pad_a_noesd_h),
        .gpio6_3_slew_ctl(gpio6_3_slew_ctl),
        .gpio6_3_slow(gpio6_3_slow),
        .gpio6_3_tie_hi_esd(gpio6_3_tie_hi_esd),
        .gpio6_3_tie_lo_esd(gpio6_3_tie_lo_esd),
        .gpio6_3_vtrip_sel(gpio6_3_vtrip_sel),
        .gpio6_3_zero(gpio6_3_zero),
        .gpio6_4(gpio6_4),
        .gpio6_4_analog_en(gpio6_4_analog_en),
        .gpio6_4_analog_pol(gpio6_4_analog_pol),
        .gpio6_4_analog_sel(gpio6_4_analog_sel),
        .gpio6_4_dm(gpio6_4_dm),
        .gpio6_4_enable_h(gpio6_4_enable_h),
        .gpio6_4_enable_inp_h(gpio6_4_enable_inp_h),
        .gpio6_4_enable_vdda_h(gpio6_4_enable_vdda_h),
        .gpio6_4_enable_vddio(gpio6_4_enable_vddio),
        .gpio6_4_enable_vswitch_h(gpio6_4_enable_vswitch_h),
        .gpio6_4_hld_h_n(gpio6_4_hld_h_n),
        .gpio6_4_hld_ovr(gpio6_4_hld_ovr),
        .gpio6_4_hys_trim(gpio6_4_hys_trim),
        .gpio6_4_ib_mode_sel(gpio6_4_ib_mode_sel),
        .gpio6_4_in(gpio6_4_in),
        .gpio6_4_in_h(gpio6_4_in_h),
        .gpio6_4_inp_dis(gpio6_4_inp_dis),
        .gpio6_4_oe_n(gpio6_4_oe_n),
        .gpio6_4_one(gpio6_4_one),
        .gpio6_4_out(gpio6_4_out),
        .gpio6_4_pad_a_esd_0_h(gpio6_4_pad_a_esd_0_h),
        .gpio6_4_pad_a_esd_1_h(gpio6_4_pad_a_esd_1_h),
        .gpio6_4_pad_a_noesd_h(gpio6_4_pad_a_noesd_h),
        .gpio6_4_slew_ctl(gpio6_4_slew_ctl),
        .gpio6_4_slow(gpio6_4_slow),
        .gpio6_4_tie_hi_esd(gpio6_4_tie_hi_esd),
        .gpio6_4_tie_lo_esd(gpio6_4_tie_lo_esd),
        .gpio6_4_vtrip_sel(gpio6_4_vtrip_sel),
        .gpio6_4_zero(gpio6_4_zero),
        .gpio6_5(gpio6_5),
        .gpio6_5_analog_en(gpio6_5_analog_en),
        .gpio6_5_analog_pol(gpio6_5_analog_pol),
        .gpio6_5_analog_sel(gpio6_5_analog_sel),
        .gpio6_5_dm(gpio6_5_dm),
        .gpio6_5_enable_h(gpio6_5_enable_h),
        .gpio6_5_enable_inp_h(gpio6_5_enable_inp_h),
        .gpio6_5_enable_vdda_h(gpio6_5_enable_vdda_h),
        .gpio6_5_enable_vddio(gpio6_5_enable_vddio),
        .gpio6_5_enable_vswitch_h(gpio6_5_enable_vswitch_h),
        .gpio6_5_hld_h_n(gpio6_5_hld_h_n),
        .gpio6_5_hld_ovr(gpio6_5_hld_ovr),
        .gpio6_5_hys_trim(gpio6_5_hys_trim),
        .gpio6_5_ib_mode_sel(gpio6_5_ib_mode_sel),
        .gpio6_5_in(gpio6_5_in),
        .gpio6_5_in_h(gpio6_5_in_h),
        .gpio6_5_inp_dis(gpio6_5_inp_dis),
        .gpio6_5_oe_n(gpio6_5_oe_n),
        .gpio6_5_one(gpio6_5_one),
        .gpio6_5_out(gpio6_5_out),
        .gpio6_5_pad_a_esd_0_h(gpio6_5_pad_a_esd_0_h),
        .gpio6_5_pad_a_esd_1_h(gpio6_5_pad_a_esd_1_h),
        .gpio6_5_pad_a_noesd_h(gpio6_5_pad_a_noesd_h),
        .gpio6_5_slew_ctl(gpio6_5_slew_ctl),
        .gpio6_5_slow(gpio6_5_slow),
        .gpio6_5_tie_hi_esd(gpio6_5_tie_hi_esd),
        .gpio6_5_tie_lo_esd(gpio6_5_tie_lo_esd),
        .gpio6_5_vtrip_sel(gpio6_5_vtrip_sel),
        .gpio6_5_zero(gpio6_5_zero),
        .gpio6_6(gpio6_6),
        .gpio6_6_analog_en(gpio6_6_analog_en),
        .gpio6_6_analog_pol(gpio6_6_analog_pol),
        .gpio6_6_analog_sel(gpio6_6_analog_sel),
        .gpio6_6_dm(gpio6_6_dm),
        .gpio6_6_enable_h(gpio6_6_enable_h),
        .gpio6_6_enable_inp_h(gpio6_6_enable_inp_h),
        .gpio6_6_enable_vdda_h(gpio6_6_enable_vdda_h),
        .gpio6_6_enable_vddio(gpio6_6_enable_vddio),
        .gpio6_6_enable_vswitch_h(gpio6_6_enable_vswitch_h),
        .gpio6_6_hld_h_n(gpio6_6_hld_h_n),
        .gpio6_6_hld_ovr(gpio6_6_hld_ovr),
        .gpio6_6_hys_trim(gpio6_6_hys_trim),
        .gpio6_6_ib_mode_sel(gpio6_6_ib_mode_sel),
        .gpio6_6_in(gpio6_6_in),
        .gpio6_6_in_h(gpio6_6_in_h),
        .gpio6_6_inp_dis(gpio6_6_inp_dis),
        .gpio6_6_oe_n(gpio6_6_oe_n),
        .gpio6_6_one(gpio6_6_one),
        .gpio6_6_out(gpio6_6_out),
        .gpio6_6_pad_a_esd_0_h(gpio6_6_pad_a_esd_0_h),
        .gpio6_6_pad_a_esd_1_h(gpio6_6_pad_a_esd_1_h),
        .gpio6_6_pad_a_noesd_h(gpio6_6_pad_a_noesd_h),
        .gpio6_6_slew_ctl(gpio6_6_slew_ctl),
        .gpio6_6_slow(gpio6_6_slow),
        .gpio6_6_tie_hi_esd(gpio6_6_tie_hi_esd),
        .gpio6_6_tie_lo_esd(gpio6_6_tie_lo_esd),
        .gpio6_6_vtrip_sel(gpio6_6_vtrip_sel),
        .gpio6_6_zero(gpio6_6_zero),
        .gpio6_7(gpio6_7),
        .gpio6_7_analog_en(gpio6_7_analog_en),
        .gpio6_7_analog_pol(gpio6_7_analog_pol),
        .gpio6_7_analog_sel(gpio6_7_analog_sel),
        .gpio6_7_dm(gpio6_7_dm),
        .gpio6_7_enable_h(gpio6_7_enable_h),
        .gpio6_7_enable_inp_h(gpio6_7_enable_inp_h),
        .gpio6_7_enable_vdda_h(gpio6_7_enable_vdda_h),
        .gpio6_7_enable_vddio(gpio6_7_enable_vddio),
        .gpio6_7_enable_vswitch_h(gpio6_7_enable_vswitch_h),
        .gpio6_7_hld_h_n(gpio6_7_hld_h_n),
        .gpio6_7_hld_ovr(gpio6_7_hld_ovr),
        .gpio6_7_hys_trim(gpio6_7_hys_trim),
        .gpio6_7_ib_mode_sel(gpio6_7_ib_mode_sel),
        .gpio6_7_in(gpio6_7_in),
        .gpio6_7_in_h(gpio6_7_in_h),
        .gpio6_7_inp_dis(gpio6_7_inp_dis),
        .gpio6_7_oe_n(gpio6_7_oe_n),
        .gpio6_7_one(gpio6_7_one),
        .gpio6_7_out(gpio6_7_out),
        .gpio6_7_pad_a_esd_0_h(gpio6_7_pad_a_esd_0_h),
        .gpio6_7_pad_a_esd_1_h(gpio6_7_pad_a_esd_1_h),
        .gpio6_7_pad_a_noesd_h(gpio6_7_pad_a_noesd_h),
        .gpio6_7_slew_ctl(gpio6_7_slew_ctl),
        .gpio6_7_slow(gpio6_7_slow),
        .gpio6_7_tie_hi_esd(gpio6_7_tie_hi_esd),
        .gpio6_7_tie_lo_esd(gpio6_7_tie_lo_esd),
        .gpio6_7_vtrip_sel(gpio6_7_vtrip_sel),
        .gpio6_7_zero(gpio6_7_zero),
        .gpio7_0(gpio7_0),
        .gpio7_0_analog_en(gpio7_0_analog_en),
        .gpio7_0_analog_pol(gpio7_0_analog_pol),
        .gpio7_0_analog_sel(gpio7_0_analog_sel),
        .gpio7_0_dm(gpio7_0_dm),
        .gpio7_0_enable_h(gpio7_0_enable_h),
        .gpio7_0_enable_inp_h(gpio7_0_enable_inp_h),
        .gpio7_0_enable_vdda_h(gpio7_0_enable_vdda_h),
        .gpio7_0_enable_vddio(gpio7_0_enable_vddio),
        .gpio7_0_enable_vswitch_h(gpio7_0_enable_vswitch_h),
        .gpio7_0_hld_h_n(gpio7_0_hld_h_n),
        .gpio7_0_hld_ovr(gpio7_0_hld_ovr),
        .gpio7_0_ib_mode_sel(gpio7_0_ib_mode_sel),
        .gpio7_0_in(gpio7_0_in),
        .gpio7_0_in_h(gpio7_0_in_h),
        .gpio7_0_inp_dis(gpio7_0_inp_dis),
        .gpio7_0_oe_n(gpio7_0_oe_n),
        .gpio7_0_one(gpio7_0_one),
        .gpio7_0_out(gpio7_0_out),
        .gpio7_0_pad_a_esd_0_h(gpio7_0_pad_a_esd_0_h),
        .gpio7_0_pad_a_esd_1_h(gpio7_0_pad_a_esd_1_h),
        .gpio7_0_pad_a_noesd_h(gpio7_0_pad_a_noesd_h),
        .gpio7_0_slow(gpio7_0_slow),
        .gpio7_0_tie_hi_esd(gpio7_0_tie_hi_esd),
        .gpio7_0_tie_lo_esd(gpio7_0_tie_lo_esd),
        .gpio7_0_vtrip_sel(gpio7_0_vtrip_sel),
        .gpio7_0_zero(gpio7_0_zero),
        .gpio7_1(gpio7_1),
        .gpio7_1_analog_en(gpio7_1_analog_en),
        .gpio7_1_analog_pol(gpio7_1_analog_pol),
        .gpio7_1_analog_sel(gpio7_1_analog_sel),
        .gpio7_1_dm(gpio7_1_dm),
        .gpio7_1_enable_h(gpio7_1_enable_h),
        .gpio7_1_enable_inp_h(gpio7_1_enable_inp_h),
        .gpio7_1_enable_vdda_h(gpio7_1_enable_vdda_h),
        .gpio7_1_enable_vddio(gpio7_1_enable_vddio),
        .gpio7_1_enable_vswitch_h(gpio7_1_enable_vswitch_h),
        .gpio7_1_hld_h_n(gpio7_1_hld_h_n),
        .gpio7_1_hld_ovr(gpio7_1_hld_ovr),
        .gpio7_1_ib_mode_sel(gpio7_1_ib_mode_sel),
        .gpio7_1_in(gpio7_1_in),
        .gpio7_1_in_h(gpio7_1_in_h),
        .gpio7_1_inp_dis(gpio7_1_inp_dis),
        .gpio7_1_oe_n(gpio7_1_oe_n),
        .gpio7_1_one(gpio7_1_one),
        .gpio7_1_out(gpio7_1_out),
        .gpio7_1_pad_a_esd_0_h(gpio7_1_pad_a_esd_0_h),
        .gpio7_1_pad_a_esd_1_h(gpio7_1_pad_a_esd_1_h),
        .gpio7_1_pad_a_noesd_h(gpio7_1_pad_a_noesd_h),
        .gpio7_1_slow(gpio7_1_slow),
        .gpio7_1_tie_hi_esd(gpio7_1_tie_hi_esd),
        .gpio7_1_tie_lo_esd(gpio7_1_tie_lo_esd),
        .gpio7_1_vtrip_sel(gpio7_1_vtrip_sel),
        .gpio7_1_zero(gpio7_1_zero),
        .gpio7_2(gpio7_2),
        .gpio7_2_analog_en(gpio7_2_analog_en),
        .gpio7_2_analog_pol(gpio7_2_analog_pol),
        .gpio7_2_analog_sel(gpio7_2_analog_sel),
        .gpio7_2_dm(gpio7_2_dm),
        .gpio7_2_enable_h(gpio7_2_enable_h),
        .gpio7_2_enable_inp_h(gpio7_2_enable_inp_h),
        .gpio7_2_enable_vdda_h(gpio7_2_enable_vdda_h),
        .gpio7_2_enable_vddio(gpio7_2_enable_vddio),
        .gpio7_2_enable_vswitch_h(gpio7_2_enable_vswitch_h),
        .gpio7_2_hld_h_n(gpio7_2_hld_h_n),
        .gpio7_2_hld_ovr(gpio7_2_hld_ovr),
        .gpio7_2_ib_mode_sel(gpio7_2_ib_mode_sel),
        .gpio7_2_in(gpio7_2_in),
        .gpio7_2_in_h(gpio7_2_in_h),
        .gpio7_2_inp_dis(gpio7_2_inp_dis),
        .gpio7_2_oe_n(gpio7_2_oe_n),
        .gpio7_2_one(gpio7_2_one),
        .gpio7_2_out(gpio7_2_out),
        .gpio7_2_pad_a_esd_0_h(gpio7_2_pad_a_esd_0_h),
        .gpio7_2_pad_a_esd_1_h(gpio7_2_pad_a_esd_1_h),
        .gpio7_2_pad_a_noesd_h(gpio7_2_pad_a_noesd_h),
        .gpio7_2_slow(gpio7_2_slow),
        .gpio7_2_tie_hi_esd(gpio7_2_tie_hi_esd),
        .gpio7_2_tie_lo_esd(gpio7_2_tie_lo_esd),
        .gpio7_2_vtrip_sel(gpio7_2_vtrip_sel),
        .gpio7_2_zero(gpio7_2_zero),
        .gpio7_3(gpio7_3),
        .gpio7_3_analog_en(gpio7_3_analog_en),
        .gpio7_3_analog_pol(gpio7_3_analog_pol),
        .gpio7_3_analog_sel(gpio7_3_analog_sel),
        .gpio7_3_dm(gpio7_3_dm),
        .gpio7_3_enable_h(gpio7_3_enable_h),
        .gpio7_3_enable_inp_h(gpio7_3_enable_inp_h),
        .gpio7_3_enable_vdda_h(gpio7_3_enable_vdda_h),
        .gpio7_3_enable_vddio(gpio7_3_enable_vddio),
        .gpio7_3_enable_vswitch_h(gpio7_3_enable_vswitch_h),
        .gpio7_3_hld_h_n(gpio7_3_hld_h_n),
        .gpio7_3_hld_ovr(gpio7_3_hld_ovr),
        .gpio7_3_ib_mode_sel(gpio7_3_ib_mode_sel),
        .gpio7_3_in(gpio7_3_in),
        .gpio7_3_in_h(gpio7_3_in_h),
        .gpio7_3_inp_dis(gpio7_3_inp_dis),
        .gpio7_3_oe_n(gpio7_3_oe_n),
        .gpio7_3_one(gpio7_3_one),
        .gpio7_3_out(gpio7_3_out),
        .gpio7_3_pad_a_esd_0_h(gpio7_3_pad_a_esd_0_h),
        .gpio7_3_pad_a_esd_1_h(gpio7_3_pad_a_esd_1_h),
        .gpio7_3_pad_a_noesd_h(gpio7_3_pad_a_noesd_h),
        .gpio7_3_slow(gpio7_3_slow),
        .gpio7_3_tie_hi_esd(gpio7_3_tie_hi_esd),
        .gpio7_3_tie_lo_esd(gpio7_3_tie_lo_esd),
        .gpio7_3_vtrip_sel(gpio7_3_vtrip_sel),
        .gpio7_3_zero(gpio7_3_zero),
        .gpio7_4(gpio7_4),
        .gpio7_4_analog_en(gpio7_4_analog_en),
        .gpio7_4_analog_pol(gpio7_4_analog_pol),
        .gpio7_4_analog_sel(gpio7_4_analog_sel),
        .gpio7_4_dm(gpio7_4_dm),
        .gpio7_4_enable_h(gpio7_4_enable_h),
        .gpio7_4_enable_inp_h(gpio7_4_enable_inp_h),
        .gpio7_4_enable_vdda_h(gpio7_4_enable_vdda_h),
        .gpio7_4_enable_vddio(gpio7_4_enable_vddio),
        .gpio7_4_enable_vswitch_h(gpio7_4_enable_vswitch_h),
        .gpio7_4_hld_h_n(gpio7_4_hld_h_n),
        .gpio7_4_hld_ovr(gpio7_4_hld_ovr),
        .gpio7_4_ib_mode_sel(gpio7_4_ib_mode_sel),
        .gpio7_4_in(gpio7_4_in),
        .gpio7_4_in_h(gpio7_4_in_h),
        .gpio7_4_inp_dis(gpio7_4_inp_dis),
        .gpio7_4_oe_n(gpio7_4_oe_n),
        .gpio7_4_one(gpio7_4_one),
        .gpio7_4_out(gpio7_4_out),
        .gpio7_4_pad_a_esd_0_h(gpio7_4_pad_a_esd_0_h),
        .gpio7_4_pad_a_esd_1_h(gpio7_4_pad_a_esd_1_h),
        .gpio7_4_pad_a_noesd_h(gpio7_4_pad_a_noesd_h),
        .gpio7_4_slow(gpio7_4_slow),
        .gpio7_4_tie_hi_esd(gpio7_4_tie_hi_esd),
        .gpio7_4_tie_lo_esd(gpio7_4_tie_lo_esd),
        .gpio7_4_vtrip_sel(gpio7_4_vtrip_sel),
        .gpio7_4_zero(gpio7_4_zero),
        .gpio7_5(gpio7_5),
        .gpio7_5_analog_en(gpio7_5_analog_en),
        .gpio7_5_analog_pol(gpio7_5_analog_pol),
        .gpio7_5_analog_sel(gpio7_5_analog_sel),
        .gpio7_5_dm(gpio7_5_dm),
        .gpio7_5_enable_h(gpio7_5_enable_h),
        .gpio7_5_enable_inp_h(gpio7_5_enable_inp_h),
        .gpio7_5_enable_vdda_h(gpio7_5_enable_vdda_h),
        .gpio7_5_enable_vddio(gpio7_5_enable_vddio),
        .gpio7_5_enable_vswitch_h(gpio7_5_enable_vswitch_h),
        .gpio7_5_hld_h_n(gpio7_5_hld_h_n),
        .gpio7_5_hld_ovr(gpio7_5_hld_ovr),
        .gpio7_5_ib_mode_sel(gpio7_5_ib_mode_sel),
        .gpio7_5_in(gpio7_5_in),
        .gpio7_5_in_h(gpio7_5_in_h),
        .gpio7_5_inp_dis(gpio7_5_inp_dis),
        .gpio7_5_oe_n(gpio7_5_oe_n),
        .gpio7_5_one(gpio7_5_one),
        .gpio7_5_out(gpio7_5_out),
        .gpio7_5_pad_a_esd_0_h(gpio7_5_pad_a_esd_0_h),
        .gpio7_5_pad_a_esd_1_h(gpio7_5_pad_a_esd_1_h),
        .gpio7_5_pad_a_noesd_h(gpio7_5_pad_a_noesd_h),
        .gpio7_5_slow(gpio7_5_slow),
        .gpio7_5_tie_hi_esd(gpio7_5_tie_hi_esd),
        .gpio7_5_tie_lo_esd(gpio7_5_tie_lo_esd),
        .gpio7_5_vtrip_sel(gpio7_5_vtrip_sel),
        .gpio7_5_zero(gpio7_5_zero),
        .gpio7_6(gpio7_6),
        .gpio7_6_analog_en(gpio7_6_analog_en),
        .gpio7_6_analog_pol(gpio7_6_analog_pol),
        .gpio7_6_analog_sel(gpio7_6_analog_sel),
        .gpio7_6_dm(gpio7_6_dm),
        .gpio7_6_enable_h(gpio7_6_enable_h),
        .gpio7_6_enable_inp_h(gpio7_6_enable_inp_h),
        .gpio7_6_enable_vdda_h(gpio7_6_enable_vdda_h),
        .gpio7_6_enable_vddio(gpio7_6_enable_vddio),
        .gpio7_6_enable_vswitch_h(gpio7_6_enable_vswitch_h),
        .gpio7_6_hld_h_n(gpio7_6_hld_h_n),
        .gpio7_6_hld_ovr(gpio7_6_hld_ovr),
        .gpio7_6_ib_mode_sel(gpio7_6_ib_mode_sel),
        .gpio7_6_in(gpio7_6_in),
        .gpio7_6_in_h(gpio7_6_in_h),
        .gpio7_6_inp_dis(gpio7_6_inp_dis),
        .gpio7_6_oe_n(gpio7_6_oe_n),
        .gpio7_6_one(gpio7_6_one),
        .gpio7_6_out(gpio7_6_out),
        .gpio7_6_pad_a_esd_0_h(gpio7_6_pad_a_esd_0_h),
        .gpio7_6_pad_a_esd_1_h(gpio7_6_pad_a_esd_1_h),
        .gpio7_6_pad_a_noesd_h(gpio7_6_pad_a_noesd_h),
        .gpio7_6_slow(gpio7_6_slow),
        .gpio7_6_tie_hi_esd(gpio7_6_tie_hi_esd),
        .gpio7_6_tie_lo_esd(gpio7_6_tie_lo_esd),
        .gpio7_6_vtrip_sel(gpio7_6_vtrip_sel),
        .gpio7_6_zero(gpio7_6_zero),
        .gpio7_7(gpio7_7),
        .gpio7_7_analog_en(gpio7_7_analog_en),
        .gpio7_7_analog_pol(gpio7_7_analog_pol),
        .gpio7_7_analog_sel(gpio7_7_analog_sel),
        .gpio7_7_dm(gpio7_7_dm),
        .gpio7_7_enable_h(gpio7_7_enable_h),
        .gpio7_7_enable_inp_h(gpio7_7_enable_inp_h),
        .gpio7_7_enable_vdda_h(gpio7_7_enable_vdda_h),
        .gpio7_7_enable_vddio(gpio7_7_enable_vddio),
        .gpio7_7_enable_vswitch_h(gpio7_7_enable_vswitch_h),
        .gpio7_7_hld_h_n(gpio7_7_hld_h_n),
        .gpio7_7_hld_ovr(gpio7_7_hld_ovr),
        .gpio7_7_ib_mode_sel(gpio7_7_ib_mode_sel),
        .gpio7_7_in(gpio7_7_in),
        .gpio7_7_in_h(gpio7_7_in_h),
        .gpio7_7_inp_dis(gpio7_7_inp_dis),
        .gpio7_7_oe_n(gpio7_7_oe_n),
        .gpio7_7_one(gpio7_7_one),
        .gpio7_7_out(gpio7_7_out),
        .gpio7_7_pad_a_esd_0_h(gpio7_7_pad_a_esd_0_h),
        .gpio7_7_pad_a_esd_1_h(gpio7_7_pad_a_esd_1_h),
        .gpio7_7_pad_a_noesd_h(gpio7_7_pad_a_noesd_h),
        .gpio7_7_slow(gpio7_7_slow),
        .gpio7_7_tie_hi_esd(gpio7_7_tie_hi_esd),
        .gpio7_7_tie_lo_esd(gpio7_7_tie_lo_esd),
        .gpio7_7_vtrip_sel(gpio7_7_vtrip_sel),
        .gpio7_7_zero(gpio7_7_zero),
        .gpio8_0(gpio8_0),
        .gpio8_0_analog_en(gpio8_0_analog_en),
        .gpio8_0_analog_pol(gpio8_0_analog_pol),
        .gpio8_0_analog_sel(gpio8_0_analog_sel),
        .gpio8_0_dm(gpio8_0_dm),
        .gpio8_0_enable_h(gpio8_0_enable_h),
        .gpio8_0_enable_inp_h(gpio8_0_enable_inp_h),
        .gpio8_0_enable_vdda_h(gpio8_0_enable_vdda_h),
        .gpio8_0_enable_vddio(gpio8_0_enable_vddio),
        .gpio8_0_enable_vswitch_h(gpio8_0_enable_vswitch_h),
        .gpio8_0_hld_h_n(gpio8_0_hld_h_n),
        .gpio8_0_hld_ovr(gpio8_0_hld_ovr),
        .gpio8_0_ib_mode_sel(gpio8_0_ib_mode_sel),
        .gpio8_0_in(gpio8_0_in),
        .gpio8_0_in_h(gpio8_0_in_h),
        .gpio8_0_inp_dis(gpio8_0_inp_dis),
        .gpio8_0_oe_n(gpio8_0_oe_n),
        .gpio8_0_one(gpio8_0_one),
        .gpio8_0_out(gpio8_0_out),
        .gpio8_0_pad_a_esd_0_h(gpio8_0_pad_a_esd_0_h),
        .gpio8_0_pad_a_esd_1_h(gpio8_0_pad_a_esd_1_h),
        .gpio8_0_pad_a_noesd_h(gpio8_0_pad_a_noesd_h),
        .gpio8_0_slow(gpio8_0_slow),
        .gpio8_0_tie_hi_esd(gpio8_0_tie_hi_esd),
        .gpio8_0_tie_lo_esd(gpio8_0_tie_lo_esd),
        .gpio8_0_vtrip_sel(gpio8_0_vtrip_sel),
        .gpio8_0_zero(gpio8_0_zero),
        .gpio8_1(gpio8_1),
        .gpio8_1_analog_en(gpio8_1_analog_en),
        .gpio8_1_analog_pol(gpio8_1_analog_pol),
        .gpio8_1_analog_sel(gpio8_1_analog_sel),
        .gpio8_1_dm(gpio8_1_dm),
        .gpio8_1_enable_h(gpio8_1_enable_h),
        .gpio8_1_enable_inp_h(gpio8_1_enable_inp_h),
        .gpio8_1_enable_vdda_h(gpio8_1_enable_vdda_h),
        .gpio8_1_enable_vddio(gpio8_1_enable_vddio),
        .gpio8_1_enable_vswitch_h(gpio8_1_enable_vswitch_h),
        .gpio8_1_hld_h_n(gpio8_1_hld_h_n),
        .gpio8_1_hld_ovr(gpio8_1_hld_ovr),
        .gpio8_1_ib_mode_sel(gpio8_1_ib_mode_sel),
        .gpio8_1_in(gpio8_1_in),
        .gpio8_1_in_h(gpio8_1_in_h),
        .gpio8_1_inp_dis(gpio8_1_inp_dis),
        .gpio8_1_oe_n(gpio8_1_oe_n),
        .gpio8_1_one(gpio8_1_one),
        .gpio8_1_out(gpio8_1_out),
        .gpio8_1_pad_a_esd_0_h(gpio8_1_pad_a_esd_0_h),
        .gpio8_1_pad_a_esd_1_h(gpio8_1_pad_a_esd_1_h),
        .gpio8_1_pad_a_noesd_h(gpio8_1_pad_a_noesd_h),
        .gpio8_1_slow(gpio8_1_slow),
        .gpio8_1_tie_hi_esd(gpio8_1_tie_hi_esd),
        .gpio8_1_tie_lo_esd(gpio8_1_tie_lo_esd),
        .gpio8_1_vtrip_sel(gpio8_1_vtrip_sel),
        .gpio8_1_zero(gpio8_1_zero),
        .gpio8_2(gpio8_2),
        .gpio8_2_analog_en(gpio8_2_analog_en),
        .gpio8_2_analog_pol(gpio8_2_analog_pol),
        .gpio8_2_analog_sel(gpio8_2_analog_sel),
        .gpio8_2_dm(gpio8_2_dm),
        .gpio8_2_enable_h(gpio8_2_enable_h),
        .gpio8_2_enable_inp_h(gpio8_2_enable_inp_h),
        .gpio8_2_enable_vdda_h(gpio8_2_enable_vdda_h),
        .gpio8_2_enable_vddio(gpio8_2_enable_vddio),
        .gpio8_2_enable_vswitch_h(gpio8_2_enable_vswitch_h),
        .gpio8_2_hld_h_n(gpio8_2_hld_h_n),
        .gpio8_2_hld_ovr(gpio8_2_hld_ovr),
        .gpio8_2_ib_mode_sel(gpio8_2_ib_mode_sel),
        .gpio8_2_in(gpio8_2_in),
        .gpio8_2_in_h(gpio8_2_in_h),
        .gpio8_2_inp_dis(gpio8_2_inp_dis),
        .gpio8_2_oe_n(gpio8_2_oe_n),
        .gpio8_2_one(gpio8_2_one),
        .gpio8_2_out(gpio8_2_out),
        .gpio8_2_pad_a_esd_0_h(gpio8_2_pad_a_esd_0_h),
        .gpio8_2_pad_a_esd_1_h(gpio8_2_pad_a_esd_1_h),
        .gpio8_2_pad_a_noesd_h(gpio8_2_pad_a_noesd_h),
        .gpio8_2_slow(gpio8_2_slow),
        .gpio8_2_tie_hi_esd(gpio8_2_tie_hi_esd),
        .gpio8_2_tie_lo_esd(gpio8_2_tie_lo_esd),
        .gpio8_2_vtrip_sel(gpio8_2_vtrip_sel),
        .gpio8_2_zero(gpio8_2_zero),
        .gpio8_3(gpio8_3),
        .gpio8_3_analog_en(gpio8_3_analog_en),
        .gpio8_3_analog_pol(gpio8_3_analog_pol),
        .gpio8_3_analog_sel(gpio8_3_analog_sel),
        .gpio8_3_dm(gpio8_3_dm),
        .gpio8_3_enable_h(gpio8_3_enable_h),
        .gpio8_3_enable_inp_h(gpio8_3_enable_inp_h),
        .gpio8_3_enable_vdda_h(gpio8_3_enable_vdda_h),
        .gpio8_3_enable_vddio(gpio8_3_enable_vddio),
        .gpio8_3_enable_vswitch_h(gpio8_3_enable_vswitch_h),
        .gpio8_3_hld_h_n(gpio8_3_hld_h_n),
        .gpio8_3_hld_ovr(gpio8_3_hld_ovr),
        .gpio8_3_ib_mode_sel(gpio8_3_ib_mode_sel),
        .gpio8_3_in(gpio8_3_in),
        .gpio8_3_in_h(gpio8_3_in_h),
        .gpio8_3_inp_dis(gpio8_3_inp_dis),
        .gpio8_3_oe_n(gpio8_3_oe_n),
        .gpio8_3_one(gpio8_3_one),
        .gpio8_3_out(gpio8_3_out),
        .gpio8_3_pad_a_esd_0_h(gpio8_3_pad_a_esd_0_h),
        .gpio8_3_pad_a_esd_1_h(gpio8_3_pad_a_esd_1_h),
        .gpio8_3_pad_a_noesd_h(gpio8_3_pad_a_noesd_h),
        .gpio8_3_slow(gpio8_3_slow),
        .gpio8_3_tie_hi_esd(gpio8_3_tie_hi_esd),
        .gpio8_3_tie_lo_esd(gpio8_3_tie_lo_esd),
        .gpio8_3_vtrip_sel(gpio8_3_vtrip_sel),
        .gpio8_3_zero(gpio8_3_zero),
        .gpio8_4(gpio8_4),
        .gpio8_4_analog_en(gpio8_4_analog_en),
        .gpio8_4_analog_pol(gpio8_4_analog_pol),
        .gpio8_4_analog_sel(gpio8_4_analog_sel),
        .gpio8_4_dm(gpio8_4_dm),
        .gpio8_4_enable_h(gpio8_4_enable_h),
        .gpio8_4_enable_inp_h(gpio8_4_enable_inp_h),
        .gpio8_4_enable_vdda_h(gpio8_4_enable_vdda_h),
        .gpio8_4_enable_vddio(gpio8_4_enable_vddio),
        .gpio8_4_enable_vswitch_h(gpio8_4_enable_vswitch_h),
        .gpio8_4_hld_h_n(gpio8_4_hld_h_n),
        .gpio8_4_hld_ovr(gpio8_4_hld_ovr),
        .gpio8_4_ib_mode_sel(gpio8_4_ib_mode_sel),
        .gpio8_4_in(gpio8_4_in),
        .gpio8_4_in_h(gpio8_4_in_h),
        .gpio8_4_inp_dis(gpio8_4_inp_dis),
        .gpio8_4_oe_n(gpio8_4_oe_n),
        .gpio8_4_one(gpio8_4_one),
        .gpio8_4_out(gpio8_4_out),
        .gpio8_4_pad_a_esd_0_h(gpio8_4_pad_a_esd_0_h),
        .gpio8_4_pad_a_esd_1_h(gpio8_4_pad_a_esd_1_h),
        .gpio8_4_pad_a_noesd_h(gpio8_4_pad_a_noesd_h),
        .gpio8_4_slow(gpio8_4_slow),
        .gpio8_4_tie_hi_esd(gpio8_4_tie_hi_esd),
        .gpio8_4_tie_lo_esd(gpio8_4_tie_lo_esd),
        .gpio8_4_vtrip_sel(gpio8_4_vtrip_sel),
        .gpio8_4_zero(gpio8_4_zero),
        .gpio8_5(gpio8_5),
        .gpio8_5_analog_en(gpio8_5_analog_en),
        .gpio8_5_analog_pol(gpio8_5_analog_pol),
        .gpio8_5_analog_sel(gpio8_5_analog_sel),
        .gpio8_5_dm(gpio8_5_dm),
        .gpio8_5_enable_h(gpio8_5_enable_h),
        .gpio8_5_enable_inp_h(gpio8_5_enable_inp_h),
        .gpio8_5_enable_vdda_h(gpio8_5_enable_vdda_h),
        .gpio8_5_enable_vddio(gpio8_5_enable_vddio),
        .gpio8_5_enable_vswitch_h(gpio8_5_enable_vswitch_h),
        .gpio8_5_hld_h_n(gpio8_5_hld_h_n),
        .gpio8_5_hld_ovr(gpio8_5_hld_ovr),
        .gpio8_5_ib_mode_sel(gpio8_5_ib_mode_sel),
        .gpio8_5_in(gpio8_5_in),
        .gpio8_5_in_h(gpio8_5_in_h),
        .gpio8_5_inp_dis(gpio8_5_inp_dis),
        .gpio8_5_oe_n(gpio8_5_oe_n),
        .gpio8_5_one(gpio8_5_one),
        .gpio8_5_out(gpio8_5_out),
        .gpio8_5_pad_a_esd_0_h(gpio8_5_pad_a_esd_0_h),
        .gpio8_5_pad_a_esd_1_h(gpio8_5_pad_a_esd_1_h),
        .gpio8_5_pad_a_noesd_h(gpio8_5_pad_a_noesd_h),
        .gpio8_5_slow(gpio8_5_slow),
        .gpio8_5_tie_hi_esd(gpio8_5_tie_hi_esd),
        .gpio8_5_tie_lo_esd(gpio8_5_tie_lo_esd),
        .gpio8_5_vtrip_sel(gpio8_5_vtrip_sel),
        .gpio8_5_zero(gpio8_5_zero),
        .gpio8_6(gpio8_6),
        .gpio8_6_analog_en(gpio8_6_analog_en),
        .gpio8_6_analog_pol(gpio8_6_analog_pol),
        .gpio8_6_analog_sel(gpio8_6_analog_sel),
        .gpio8_6_dm(gpio8_6_dm),
        .gpio8_6_enable_h(gpio8_6_enable_h),
        .gpio8_6_enable_inp_h(gpio8_6_enable_inp_h),
        .gpio8_6_enable_vdda_h(gpio8_6_enable_vdda_h),
        .gpio8_6_enable_vddio(gpio8_6_enable_vddio),
        .gpio8_6_enable_vswitch_h(gpio8_6_enable_vswitch_h),
        .gpio8_6_hld_h_n(gpio8_6_hld_h_n),
        .gpio8_6_hld_ovr(gpio8_6_hld_ovr),
        .gpio8_6_ib_mode_sel(gpio8_6_ib_mode_sel),
        .gpio8_6_in(gpio8_6_in),
        .gpio8_6_in_h(gpio8_6_in_h),
        .gpio8_6_inp_dis(gpio8_6_inp_dis),
        .gpio8_6_oe_n(gpio8_6_oe_n),
        .gpio8_6_one(gpio8_6_one),
        .gpio8_6_out(gpio8_6_out),
        .gpio8_6_pad_a_esd_0_h(gpio8_6_pad_a_esd_0_h),
        .gpio8_6_pad_a_esd_1_h(gpio8_6_pad_a_esd_1_h),
        .gpio8_6_pad_a_noesd_h(gpio8_6_pad_a_noesd_h),
        .gpio8_6_slow(gpio8_6_slow),
        .gpio8_6_tie_hi_esd(gpio8_6_tie_hi_esd),
        .gpio8_6_tie_lo_esd(gpio8_6_tie_lo_esd),
        .gpio8_6_vtrip_sel(gpio8_6_vtrip_sel),
        .gpio8_6_zero(gpio8_6_zero),
        .gpio8_7(gpio8_7),
        .gpio8_7_analog_en(gpio8_7_analog_en),
        .gpio8_7_analog_pol(gpio8_7_analog_pol),
        .gpio8_7_analog_sel(gpio8_7_analog_sel),
        .gpio8_7_dm(gpio8_7_dm),
        .gpio8_7_enable_h(gpio8_7_enable_h),
        .gpio8_7_enable_inp_h(gpio8_7_enable_inp_h),
        .gpio8_7_enable_vdda_h(gpio8_7_enable_vdda_h),
        .gpio8_7_enable_vddio(gpio8_7_enable_vddio),
        .gpio8_7_enable_vswitch_h(gpio8_7_enable_vswitch_h),
        .gpio8_7_hld_h_n(gpio8_7_hld_h_n),
        .gpio8_7_hld_ovr(gpio8_7_hld_ovr),
        .gpio8_7_ib_mode_sel(gpio8_7_ib_mode_sel),
        .gpio8_7_in(gpio8_7_in),
        .gpio8_7_in_h(gpio8_7_in_h),
        .gpio8_7_inp_dis(gpio8_7_inp_dis),
        .gpio8_7_oe_n(gpio8_7_oe_n),
        .gpio8_7_one(gpio8_7_one),
        .gpio8_7_out(gpio8_7_out),
        .gpio8_7_pad_a_esd_0_h(gpio8_7_pad_a_esd_0_h),
        .gpio8_7_pad_a_esd_1_h(gpio8_7_pad_a_esd_1_h),
        .gpio8_7_pad_a_noesd_h(gpio8_7_pad_a_noesd_h),
        .gpio8_7_slow(gpio8_7_slow),
        .gpio8_7_tie_hi_esd(gpio8_7_tie_hi_esd),
        .gpio8_7_tie_lo_esd(gpio8_7_tie_lo_esd),
        .gpio8_7_vtrip_sel(gpio8_7_vtrip_sel),
        .gpio8_7_zero(gpio8_7_zero),
        .muxsplit_ne_enable_vdda_h(muxsplit_ne_enable_vdda_h),
        .muxsplit_ne_hld_vdda_h_n(muxsplit_ne_hld_vdda_h_n),
        .muxsplit_ne_switch_aa_s0(muxsplit_ne_switch_aa_s0),
        .muxsplit_ne_switch_aa_sl(muxsplit_ne_switch_aa_sl),
        .muxsplit_ne_switch_aa_sr(muxsplit_ne_switch_aa_sr),
        .muxsplit_ne_switch_bb_s0(muxsplit_ne_switch_bb_s0),
        .muxsplit_ne_switch_bb_sl(muxsplit_ne_switch_bb_sl),
        .muxsplit_ne_switch_bb_sr(muxsplit_ne_switch_bb_sr),
        .muxsplit_nw_enable_vdda_h(muxsplit_nw_enable_vdda_h),
        .muxsplit_nw_hld_vdda_h_n(muxsplit_nw_hld_vdda_h_n),
        .muxsplit_nw_switch_aa_s0(muxsplit_nw_switch_aa_s0),
        .muxsplit_nw_switch_aa_sl(muxsplit_nw_switch_aa_sl),
        .muxsplit_nw_switch_aa_sr(muxsplit_nw_switch_aa_sr),
        .muxsplit_nw_switch_bb_s0(muxsplit_nw_switch_bb_s0),
        .muxsplit_nw_switch_bb_sl(muxsplit_nw_switch_bb_sl),
        .muxsplit_nw_switch_bb_sr(muxsplit_nw_switch_bb_sr),
        .muxsplit_se_enable_vdda_h(muxsplit_se_enable_vdda_h),
        .muxsplit_se_hld_vdda_h_n(muxsplit_se_hld_vdda_h_n),
        .muxsplit_se_switch_aa_s0(muxsplit_se_switch_aa_s0),
        .muxsplit_se_switch_aa_sl(muxsplit_se_switch_aa_sl),
        .muxsplit_se_switch_aa_sr(muxsplit_se_switch_aa_sr),
        .muxsplit_se_switch_bb_s0(muxsplit_se_switch_bb_s0),
        .muxsplit_se_switch_bb_sl(muxsplit_se_switch_bb_sl),
        .muxsplit_se_switch_bb_sr(muxsplit_se_switch_bb_sr),
        .muxsplit_sw_enable_vdda_h(muxsplit_sw_enable_vdda_h),
        .muxsplit_sw_hld_vdda_h_n(muxsplit_sw_hld_vdda_h_n),
        .muxsplit_sw_switch_aa_s0(muxsplit_sw_switch_aa_s0),
        .muxsplit_sw_switch_aa_sl(muxsplit_sw_switch_aa_sl),
        .muxsplit_sw_switch_aa_sr(muxsplit_sw_switch_aa_sr),
        .muxsplit_sw_switch_bb_s0(muxsplit_sw_switch_bb_s0),
        .muxsplit_sw_switch_bb_sl(muxsplit_sw_switch_bb_sl),
        .muxsplit_sw_switch_bb_sr(muxsplit_sw_switch_bb_sr),
        .pwrdet_in1_vddd_hv(pwrdet_in1_vddd_hv),
        .pwrdet_in1_vddio_hv(pwrdet_in1_vddio_hv),
        .pwrdet_in2_vddd_hv(pwrdet_in2_vddd_hv),
        .pwrdet_in2_vddio_hv(pwrdet_in2_vddio_hv),
        .pwrdet_in3_vddd_hv(pwrdet_in3_vddd_hv),
        .pwrdet_in3_vddio_hv(pwrdet_in3_vddio_hv),
        .pwrdet_out1_vddd_hv(pwrdet_out1_vddd_hv),
        .pwrdet_out1_vddio_hv(pwrdet_out1_vddio_hv),
        .pwrdet_out2_vddd_hv(pwrdet_out2_vddd_hv),
        .pwrdet_out2_vddio_hv(pwrdet_out2_vddio_hv),
        .pwrdet_out3_vddd_hv(pwrdet_out3_vddd_hv),
        .pwrdet_out3_vddio_hv(pwrdet_out3_vddio_hv),
        .pwrdet_rst_por_hv_n(pwrdet_rst_por_hv_n),
        .pwrdet_tie_lo_esd(pwrdet_tie_lo_esd),
        .pwrdet_vddd_present_vddio_hv(pwrdet_vddd_present_vddio_hv),
        .pwrdet_vddio_present_vddd_hv(pwrdet_vddio_present_vddd_hv),
        .resetb(resetb),
        .resetb_disable_pullup_h(resetb_disable_pullup_h),
        .resetb_en_vddio_sig_h(resetb_en_vddio_sig_h),
        .resetb_enable_h(resetb_enable_h),
        .resetb_enable_vddio(resetb_enable_vddio),
        .resetb_filt_in_h(resetb_filt_in_h),
        .resetb_inp_sel_h(resetb_inp_sel_h),
        .resetb_pad_a_esd_h(resetb_pad_a_esd_h),
        .resetb_pullup_h(resetb_pullup_h),
        .resetb_tie_hi_esd(resetb_tie_hi_esd),
        .resetb_tie_lo_esd(resetb_tie_lo_esd),
        .resetb_tie_weak_hi_h(resetb_tie_weak_hi_h),
        .resetb_xres_h_n(resetb_xres_h_n),
        .resetb_xres_n(resetb_xres_n),
        .select(select),
        .select_analog_en(select_analog_en),
        .select_analog_pol(select_analog_pol),
        .select_analog_sel(select_analog_sel),
        .select_dm(select_dm),
        .select_enable_h(select_enable_h),
        .select_enable_inp_h(select_enable_inp_h),
        .select_enable_vdda_h(select_enable_vdda_h),
        .select_enable_vddio(select_enable_vddio),
        .select_enable_vswitch_h(select_enable_vswitch_h),
        .select_hld_h_n(select_hld_h_n),
        .select_hld_ovr(select_hld_ovr),
        .select_ib_mode_sel(select_ib_mode_sel),
        .select_in(select_in),
        .select_in_h(select_in_h),
        .select_inp_dis(select_inp_dis),
        .select_oe_n(select_oe_n),
        .select_one(select_one),
        .select_out(select_out),
        .select_pad_a_esd_0_h(select_pad_a_esd_0_h),
        .select_pad_a_esd_1_h(select_pad_a_esd_1_h),
        .select_pad_a_noesd_h(select_pad_a_noesd_h),
        .select_slow(select_slow),
        .select_tie_hi_esd(select_tie_hi_esd),
        .select_tie_lo_esd(select_tie_lo_esd),
        .select_vtrip_sel(select_vtrip_sel),
        .select_zero(select_zero),
        .sio0(sio0),
        .sio1(sio1),
        .sio_amuxbus_a(sio_amuxbus_a),
        .sio_amuxbus_b(sio_amuxbus_b),
        .sio_dft_refgen(sio_dft_refgen),
        .sio_dm0(sio_dm0),
        .sio_dm1(sio_dm1),
        .sio_enable_h(sio_enable_h),
        .sio_enable_vdda_h(sio_enable_vdda_h),
        .sio_hld_h_n(sio_hld_h_n),
        .sio_hld_h_n_refgen(sio_hld_h_n_refgen),
        .sio_hld_ovr(sio_hld_ovr),
        .sio_ibuf_sel(sio_ibuf_sel),
        .sio_ibuf_sel_refgen(sio_ibuf_sel_refgen),
        .sio_in(sio_in),
        .sio_in_h(sio_in_h),
        .sio_inp_dis(sio_inp_dis),
        .sio_oe_n(sio_oe_n),
        .sio_out(sio_out),
        .sio_pad_a_esd_0_h(sio_pad_a_esd_0_h),
        .sio_pad_a_esd_1_h(sio_pad_a_esd_1_h),
        .sio_pad_a_noesd_h(sio_pad_a_noesd_h),
        .sio_slow(sio_slow),
        .sio_tie_lo_esd(sio_tie_lo_esd),
        .sio_vinref_dft(sio_vinref_dft),
        .sio_voh_sel(sio_voh_sel),
        .sio_vohref(sio_vohref),
        .sio_voutref_dft(sio_voutref_dft),
        .sio_vref_sel(sio_vref_sel),
        .sio_vreg_en(sio_vreg_en),
        .sio_vreg_en_refgen(sio_vreg_en_refgen),
        .sio_vtrip_sel(sio_vtrip_sel),
        .sio_vtrip_sel_refgen(sio_vtrip_sel_refgen),
        .vccd0(vccd0_core),
        .vccd0_0(vccd0_0),
        .vccd0_1(vccd0_1),
        .vccd1({vccd1_core, vccd1_core, vccd1_core, vccd1_core, vccd1_core, vccd1_core}),
        .vccd1_0(vccd1_0),
        .vccd1_1(vccd1_1),
        .vccd1_2(vccd1_2),
        .vccd2 ({vccd2_core, vccd2_core, vccd2_core, vccd2_core, vccd2_core, vccd2_core}),
        .vccd2_0(vccd2_0),
        .vccd2_1(vccd2_1),
        .vccd2_2(vccd2_2),
        .vdda0(vdda0_core),
        .vdda0_0(vdda0_0),
        .vdda1(vdda1_core),
        .vdda1_0(vdda1_0),
        .vdda1_1(vdda1_1),
        .vdda2(vdda2_core),
        .vdda2_0(vdda2_0),
        .vdda2_1(vdda2_1),
        .vdda3(vdda3_core),
        .vdda3_0(vdda3_0),
        .vddio(vddio_core),
        .vddio_0(vddio_0),
        .vddio_1(vddio_1),
        .vddio_2(vddio_2),
        .vddio_3(vddio_3),
        .vddio_4(vddio_4),
        .vddio_5(vddio_5),
        .vddio_6(vddio_6),
        .vddio_7(vddio_7),
        .vddio_8(vddio_8),
        .vddio_9(vddio_9),
        .vref_e_enable_h(vref_e_enable_h),
        .vref_e_hld_h_n(vref_e_hld_h_n),
        .vref_e_ref_sel(vref_e_ref_sel),
        .vref_e_vinref(vref_e_vinref),
        .vref_e_vrefgen_en(vref_e_vrefgen_en),
        .vref_w_enable_h(vref_w_enable_h),
        .vref_w_hld_h_n(vref_w_hld_h_n),
        .vref_w_ref_sel(vref_w_ref_sel),
        .vref_w_vinref(vref_w_vinref),
        .vref_w_vrefgen_en(vref_w_vrefgen_en),
        .vssa0(vssa0_core),
        .vssa0_0(vssa0_0),
        .vssa1(vssa1_core),
        .vssa1_0(vssa1_0),
        .vssa1_1(vssa1_1),
        .vssa2(vssa2_core),
        .vssa2_0(vssa2_0),
        .vssa2_1(vssa2_1),
        .vssa3(vssa3_core),
        .vssa3_0(vssa3_0),
        .vssd0(vssd0_core),
        .vssd0_0(vssd0_0),
        .vssd0_1(vssd0_1),
        .vssd1({vssd1_core, vssd1_core, vssd1_core, vssd1_core, vssd1_core, vssd1_core}),
        .vssd1_0(vssd1_0),
        .vssd1_1(vssd1_1),
        .vssd1_2(vssd1_2),
        .vssd2({vssd2_core, vssd2_core, vssd2_core, vssd2_core, vssd2_core, vssd2_core}),
        .vssd2_0(vssd2_0),
        .vssd2_1(vssd2_1),
        .vssd2_2(vssd2_2),
        .vssio(vssio_core),
        .vssio_0(vssio_0),
        .vssio_1(vssio_1),
        .vssio_2(vssio_2),
        .vssio_3(vssio_3),
        .vssio_4(vssio_4),
        .vssio_5(vssio_5),
        .vssio_6(vssio_6),
        .vssio_7(vssio_7),
        .vssio_8(vssio_8),
        .vssio_9(vssio_9),
        .xi0(xi0),
        .xi0_core(xi0_core),
        .xi1(xi1),
        .xi1_core(xi1_core),
        .xo0(xo0),
        .xo0_core(xo0_core),
        .xo1(xo1),
        .xo1_core(xo1_core)
    );
    panamax_fpga_top panamax_fpga_top (
        .analog_0_core(analog_0_core),
        .analog_1_core(analog_1_core),
        .gpio0_0_analog_en(gpio0_0_analog_en),
        .gpio0_0_analog_pol(gpio0_0_analog_pol),
        .gpio0_0_analog_sel(gpio0_0_analog_sel),
        .gpio0_0_dm(gpio0_0_dm),
        .gpio0_0_enable_h(gpio0_0_enable_h),
        .gpio0_0_enable_inp_h(gpio0_0_enable_inp_h),
        .gpio0_0_enable_vdda_h(gpio0_0_enable_vdda_h),
        .gpio0_0_enable_vddio(gpio0_0_enable_vddio),
        .gpio0_0_enable_vswitch_h(gpio0_0_enable_vswitch_h),
        .gpio0_0_hld_h_n(gpio0_0_hld_h_n),
        .gpio0_0_hld_ovr(gpio0_0_hld_ovr),
        .gpio0_0_ib_mode_sel(gpio0_0_ib_mode_sel),
        .gpio0_0_in(gpio0_0_in),
        .gpio0_0_in_h(gpio0_0_in_h),
        .gpio0_0_inp_dis(gpio0_0_inp_dis),
        .gpio0_0_oe_n(gpio0_0_oe_n),
        .gpio0_0_one(gpio0_0_one),
        .gpio0_0_out(gpio0_0_out),
        .gpio0_0_pad_a_esd_0_h(gpio0_0_pad_a_esd_0_h),
        .gpio0_0_pad_a_esd_1_h(gpio0_0_pad_a_esd_1_h),
        .gpio0_0_pad_a_noesd_h(gpio0_0_pad_a_noesd_h),
        .gpio0_0_slow(gpio0_0_slow),
        .gpio0_0_tie_hi_esd(gpio0_0_tie_hi_esd),
        .gpio0_0_tie_lo_esd(gpio0_0_tie_lo_esd),
        .gpio0_0_vtrip_sel(gpio0_0_vtrip_sel),
        .gpio0_0_zero(gpio0_0_zero),
        .gpio0_1_analog_en(gpio0_1_analog_en),
        .gpio0_1_analog_pol(gpio0_1_analog_pol),
        .gpio0_1_analog_sel(gpio0_1_analog_sel),
        .gpio0_1_dm(gpio0_1_dm),
        .gpio0_1_enable_h(gpio0_1_enable_h),
        .gpio0_1_enable_inp_h(gpio0_1_enable_inp_h),
        .gpio0_1_enable_vdda_h(gpio0_1_enable_vdda_h),
        .gpio0_1_enable_vddio(gpio0_1_enable_vddio),
        .gpio0_1_enable_vswitch_h(gpio0_1_enable_vswitch_h),
        .gpio0_1_hld_h_n(gpio0_1_hld_h_n),
        .gpio0_1_hld_ovr(gpio0_1_hld_ovr),
        .gpio0_1_ib_mode_sel(gpio0_1_ib_mode_sel),
        .gpio0_1_in(gpio0_1_in),
        .gpio0_1_in_h(gpio0_1_in_h),
        .gpio0_1_inp_dis(gpio0_1_inp_dis),
        .gpio0_1_oe_n(gpio0_1_oe_n),
        .gpio0_1_one(gpio0_1_one),
        .gpio0_1_out(gpio0_1_out),
        .gpio0_1_pad_a_esd_0_h(gpio0_1_pad_a_esd_0_h),
        .gpio0_1_pad_a_esd_1_h(gpio0_1_pad_a_esd_1_h),
        .gpio0_1_pad_a_noesd_h(gpio0_1_pad_a_noesd_h),
        .gpio0_1_slow(gpio0_1_slow),
        .gpio0_1_tie_hi_esd(gpio0_1_tie_hi_esd),
        .gpio0_1_tie_lo_esd(gpio0_1_tie_lo_esd),
        .gpio0_1_vtrip_sel(gpio0_1_vtrip_sel),
        .gpio0_1_zero(gpio0_1_zero),
        .gpio0_2_analog_en(gpio0_2_analog_en),
        .gpio0_2_analog_pol(gpio0_2_analog_pol),
        .gpio0_2_analog_sel(gpio0_2_analog_sel),
        .gpio0_2_dm(gpio0_2_dm),
        .gpio0_2_enable_h(gpio0_2_enable_h),
        .gpio0_2_enable_inp_h(gpio0_2_enable_inp_h),
        .gpio0_2_enable_vdda_h(gpio0_2_enable_vdda_h),
        .gpio0_2_enable_vddio(gpio0_2_enable_vddio),
        .gpio0_2_enable_vswitch_h(gpio0_2_enable_vswitch_h),
        .gpio0_2_hld_h_n(gpio0_2_hld_h_n),
        .gpio0_2_hld_ovr(gpio0_2_hld_ovr),
        .gpio0_2_ib_mode_sel(gpio0_2_ib_mode_sel),
        .gpio0_2_in(gpio0_2_in),
        .gpio0_2_in_h(gpio0_2_in_h),
        .gpio0_2_inp_dis(gpio0_2_inp_dis),
        .gpio0_2_oe_n(gpio0_2_oe_n),
        .gpio0_2_one(gpio0_2_one),
        .gpio0_2_out(gpio0_2_out),
        .gpio0_2_pad_a_esd_0_h(gpio0_2_pad_a_esd_0_h),
        .gpio0_2_pad_a_esd_1_h(gpio0_2_pad_a_esd_1_h),
        .gpio0_2_pad_a_noesd_h(gpio0_2_pad_a_noesd_h),
        .gpio0_2_slow(gpio0_2_slow),
        .gpio0_2_tie_hi_esd(gpio0_2_tie_hi_esd),
        .gpio0_2_tie_lo_esd(gpio0_2_tie_lo_esd),
        .gpio0_2_vtrip_sel(gpio0_2_vtrip_sel),
        .gpio0_2_zero(gpio0_2_zero),
        .gpio0_3_analog_en(gpio0_3_analog_en),
        .gpio0_3_analog_pol(gpio0_3_analog_pol),
        .gpio0_3_analog_sel(gpio0_3_analog_sel),
        .gpio0_3_dm(gpio0_3_dm),
        .gpio0_3_enable_h(gpio0_3_enable_h),
        .gpio0_3_enable_inp_h(gpio0_3_enable_inp_h),
        .gpio0_3_enable_vdda_h(gpio0_3_enable_vdda_h),
        .gpio0_3_enable_vddio(gpio0_3_enable_vddio),
        .gpio0_3_enable_vswitch_h(gpio0_3_enable_vswitch_h),
        .gpio0_3_hld_h_n(gpio0_3_hld_h_n),
        .gpio0_3_hld_ovr(gpio0_3_hld_ovr),
        .gpio0_3_ib_mode_sel(gpio0_3_ib_mode_sel),
        .gpio0_3_in(gpio0_3_in),
        .gpio0_3_in_h(gpio0_3_in_h),
        .gpio0_3_inp_dis(gpio0_3_inp_dis),
        .gpio0_3_oe_n(gpio0_3_oe_n),
        .gpio0_3_one(gpio0_3_one),
        .gpio0_3_out(gpio0_3_out),
        .gpio0_3_pad_a_esd_0_h(gpio0_3_pad_a_esd_0_h),
        .gpio0_3_pad_a_esd_1_h(gpio0_3_pad_a_esd_1_h),
        .gpio0_3_pad_a_noesd_h(gpio0_3_pad_a_noesd_h),
        .gpio0_3_slow(gpio0_3_slow),
        .gpio0_3_tie_hi_esd(gpio0_3_tie_hi_esd),
        .gpio0_3_tie_lo_esd(gpio0_3_tie_lo_esd),
        .gpio0_3_vtrip_sel(gpio0_3_vtrip_sel),
        .gpio0_3_zero(gpio0_3_zero),
        .gpio0_4_analog_en(gpio0_4_analog_en),
        .gpio0_4_analog_pol(gpio0_4_analog_pol),
        .gpio0_4_analog_sel(gpio0_4_analog_sel),
        .gpio0_4_dm(gpio0_4_dm),
        .gpio0_4_enable_h(gpio0_4_enable_h),
        .gpio0_4_enable_inp_h(gpio0_4_enable_inp_h),
        .gpio0_4_enable_vdda_h(gpio0_4_enable_vdda_h),
        .gpio0_4_enable_vddio(gpio0_4_enable_vddio),
        .gpio0_4_enable_vswitch_h(gpio0_4_enable_vswitch_h),
        .gpio0_4_hld_h_n(gpio0_4_hld_h_n),
        .gpio0_4_hld_ovr(gpio0_4_hld_ovr),
        .gpio0_4_ib_mode_sel(gpio0_4_ib_mode_sel),
        .gpio0_4_in(gpio0_4_in),
        .gpio0_4_in_h(gpio0_4_in_h),
        .gpio0_4_inp_dis(gpio0_4_inp_dis),
        .gpio0_4_oe_n(gpio0_4_oe_n),
        .gpio0_4_one(gpio0_4_one),
        .gpio0_4_out(gpio0_4_out),
        .gpio0_4_pad_a_esd_0_h(gpio0_4_pad_a_esd_0_h),
        .gpio0_4_pad_a_esd_1_h(gpio0_4_pad_a_esd_1_h),
        .gpio0_4_pad_a_noesd_h(gpio0_4_pad_a_noesd_h),
        .gpio0_4_slow(gpio0_4_slow),
        .gpio0_4_tie_hi_esd(gpio0_4_tie_hi_esd),
        .gpio0_4_tie_lo_esd(gpio0_4_tie_lo_esd),
        .gpio0_4_vtrip_sel(gpio0_4_vtrip_sel),
        .gpio0_4_zero(gpio0_4_zero),
        .gpio0_5_analog_en(gpio0_5_analog_en),
        .gpio0_5_analog_pol(gpio0_5_analog_pol),
        .gpio0_5_analog_sel(gpio0_5_analog_sel),
        .gpio0_5_dm(gpio0_5_dm),
        .gpio0_5_enable_h(gpio0_5_enable_h),
        .gpio0_5_enable_inp_h(gpio0_5_enable_inp_h),
        .gpio0_5_enable_vdda_h(gpio0_5_enable_vdda_h),
        .gpio0_5_enable_vddio(gpio0_5_enable_vddio),
        .gpio0_5_enable_vswitch_h(gpio0_5_enable_vswitch_h),
        .gpio0_5_hld_h_n(gpio0_5_hld_h_n),
        .gpio0_5_hld_ovr(gpio0_5_hld_ovr),
        .gpio0_5_ib_mode_sel(gpio0_5_ib_mode_sel),
        .gpio0_5_in(gpio0_5_in),
        .gpio0_5_in_h(gpio0_5_in_h),
        .gpio0_5_inp_dis(gpio0_5_inp_dis),
        .gpio0_5_oe_n(gpio0_5_oe_n),
        .gpio0_5_one(gpio0_5_one),
        .gpio0_5_out(gpio0_5_out),
        .gpio0_5_pad_a_esd_0_h(gpio0_5_pad_a_esd_0_h),
        .gpio0_5_pad_a_esd_1_h(gpio0_5_pad_a_esd_1_h),
        .gpio0_5_pad_a_noesd_h(gpio0_5_pad_a_noesd_h),
        .gpio0_5_slow(gpio0_5_slow),
        .gpio0_5_tie_hi_esd(gpio0_5_tie_hi_esd),
        .gpio0_5_tie_lo_esd(gpio0_5_tie_lo_esd),
        .gpio0_5_vtrip_sel(gpio0_5_vtrip_sel),
        .gpio0_5_zero(gpio0_5_zero),
        .gpio0_6_analog_en(gpio0_6_analog_en),
        .gpio0_6_analog_pol(gpio0_6_analog_pol),
        .gpio0_6_analog_sel(gpio0_6_analog_sel),
        .gpio0_6_dm(gpio0_6_dm),
        .gpio0_6_enable_h(gpio0_6_enable_h),
        .gpio0_6_enable_inp_h(gpio0_6_enable_inp_h),
        .gpio0_6_enable_vdda_h(gpio0_6_enable_vdda_h),
        .gpio0_6_enable_vddio(gpio0_6_enable_vddio),
        .gpio0_6_enable_vswitch_h(gpio0_6_enable_vswitch_h),
        .gpio0_6_hld_h_n(gpio0_6_hld_h_n),
        .gpio0_6_hld_ovr(gpio0_6_hld_ovr),
        .gpio0_6_ib_mode_sel(gpio0_6_ib_mode_sel),
        .gpio0_6_in(gpio0_6_in),
        .gpio0_6_in_h(gpio0_6_in_h),
        .gpio0_6_inp_dis(gpio0_6_inp_dis),
        .gpio0_6_oe_n(gpio0_6_oe_n),
        .gpio0_6_one(gpio0_6_one),
        .gpio0_6_out(gpio0_6_out),
        .gpio0_6_pad_a_esd_0_h(gpio0_6_pad_a_esd_0_h),
        .gpio0_6_pad_a_esd_1_h(gpio0_6_pad_a_esd_1_h),
        .gpio0_6_pad_a_noesd_h(gpio0_6_pad_a_noesd_h),
        .gpio0_6_slow(gpio0_6_slow),
        .gpio0_6_tie_hi_esd(gpio0_6_tie_hi_esd),
        .gpio0_6_tie_lo_esd(gpio0_6_tie_lo_esd),
        .gpio0_6_vtrip_sel(gpio0_6_vtrip_sel),
        .gpio0_6_zero(gpio0_6_zero),
        .gpio0_7_analog_en(gpio0_7_analog_en),
        .gpio0_7_analog_pol(gpio0_7_analog_pol),
        .gpio0_7_analog_sel(gpio0_7_analog_sel),
        .gpio0_7_dm(gpio0_7_dm),
        .gpio0_7_enable_h(gpio0_7_enable_h),
        .gpio0_7_enable_inp_h(gpio0_7_enable_inp_h),
        .gpio0_7_enable_vdda_h(gpio0_7_enable_vdda_h),
        .gpio0_7_enable_vddio(gpio0_7_enable_vddio),
        .gpio0_7_enable_vswitch_h(gpio0_7_enable_vswitch_h),
        .gpio0_7_hld_h_n(gpio0_7_hld_h_n),
        .gpio0_7_hld_ovr(gpio0_7_hld_ovr),
        .gpio0_7_ib_mode_sel(gpio0_7_ib_mode_sel),
        .gpio0_7_in(gpio0_7_in),
        .gpio0_7_in_h(gpio0_7_in_h),
        .gpio0_7_inp_dis(gpio0_7_inp_dis),
        .gpio0_7_oe_n(gpio0_7_oe_n),
        .gpio0_7_one(gpio0_7_one),
        .gpio0_7_out(gpio0_7_out),
        .gpio0_7_pad_a_esd_0_h(gpio0_7_pad_a_esd_0_h),
        .gpio0_7_pad_a_esd_1_h(gpio0_7_pad_a_esd_1_h),
        .gpio0_7_pad_a_noesd_h(gpio0_7_pad_a_noesd_h),
        .gpio0_7_slow(gpio0_7_slow),
        .gpio0_7_tie_hi_esd(gpio0_7_tie_hi_esd),
        .gpio0_7_tie_lo_esd(gpio0_7_tie_lo_esd),
        .gpio0_7_vtrip_sel(gpio0_7_vtrip_sel),
        .gpio0_7_zero(gpio0_7_zero),
        .gpio1_0_analog_en(gpio1_0_analog_en),
        .gpio1_0_analog_pol(gpio1_0_analog_pol),
        .gpio1_0_analog_sel(gpio1_0_analog_sel),
        .gpio1_0_dm(gpio1_0_dm),
        .gpio1_0_enable_h(gpio1_0_enable_h),
        .gpio1_0_enable_inp_h(gpio1_0_enable_inp_h),
        .gpio1_0_enable_vdda_h(gpio1_0_enable_vdda_h),
        .gpio1_0_enable_vddio(gpio1_0_enable_vddio),
        .gpio1_0_enable_vswitch_h(gpio1_0_enable_vswitch_h),
        .gpio1_0_hld_h_n(gpio1_0_hld_h_n),
        .gpio1_0_hld_ovr(gpio1_0_hld_ovr),
        .gpio1_0_hys_trim(gpio1_0_hys_trim),
        .gpio1_0_ib_mode_sel(gpio1_0_ib_mode_sel),
        .gpio1_0_in(gpio1_0_in),
        .gpio1_0_in_h(gpio1_0_in_h),
        .gpio1_0_inp_dis(gpio1_0_inp_dis),
        .gpio1_0_oe_n(gpio1_0_oe_n),
        .gpio1_0_one(gpio1_0_one),
        .gpio1_0_out(gpio1_0_out),
        .gpio1_0_pad_a_esd_0_h(gpio1_0_pad_a_esd_0_h),
        .gpio1_0_pad_a_esd_1_h(gpio1_0_pad_a_esd_1_h),
        .gpio1_0_pad_a_noesd_h(gpio1_0_pad_a_noesd_h),
        .gpio1_0_slew_ctl(gpio1_0_slew_ctl),
        .gpio1_0_slow(gpio1_0_slow),
        .gpio1_0_tie_hi_esd(gpio1_0_tie_hi_esd),
        .gpio1_0_tie_lo_esd(gpio1_0_tie_lo_esd),
        .gpio1_0_vtrip_sel(gpio1_0_vtrip_sel),
        .gpio1_0_zero(gpio1_0_zero),
        .gpio1_1_analog_en(gpio1_1_analog_en),
        .gpio1_1_analog_pol(gpio1_1_analog_pol),
        .gpio1_1_analog_sel(gpio1_1_analog_sel),
        .gpio1_1_dm(gpio1_1_dm),
        .gpio1_1_enable_h(gpio1_1_enable_h),
        .gpio1_1_enable_inp_h(gpio1_1_enable_inp_h),
        .gpio1_1_enable_vdda_h(gpio1_1_enable_vdda_h),
        .gpio1_1_enable_vddio(gpio1_1_enable_vddio),
        .gpio1_1_enable_vswitch_h(gpio1_1_enable_vswitch_h),
        .gpio1_1_hld_h_n(gpio1_1_hld_h_n),
        .gpio1_1_hld_ovr(gpio1_1_hld_ovr),
        .gpio1_1_hys_trim(gpio1_1_hys_trim),
        .gpio1_1_ib_mode_sel(gpio1_1_ib_mode_sel),
        .gpio1_1_in(gpio1_1_in),
        .gpio1_1_in_h(gpio1_1_in_h),
        .gpio1_1_inp_dis(gpio1_1_inp_dis),
        .gpio1_1_oe_n(gpio1_1_oe_n),
        .gpio1_1_one(gpio1_1_one),
        .gpio1_1_out(gpio1_1_out),
        .gpio1_1_pad_a_esd_0_h(gpio1_1_pad_a_esd_0_h),
        .gpio1_1_pad_a_esd_1_h(gpio1_1_pad_a_esd_1_h),
        .gpio1_1_pad_a_noesd_h(gpio1_1_pad_a_noesd_h),
        .gpio1_1_slew_ctl(gpio1_1_slew_ctl),
        .gpio1_1_slow(gpio1_1_slow),
        .gpio1_1_tie_hi_esd(gpio1_1_tie_hi_esd),
        .gpio1_1_tie_lo_esd(gpio1_1_tie_lo_esd),
        .gpio1_1_vtrip_sel(gpio1_1_vtrip_sel),
        .gpio1_1_zero(gpio1_1_zero),
        .gpio1_2_analog_en(gpio1_2_analog_en),
        .gpio1_2_analog_pol(gpio1_2_analog_pol),
        .gpio1_2_analog_sel(gpio1_2_analog_sel),
        .gpio1_2_dm(gpio1_2_dm),
        .gpio1_2_enable_h(gpio1_2_enable_h),
        .gpio1_2_enable_inp_h(gpio1_2_enable_inp_h),
        .gpio1_2_enable_vdda_h(gpio1_2_enable_vdda_h),
        .gpio1_2_enable_vddio(gpio1_2_enable_vddio),
        .gpio1_2_enable_vswitch_h(gpio1_2_enable_vswitch_h),
        .gpio1_2_hld_h_n(gpio1_2_hld_h_n),
        .gpio1_2_hld_ovr(gpio1_2_hld_ovr),
        .gpio1_2_hys_trim(gpio1_2_hys_trim),
        .gpio1_2_ib_mode_sel(gpio1_2_ib_mode_sel),
        .gpio1_2_in(gpio1_2_in),
        .gpio1_2_in_h(gpio1_2_in_h),
        .gpio1_2_inp_dis(gpio1_2_inp_dis),
        .gpio1_2_oe_n(gpio1_2_oe_n),
        .gpio1_2_one(gpio1_2_one),
        .gpio1_2_out(gpio1_2_out),
        .gpio1_2_pad_a_esd_0_h(gpio1_2_pad_a_esd_0_h),
        .gpio1_2_pad_a_esd_1_h(gpio1_2_pad_a_esd_1_h),
        .gpio1_2_pad_a_noesd_h(gpio1_2_pad_a_noesd_h),
        .gpio1_2_slew_ctl(gpio1_2_slew_ctl),
        .gpio1_2_slow(gpio1_2_slow),
        .gpio1_2_tie_hi_esd(gpio1_2_tie_hi_esd),
        .gpio1_2_tie_lo_esd(gpio1_2_tie_lo_esd),
        .gpio1_2_vtrip_sel(gpio1_2_vtrip_sel),
        .gpio1_2_zero(gpio1_2_zero),
        .gpio1_3_analog_en(gpio1_3_analog_en),
        .gpio1_3_analog_pol(gpio1_3_analog_pol),
        .gpio1_3_analog_sel(gpio1_3_analog_sel),
        .gpio1_3_dm(gpio1_3_dm),
        .gpio1_3_enable_h(gpio1_3_enable_h),
        .gpio1_3_enable_inp_h(gpio1_3_enable_inp_h),
        .gpio1_3_enable_vdda_h(gpio1_3_enable_vdda_h),
        .gpio1_3_enable_vddio(gpio1_3_enable_vddio),
        .gpio1_3_enable_vswitch_h(gpio1_3_enable_vswitch_h),
        .gpio1_3_hld_h_n(gpio1_3_hld_h_n),
        .gpio1_3_hld_ovr(gpio1_3_hld_ovr),
        .gpio1_3_hys_trim(gpio1_3_hys_trim),
        .gpio1_3_ib_mode_sel(gpio1_3_ib_mode_sel),
        .gpio1_3_in(gpio1_3_in),
        .gpio1_3_in_h(gpio1_3_in_h),
        .gpio1_3_inp_dis(gpio1_3_inp_dis),
        .gpio1_3_oe_n(gpio1_3_oe_n),
        .gpio1_3_one(gpio1_3_one),
        .gpio1_3_out(gpio1_3_out),
        .gpio1_3_pad_a_esd_0_h(gpio1_3_pad_a_esd_0_h),
        .gpio1_3_pad_a_esd_1_h(gpio1_3_pad_a_esd_1_h),
        .gpio1_3_pad_a_noesd_h(gpio1_3_pad_a_noesd_h),
        .gpio1_3_slew_ctl(gpio1_3_slew_ctl),
        .gpio1_3_slow(gpio1_3_slow),
        .gpio1_3_tie_hi_esd(gpio1_3_tie_hi_esd),
        .gpio1_3_tie_lo_esd(gpio1_3_tie_lo_esd),
        .gpio1_3_vtrip_sel(gpio1_3_vtrip_sel),
        .gpio1_3_zero(gpio1_3_zero),
        .gpio1_4_analog_en(gpio1_4_analog_en),
        .gpio1_4_analog_pol(gpio1_4_analog_pol),
        .gpio1_4_analog_sel(gpio1_4_analog_sel),
        .gpio1_4_dm(gpio1_4_dm),
        .gpio1_4_enable_h(gpio1_4_enable_h),
        .gpio1_4_enable_inp_h(gpio1_4_enable_inp_h),
        .gpio1_4_enable_vdda_h(gpio1_4_enable_vdda_h),
        .gpio1_4_enable_vddio(gpio1_4_enable_vddio),
        .gpio1_4_enable_vswitch_h(gpio1_4_enable_vswitch_h),
        .gpio1_4_hld_h_n(gpio1_4_hld_h_n),
        .gpio1_4_hld_ovr(gpio1_4_hld_ovr),
        .gpio1_4_hys_trim(gpio1_4_hys_trim),
        .gpio1_4_ib_mode_sel(gpio1_4_ib_mode_sel),
        .gpio1_4_in(gpio1_4_in),
        .gpio1_4_in_h(gpio1_4_in_h),
        .gpio1_4_inp_dis(gpio1_4_inp_dis),
        .gpio1_4_oe_n(gpio1_4_oe_n),
        .gpio1_4_one(gpio1_4_one),
        .gpio1_4_out(gpio1_4_out),
        .gpio1_4_pad_a_esd_0_h(gpio1_4_pad_a_esd_0_h),
        .gpio1_4_pad_a_esd_1_h(gpio1_4_pad_a_esd_1_h),
        .gpio1_4_pad_a_noesd_h(gpio1_4_pad_a_noesd_h),
        .gpio1_4_slew_ctl(gpio1_4_slew_ctl),
        .gpio1_4_slow(gpio1_4_slow),
        .gpio1_4_tie_hi_esd(gpio1_4_tie_hi_esd),
        .gpio1_4_tie_lo_esd(gpio1_4_tie_lo_esd),
        .gpio1_4_vtrip_sel(gpio1_4_vtrip_sel),
        .gpio1_4_zero(gpio1_4_zero),
        .gpio1_5_analog_en(gpio1_5_analog_en),
        .gpio1_5_analog_pol(gpio1_5_analog_pol),
        .gpio1_5_analog_sel(gpio1_5_analog_sel),
        .gpio1_5_dm(gpio1_5_dm),
        .gpio1_5_enable_h(gpio1_5_enable_h),
        .gpio1_5_enable_inp_h(gpio1_5_enable_inp_h),
        .gpio1_5_enable_vdda_h(gpio1_5_enable_vdda_h),
        .gpio1_5_enable_vddio(gpio1_5_enable_vddio),
        .gpio1_5_enable_vswitch_h(gpio1_5_enable_vswitch_h),
        .gpio1_5_hld_h_n(gpio1_5_hld_h_n),
        .gpio1_5_hld_ovr(gpio1_5_hld_ovr),
        .gpio1_5_hys_trim(gpio1_5_hys_trim),
        .gpio1_5_ib_mode_sel(gpio1_5_ib_mode_sel),
        .gpio1_5_in(gpio1_5_in),
        .gpio1_5_in_h(gpio1_5_in_h),
        .gpio1_5_inp_dis(gpio1_5_inp_dis),
        .gpio1_5_oe_n(gpio1_5_oe_n),
        .gpio1_5_one(gpio1_5_one),
        .gpio1_5_out(gpio1_5_out),
        .gpio1_5_pad_a_esd_0_h(gpio1_5_pad_a_esd_0_h),
        .gpio1_5_pad_a_esd_1_h(gpio1_5_pad_a_esd_1_h),
        .gpio1_5_pad_a_noesd_h(gpio1_5_pad_a_noesd_h),
        .gpio1_5_slew_ctl(gpio1_5_slew_ctl),
        .gpio1_5_slow(gpio1_5_slow),
        .gpio1_5_tie_hi_esd(gpio1_5_tie_hi_esd),
        .gpio1_5_tie_lo_esd(gpio1_5_tie_lo_esd),
        .gpio1_5_vtrip_sel(gpio1_5_vtrip_sel),
        .gpio1_5_zero(gpio1_5_zero),
        .gpio1_6_analog_en(gpio1_6_analog_en),
        .gpio1_6_analog_pol(gpio1_6_analog_pol),
        .gpio1_6_analog_sel(gpio1_6_analog_sel),
        .gpio1_6_dm(gpio1_6_dm),
        .gpio1_6_enable_h(gpio1_6_enable_h),
        .gpio1_6_enable_inp_h(gpio1_6_enable_inp_h),
        .gpio1_6_enable_vdda_h(gpio1_6_enable_vdda_h),
        .gpio1_6_enable_vddio(gpio1_6_enable_vddio),
        .gpio1_6_enable_vswitch_h(gpio1_6_enable_vswitch_h),
        .gpio1_6_hld_h_n(gpio1_6_hld_h_n),
        .gpio1_6_hld_ovr(gpio1_6_hld_ovr),
        .gpio1_6_hys_trim(gpio1_6_hys_trim),
        .gpio1_6_ib_mode_sel(gpio1_6_ib_mode_sel),
        .gpio1_6_in(gpio1_6_in),
        .gpio1_6_in_h(gpio1_6_in_h),
        .gpio1_6_inp_dis(gpio1_6_inp_dis),
        .gpio1_6_oe_n(gpio1_6_oe_n),
        .gpio1_6_one(gpio1_6_one),
        .gpio1_6_out(gpio1_6_out),
        .gpio1_6_pad_a_esd_0_h(gpio1_6_pad_a_esd_0_h),
        .gpio1_6_pad_a_esd_1_h(gpio1_6_pad_a_esd_1_h),
        .gpio1_6_pad_a_noesd_h(gpio1_6_pad_a_noesd_h),
        .gpio1_6_slew_ctl(gpio1_6_slew_ctl),
        .gpio1_6_slow(gpio1_6_slow),
        .gpio1_6_tie_hi_esd(gpio1_6_tie_hi_esd),
        .gpio1_6_tie_lo_esd(gpio1_6_tie_lo_esd),
        .gpio1_6_vtrip_sel(gpio1_6_vtrip_sel),
        .gpio1_6_zero(gpio1_6_zero),
        .gpio1_7_analog_en(gpio1_7_analog_en),
        .gpio1_7_analog_pol(gpio1_7_analog_pol),
        .gpio1_7_analog_sel(gpio1_7_analog_sel),
        .gpio1_7_dm(gpio1_7_dm),
        .gpio1_7_enable_h(gpio1_7_enable_h),
        .gpio1_7_enable_inp_h(gpio1_7_enable_inp_h),
        .gpio1_7_enable_vdda_h(gpio1_7_enable_vdda_h),
        .gpio1_7_enable_vddio(gpio1_7_enable_vddio),
        .gpio1_7_enable_vswitch_h(gpio1_7_enable_vswitch_h),
        .gpio1_7_hld_h_n(gpio1_7_hld_h_n),
        .gpio1_7_hld_ovr(gpio1_7_hld_ovr),
        .gpio1_7_hys_trim(gpio1_7_hys_trim),
        .gpio1_7_ib_mode_sel(gpio1_7_ib_mode_sel),
        .gpio1_7_in(gpio1_7_in),
        .gpio1_7_in_h(gpio1_7_in_h),
        .gpio1_7_inp_dis(gpio1_7_inp_dis),
        .gpio1_7_oe_n(gpio1_7_oe_n),
        .gpio1_7_one(gpio1_7_one),
        .gpio1_7_out(gpio1_7_out),
        .gpio1_7_pad_a_esd_0_h(gpio1_7_pad_a_esd_0_h),
        .gpio1_7_pad_a_esd_1_h(gpio1_7_pad_a_esd_1_h),
        .gpio1_7_pad_a_noesd_h(gpio1_7_pad_a_noesd_h),
        .gpio1_7_slew_ctl(gpio1_7_slew_ctl),
        .gpio1_7_slow(gpio1_7_slow),
        .gpio1_7_tie_hi_esd(gpio1_7_tie_hi_esd),
        .gpio1_7_tie_lo_esd(gpio1_7_tie_lo_esd),
        .gpio1_7_vtrip_sel(gpio1_7_vtrip_sel),
        .gpio1_7_zero(gpio1_7_zero),
        .gpio2_0_analog_en(gpio2_0_analog_en),
        .gpio2_0_analog_pol(gpio2_0_analog_pol),
        .gpio2_0_analog_sel(gpio2_0_analog_sel),
        .gpio2_0_dm(gpio2_0_dm),
        .gpio2_0_enable_h(gpio2_0_enable_h),
        .gpio2_0_enable_inp_h(gpio2_0_enable_inp_h),
        .gpio2_0_enable_vdda_h(gpio2_0_enable_vdda_h),
        .gpio2_0_enable_vddio(gpio2_0_enable_vddio),
        .gpio2_0_enable_vswitch_h(gpio2_0_enable_vswitch_h),
        .gpio2_0_hld_h_n(gpio2_0_hld_h_n),
        .gpio2_0_hld_ovr(gpio2_0_hld_ovr),
        .gpio2_0_ib_mode_sel(gpio2_0_ib_mode_sel),
        .gpio2_0_in(gpio2_0_in),
        .gpio2_0_in_h(gpio2_0_in_h),
        .gpio2_0_inp_dis(gpio2_0_inp_dis),
        .gpio2_0_oe_n(gpio2_0_oe_n),
        .gpio2_0_one(gpio2_0_one),
        .gpio2_0_out(gpio2_0_out),
        .gpio2_0_pad_a_esd_0_h(gpio2_0_pad_a_esd_0_h),
        .gpio2_0_pad_a_esd_1_h(gpio2_0_pad_a_esd_1_h),
        .gpio2_0_pad_a_noesd_h(gpio2_0_pad_a_noesd_h),
        .gpio2_0_slow(gpio2_0_slow),
        .gpio2_0_tie_hi_esd(gpio2_0_tie_hi_esd),
        .gpio2_0_tie_lo_esd(gpio2_0_tie_lo_esd),
        .gpio2_0_vtrip_sel(gpio2_0_vtrip_sel),
        .gpio2_0_zero(gpio2_0_zero),
        .gpio2_1_analog_en(gpio2_1_analog_en),
        .gpio2_1_analog_pol(gpio2_1_analog_pol),
        .gpio2_1_analog_sel(gpio2_1_analog_sel),
        .gpio2_1_dm(gpio2_1_dm),
        .gpio2_1_enable_h(gpio2_1_enable_h),
        .gpio2_1_enable_inp_h(gpio2_1_enable_inp_h),
        .gpio2_1_enable_vdda_h(gpio2_1_enable_vdda_h),
        .gpio2_1_enable_vddio(gpio2_1_enable_vddio),
        .gpio2_1_enable_vswitch_h(gpio2_1_enable_vswitch_h),
        .gpio2_1_hld_h_n(gpio2_1_hld_h_n),
        .gpio2_1_hld_ovr(gpio2_1_hld_ovr),
        .gpio2_1_ib_mode_sel(gpio2_1_ib_mode_sel),
        .gpio2_1_in(gpio2_1_in),
        .gpio2_1_in_h(gpio2_1_in_h),
        .gpio2_1_inp_dis(gpio2_1_inp_dis),
        .gpio2_1_oe_n(gpio2_1_oe_n),
        .gpio2_1_one(gpio2_1_one),
        .gpio2_1_out(gpio2_1_out),
        .gpio2_1_pad_a_esd_0_h(gpio2_1_pad_a_esd_0_h),
        .gpio2_1_pad_a_esd_1_h(gpio2_1_pad_a_esd_1_h),
        .gpio2_1_pad_a_noesd_h(gpio2_1_pad_a_noesd_h),
        .gpio2_1_slow(gpio2_1_slow),
        .gpio2_1_tie_hi_esd(gpio2_1_tie_hi_esd),
        .gpio2_1_tie_lo_esd(gpio2_1_tie_lo_esd),
        .gpio2_1_vtrip_sel(gpio2_1_vtrip_sel),
        .gpio2_1_zero(gpio2_1_zero),
        .gpio2_2_analog_en(gpio2_2_analog_en),
        .gpio2_2_analog_pol(gpio2_2_analog_pol),
        .gpio2_2_analog_sel(gpio2_2_analog_sel),
        .gpio2_2_dm(gpio2_2_dm),
        .gpio2_2_enable_h(gpio2_2_enable_h),
        .gpio2_2_enable_inp_h(gpio2_2_enable_inp_h),
        .gpio2_2_enable_vdda_h(gpio2_2_enable_vdda_h),
        .gpio2_2_enable_vddio(gpio2_2_enable_vddio),
        .gpio2_2_enable_vswitch_h(gpio2_2_enable_vswitch_h),
        .gpio2_2_hld_h_n(gpio2_2_hld_h_n),
        .gpio2_2_hld_ovr(gpio2_2_hld_ovr),
        .gpio2_2_ib_mode_sel(gpio2_2_ib_mode_sel),
        .gpio2_2_in(gpio2_2_in),
        .gpio2_2_in_h(gpio2_2_in_h),
        .gpio2_2_inp_dis(gpio2_2_inp_dis),
        .gpio2_2_oe_n(gpio2_2_oe_n),
        .gpio2_2_one(gpio2_2_one),
        .gpio2_2_out(gpio2_2_out),
        .gpio2_2_pad_a_esd_0_h(gpio2_2_pad_a_esd_0_h),
        .gpio2_2_pad_a_esd_1_h(gpio2_2_pad_a_esd_1_h),
        .gpio2_2_pad_a_noesd_h(gpio2_2_pad_a_noesd_h),
        .gpio2_2_slow(gpio2_2_slow),
        .gpio2_2_tie_hi_esd(gpio2_2_tie_hi_esd),
        .gpio2_2_tie_lo_esd(gpio2_2_tie_lo_esd),
        .gpio2_2_vtrip_sel(gpio2_2_vtrip_sel),
        .gpio2_2_zero(gpio2_2_zero),
        .gpio2_3_analog_en(gpio2_3_analog_en),
        .gpio2_3_analog_pol(gpio2_3_analog_pol),
        .gpio2_3_analog_sel(gpio2_3_analog_sel),
        .gpio2_3_dm(gpio2_3_dm),
        .gpio2_3_enable_h(gpio2_3_enable_h),
        .gpio2_3_enable_inp_h(gpio2_3_enable_inp_h),
        .gpio2_3_enable_vdda_h(gpio2_3_enable_vdda_h),
        .gpio2_3_enable_vddio(gpio2_3_enable_vddio),
        .gpio2_3_enable_vswitch_h(gpio2_3_enable_vswitch_h),
        .gpio2_3_hld_h_n(gpio2_3_hld_h_n),
        .gpio2_3_hld_ovr(gpio2_3_hld_ovr),
        .gpio2_3_ib_mode_sel(gpio2_3_ib_mode_sel),
        .gpio2_3_in(gpio2_3_in),
        .gpio2_3_in_h(gpio2_3_in_h),
        .gpio2_3_inp_dis(gpio2_3_inp_dis),
        .gpio2_3_oe_n(gpio2_3_oe_n),
        .gpio2_3_one(gpio2_3_one),
        .gpio2_3_out(gpio2_3_out),
        .gpio2_3_pad_a_esd_0_h(gpio2_3_pad_a_esd_0_h),
        .gpio2_3_pad_a_esd_1_h(gpio2_3_pad_a_esd_1_h),
        .gpio2_3_pad_a_noesd_h(gpio2_3_pad_a_noesd_h),
        .gpio2_3_slow(gpio2_3_slow),
        .gpio2_3_tie_hi_esd(gpio2_3_tie_hi_esd),
        .gpio2_3_tie_lo_esd(gpio2_3_tie_lo_esd),
        .gpio2_3_vtrip_sel(gpio2_3_vtrip_sel),
        .gpio2_3_zero(gpio2_3_zero),
        .gpio2_4_analog_en(gpio2_4_analog_en),
        .gpio2_4_analog_pol(gpio2_4_analog_pol),
        .gpio2_4_analog_sel(gpio2_4_analog_sel),
        .gpio2_4_dm(gpio2_4_dm),
        .gpio2_4_enable_h(gpio2_4_enable_h),
        .gpio2_4_enable_inp_h(gpio2_4_enable_inp_h),
        .gpio2_4_enable_vdda_h(gpio2_4_enable_vdda_h),
        .gpio2_4_enable_vddio(gpio2_4_enable_vddio),
        .gpio2_4_enable_vswitch_h(gpio2_4_enable_vswitch_h),
        .gpio2_4_hld_h_n(gpio2_4_hld_h_n),
        .gpio2_4_hld_ovr(gpio2_4_hld_ovr),
        .gpio2_4_ib_mode_sel(gpio2_4_ib_mode_sel),
        .gpio2_4_in(gpio2_4_in),
        .gpio2_4_in_h(gpio2_4_in_h),
        .gpio2_4_inp_dis(gpio2_4_inp_dis),
        .gpio2_4_oe_n(gpio2_4_oe_n),
        .gpio2_4_one(gpio2_4_one),
        .gpio2_4_out(gpio2_4_out),
        .gpio2_4_pad_a_esd_0_h(gpio2_4_pad_a_esd_0_h),
        .gpio2_4_pad_a_esd_1_h(gpio2_4_pad_a_esd_1_h),
        .gpio2_4_pad_a_noesd_h(gpio2_4_pad_a_noesd_h),
        .gpio2_4_slow(gpio2_4_slow),
        .gpio2_4_tie_hi_esd(gpio2_4_tie_hi_esd),
        .gpio2_4_tie_lo_esd(gpio2_4_tie_lo_esd),
        .gpio2_4_vtrip_sel(gpio2_4_vtrip_sel),
        .gpio2_4_zero(gpio2_4_zero),
        .gpio2_5_analog_en(gpio2_5_analog_en),
        .gpio2_5_analog_pol(gpio2_5_analog_pol),
        .gpio2_5_analog_sel(gpio2_5_analog_sel),
        .gpio2_5_dm(gpio2_5_dm),
        .gpio2_5_enable_h(gpio2_5_enable_h),
        .gpio2_5_enable_inp_h(gpio2_5_enable_inp_h),
        .gpio2_5_enable_vdda_h(gpio2_5_enable_vdda_h),
        .gpio2_5_enable_vddio(gpio2_5_enable_vddio),
        .gpio2_5_enable_vswitch_h(gpio2_5_enable_vswitch_h),
        .gpio2_5_hld_h_n(gpio2_5_hld_h_n),
        .gpio2_5_hld_ovr(gpio2_5_hld_ovr),
        .gpio2_5_ib_mode_sel(gpio2_5_ib_mode_sel),
        .gpio2_5_in(gpio2_5_in),
        .gpio2_5_in_h(gpio2_5_in_h),
        .gpio2_5_inp_dis(gpio2_5_inp_dis),
        .gpio2_5_oe_n(gpio2_5_oe_n),
        .gpio2_5_one(gpio2_5_one),
        .gpio2_5_out(gpio2_5_out),
        .gpio2_5_pad_a_esd_0_h(gpio2_5_pad_a_esd_0_h),
        .gpio2_5_pad_a_esd_1_h(gpio2_5_pad_a_esd_1_h),
        .gpio2_5_pad_a_noesd_h(gpio2_5_pad_a_noesd_h),
        .gpio2_5_slow(gpio2_5_slow),
        .gpio2_5_tie_hi_esd(gpio2_5_tie_hi_esd),
        .gpio2_5_tie_lo_esd(gpio2_5_tie_lo_esd),
        .gpio2_5_vtrip_sel(gpio2_5_vtrip_sel),
        .gpio2_5_zero(gpio2_5_zero),
        .gpio2_6_analog_en(gpio2_6_analog_en),
        .gpio2_6_analog_pol(gpio2_6_analog_pol),
        .gpio2_6_analog_sel(gpio2_6_analog_sel),
        .gpio2_6_dm(gpio2_6_dm),
        .gpio2_6_enable_h(gpio2_6_enable_h),
        .gpio2_6_enable_inp_h(gpio2_6_enable_inp_h),
        .gpio2_6_enable_vdda_h(gpio2_6_enable_vdda_h),
        .gpio2_6_enable_vddio(gpio2_6_enable_vddio),
        .gpio2_6_enable_vswitch_h(gpio2_6_enable_vswitch_h),
        .gpio2_6_hld_h_n(gpio2_6_hld_h_n),
        .gpio2_6_hld_ovr(gpio2_6_hld_ovr),
        .gpio2_6_ib_mode_sel(gpio2_6_ib_mode_sel),
        .gpio2_6_in(gpio2_6_in),
        .gpio2_6_in_h(gpio2_6_in_h),
        .gpio2_6_inp_dis(gpio2_6_inp_dis),
        .gpio2_6_oe_n(gpio2_6_oe_n),
        .gpio2_6_one(gpio2_6_one),
        .gpio2_6_out(gpio2_6_out),
        .gpio2_6_pad_a_esd_0_h(gpio2_6_pad_a_esd_0_h),
        .gpio2_6_pad_a_esd_1_h(gpio2_6_pad_a_esd_1_h),
        .gpio2_6_pad_a_noesd_h(gpio2_6_pad_a_noesd_h),
        .gpio2_6_slow(gpio2_6_slow),
        .gpio2_6_tie_hi_esd(gpio2_6_tie_hi_esd),
        .gpio2_6_tie_lo_esd(gpio2_6_tie_lo_esd),
        .gpio2_6_vtrip_sel(gpio2_6_vtrip_sel),
        .gpio2_6_zero(gpio2_6_zero),
        .gpio2_7_analog_en(gpio2_7_analog_en),
        .gpio2_7_analog_pol(gpio2_7_analog_pol),
        .gpio2_7_analog_sel(gpio2_7_analog_sel),
        .gpio2_7_dm(gpio2_7_dm),
        .gpio2_7_enable_h(gpio2_7_enable_h),
        .gpio2_7_enable_inp_h(gpio2_7_enable_inp_h),
        .gpio2_7_enable_vdda_h(gpio2_7_enable_vdda_h),
        .gpio2_7_enable_vddio(gpio2_7_enable_vddio),
        .gpio2_7_enable_vswitch_h(gpio2_7_enable_vswitch_h),
        .gpio2_7_hld_h_n(gpio2_7_hld_h_n),
        .gpio2_7_hld_ovr(gpio2_7_hld_ovr),
        .gpio2_7_ib_mode_sel(gpio2_7_ib_mode_sel),
        .gpio2_7_in(gpio2_7_in),
        .gpio2_7_in_h(gpio2_7_in_h),
        .gpio2_7_inp_dis(gpio2_7_inp_dis),
        .gpio2_7_oe_n(gpio2_7_oe_n),
        .gpio2_7_one(gpio2_7_one),
        .gpio2_7_out(gpio2_7_out),
        .gpio2_7_pad_a_esd_0_h(gpio2_7_pad_a_esd_0_h),
        .gpio2_7_pad_a_esd_1_h(gpio2_7_pad_a_esd_1_h),
        .gpio2_7_pad_a_noesd_h(gpio2_7_pad_a_noesd_h),
        .gpio2_7_slow(gpio2_7_slow),
        .gpio2_7_tie_hi_esd(gpio2_7_tie_hi_esd),
        .gpio2_7_tie_lo_esd(gpio2_7_tie_lo_esd),
        .gpio2_7_vtrip_sel(gpio2_7_vtrip_sel),
        .gpio2_7_zero(gpio2_7_zero),
        .gpio3_0_analog_en(gpio3_0_analog_en),
        .gpio3_0_analog_pol(gpio3_0_analog_pol),
        .gpio3_0_analog_sel(gpio3_0_analog_sel),
        .gpio3_0_dm(gpio3_0_dm),
        .gpio3_0_enable_h(gpio3_0_enable_h),
        .gpio3_0_enable_inp_h(gpio3_0_enable_inp_h),
        .gpio3_0_enable_vdda_h(gpio3_0_enable_vdda_h),
        .gpio3_0_enable_vddio(gpio3_0_enable_vddio),
        .gpio3_0_enable_vswitch_h(gpio3_0_enable_vswitch_h),
        .gpio3_0_hld_h_n(gpio3_0_hld_h_n),
        .gpio3_0_hld_ovr(gpio3_0_hld_ovr),
        .gpio3_0_ib_mode_sel(gpio3_0_ib_mode_sel),
        .gpio3_0_in(gpio3_0_in),
        .gpio3_0_in_h(gpio3_0_in_h),
        .gpio3_0_inp_dis(gpio3_0_inp_dis),
        .gpio3_0_oe_n(gpio3_0_oe_n),
        .gpio3_0_one(gpio3_0_one),
        .gpio3_0_out(gpio3_0_out),
        .gpio3_0_pad_a_esd_0_h(gpio3_0_pad_a_esd_0_h),
        .gpio3_0_pad_a_esd_1_h(gpio3_0_pad_a_esd_1_h),
        .gpio3_0_pad_a_noesd_h(gpio3_0_pad_a_noesd_h),
        .gpio3_0_slow(gpio3_0_slow),
        .gpio3_0_tie_hi_esd(gpio3_0_tie_hi_esd),
        .gpio3_0_tie_lo_esd(gpio3_0_tie_lo_esd),
        .gpio3_0_vtrip_sel(gpio3_0_vtrip_sel),
        .gpio3_0_zero(gpio3_0_zero),
        .gpio3_1_analog_en(gpio3_1_analog_en),
        .gpio3_1_analog_pol(gpio3_1_analog_pol),
        .gpio3_1_analog_sel(gpio3_1_analog_sel),
        .gpio3_1_dm(gpio3_1_dm),
        .gpio3_1_enable_h(gpio3_1_enable_h),
        .gpio3_1_enable_inp_h(gpio3_1_enable_inp_h),
        .gpio3_1_enable_vdda_h(gpio3_1_enable_vdda_h),
        .gpio3_1_enable_vddio(gpio3_1_enable_vddio),
        .gpio3_1_enable_vswitch_h(gpio3_1_enable_vswitch_h),
        .gpio3_1_hld_h_n(gpio3_1_hld_h_n),
        .gpio3_1_hld_ovr(gpio3_1_hld_ovr),
        .gpio3_1_ib_mode_sel(gpio3_1_ib_mode_sel),
        .gpio3_1_in(gpio3_1_in),
        .gpio3_1_in_h(gpio3_1_in_h),
        .gpio3_1_inp_dis(gpio3_1_inp_dis),
        .gpio3_1_oe_n(gpio3_1_oe_n),
        .gpio3_1_one(gpio3_1_one),
        .gpio3_1_out(gpio3_1_out),
        .gpio3_1_pad_a_esd_0_h(gpio3_1_pad_a_esd_0_h),
        .gpio3_1_pad_a_esd_1_h(gpio3_1_pad_a_esd_1_h),
        .gpio3_1_pad_a_noesd_h(gpio3_1_pad_a_noesd_h),
        .gpio3_1_slow(gpio3_1_slow),
        .gpio3_1_tie_hi_esd(gpio3_1_tie_hi_esd),
        .gpio3_1_tie_lo_esd(gpio3_1_tie_lo_esd),
        .gpio3_1_vtrip_sel(gpio3_1_vtrip_sel),
        .gpio3_1_zero(gpio3_1_zero),
        .gpio3_2_analog_en(gpio3_2_analog_en),
        .gpio3_2_analog_pol(gpio3_2_analog_pol),
        .gpio3_2_analog_sel(gpio3_2_analog_sel),
        .gpio3_2_dm(gpio3_2_dm),
        .gpio3_2_enable_h(gpio3_2_enable_h),
        .gpio3_2_enable_inp_h(gpio3_2_enable_inp_h),
        .gpio3_2_enable_vdda_h(gpio3_2_enable_vdda_h),
        .gpio3_2_enable_vddio(gpio3_2_enable_vddio),
        .gpio3_2_enable_vswitch_h(gpio3_2_enable_vswitch_h),
        .gpio3_2_hld_h_n(gpio3_2_hld_h_n),
        .gpio3_2_hld_ovr(gpio3_2_hld_ovr),
        .gpio3_2_ib_mode_sel(gpio3_2_ib_mode_sel),
        .gpio3_2_in(gpio3_2_in),
        .gpio3_2_in_h(gpio3_2_in_h),
        .gpio3_2_inp_dis(gpio3_2_inp_dis),
        .gpio3_2_oe_n(gpio3_2_oe_n),
        .gpio3_2_one(gpio3_2_one),
        .gpio3_2_out(gpio3_2_out),
        .gpio3_2_pad_a_esd_0_h(gpio3_2_pad_a_esd_0_h),
        .gpio3_2_pad_a_esd_1_h(gpio3_2_pad_a_esd_1_h),
        .gpio3_2_pad_a_noesd_h(gpio3_2_pad_a_noesd_h),
        .gpio3_2_slow(gpio3_2_slow),
        .gpio3_2_tie_hi_esd(gpio3_2_tie_hi_esd),
        .gpio3_2_tie_lo_esd(gpio3_2_tie_lo_esd),
        .gpio3_2_vtrip_sel(gpio3_2_vtrip_sel),
        .gpio3_2_zero(gpio3_2_zero),
        .gpio3_3_analog_en(gpio3_3_analog_en),
        .gpio3_3_analog_pol(gpio3_3_analog_pol),
        .gpio3_3_analog_sel(gpio3_3_analog_sel),
        .gpio3_3_dm(gpio3_3_dm),
        .gpio3_3_enable_h(gpio3_3_enable_h),
        .gpio3_3_enable_inp_h(gpio3_3_enable_inp_h),
        .gpio3_3_enable_vdda_h(gpio3_3_enable_vdda_h),
        .gpio3_3_enable_vddio(gpio3_3_enable_vddio),
        .gpio3_3_enable_vswitch_h(gpio3_3_enable_vswitch_h),
        .gpio3_3_hld_h_n(gpio3_3_hld_h_n),
        .gpio3_3_hld_ovr(gpio3_3_hld_ovr),
        .gpio3_3_ib_mode_sel(gpio3_3_ib_mode_sel),
        .gpio3_3_in(gpio3_3_in),
        .gpio3_3_in_h(gpio3_3_in_h),
        .gpio3_3_inp_dis(gpio3_3_inp_dis),
        .gpio3_3_oe_n(gpio3_3_oe_n),
        .gpio3_3_one(gpio3_3_one),
        .gpio3_3_out(gpio3_3_out),
        .gpio3_3_pad_a_esd_0_h(gpio3_3_pad_a_esd_0_h),
        .gpio3_3_pad_a_esd_1_h(gpio3_3_pad_a_esd_1_h),
        .gpio3_3_pad_a_noesd_h(gpio3_3_pad_a_noesd_h),
        .gpio3_3_slow(gpio3_3_slow),
        .gpio3_3_tie_hi_esd(gpio3_3_tie_hi_esd),
        .gpio3_3_tie_lo_esd(gpio3_3_tie_lo_esd),
        .gpio3_3_vtrip_sel(gpio3_3_vtrip_sel),
        .gpio3_3_zero(gpio3_3_zero),
        .gpio3_4_analog_en(gpio3_4_analog_en),
        .gpio3_4_analog_pol(gpio3_4_analog_pol),
        .gpio3_4_analog_sel(gpio3_4_analog_sel),
        .gpio3_4_dm(gpio3_4_dm),
        .gpio3_4_enable_h(gpio3_4_enable_h),
        .gpio3_4_enable_inp_h(gpio3_4_enable_inp_h),
        .gpio3_4_enable_vdda_h(gpio3_4_enable_vdda_h),
        .gpio3_4_enable_vddio(gpio3_4_enable_vddio),
        .gpio3_4_enable_vswitch_h(gpio3_4_enable_vswitch_h),
        .gpio3_4_hld_h_n(gpio3_4_hld_h_n),
        .gpio3_4_hld_ovr(gpio3_4_hld_ovr),
        .gpio3_4_ib_mode_sel(gpio3_4_ib_mode_sel),
        .gpio3_4_in(gpio3_4_in),
        .gpio3_4_in_h(gpio3_4_in_h),
        .gpio3_4_inp_dis(gpio3_4_inp_dis),
        .gpio3_4_oe_n(gpio3_4_oe_n),
        .gpio3_4_one(gpio3_4_one),
        .gpio3_4_out(gpio3_4_out),
        .gpio3_4_pad_a_esd_0_h(gpio3_4_pad_a_esd_0_h),
        .gpio3_4_pad_a_esd_1_h(gpio3_4_pad_a_esd_1_h),
        .gpio3_4_pad_a_noesd_h(gpio3_4_pad_a_noesd_h),
        .gpio3_4_slow(gpio3_4_slow),
        .gpio3_4_tie_hi_esd(gpio3_4_tie_hi_esd),
        .gpio3_4_tie_lo_esd(gpio3_4_tie_lo_esd),
        .gpio3_4_vtrip_sel(gpio3_4_vtrip_sel),
        .gpio3_4_zero(gpio3_4_zero),
        .gpio3_5_analog_en(gpio3_5_analog_en),
        .gpio3_5_analog_pol(gpio3_5_analog_pol),
        .gpio3_5_analog_sel(gpio3_5_analog_sel),
        .gpio3_5_dm(gpio3_5_dm),
        .gpio3_5_enable_h(gpio3_5_enable_h),
        .gpio3_5_enable_inp_h(gpio3_5_enable_inp_h),
        .gpio3_5_enable_vdda_h(gpio3_5_enable_vdda_h),
        .gpio3_5_enable_vddio(gpio3_5_enable_vddio),
        .gpio3_5_enable_vswitch_h(gpio3_5_enable_vswitch_h),
        .gpio3_5_hld_h_n(gpio3_5_hld_h_n),
        .gpio3_5_hld_ovr(gpio3_5_hld_ovr),
        .gpio3_5_ib_mode_sel(gpio3_5_ib_mode_sel),
        .gpio3_5_in(gpio3_5_in),
        .gpio3_5_in_h(gpio3_5_in_h),
        .gpio3_5_inp_dis(gpio3_5_inp_dis),
        .gpio3_5_oe_n(gpio3_5_oe_n),
        .gpio3_5_one(gpio3_5_one),
        .gpio3_5_out(gpio3_5_out),
        .gpio3_5_pad_a_esd_0_h(gpio3_5_pad_a_esd_0_h),
        .gpio3_5_pad_a_esd_1_h(gpio3_5_pad_a_esd_1_h),
        .gpio3_5_pad_a_noesd_h(gpio3_5_pad_a_noesd_h),
        .gpio3_5_slow(gpio3_5_slow),
        .gpio3_5_tie_hi_esd(gpio3_5_tie_hi_esd),
        .gpio3_5_tie_lo_esd(gpio3_5_tie_lo_esd),
        .gpio3_5_vtrip_sel(gpio3_5_vtrip_sel),
        .gpio3_5_zero(gpio3_5_zero),
        .gpio3_6_analog_en(gpio3_6_analog_en),
        .gpio3_6_analog_pol(gpio3_6_analog_pol),
        .gpio3_6_analog_sel(gpio3_6_analog_sel),
        .gpio3_6_dm(gpio3_6_dm),
        .gpio3_6_enable_h(gpio3_6_enable_h),
        .gpio3_6_enable_inp_h(gpio3_6_enable_inp_h),
        .gpio3_6_enable_vdda_h(gpio3_6_enable_vdda_h),
        .gpio3_6_enable_vddio(gpio3_6_enable_vddio),
        .gpio3_6_enable_vswitch_h(gpio3_6_enable_vswitch_h),
        .gpio3_6_hld_h_n(gpio3_6_hld_h_n),
        .gpio3_6_hld_ovr(gpio3_6_hld_ovr),
        .gpio3_6_ib_mode_sel(gpio3_6_ib_mode_sel),
        .gpio3_6_in(gpio3_6_in),
        .gpio3_6_in_h(gpio3_6_in_h),
        .gpio3_6_inp_dis(gpio3_6_inp_dis),
        .gpio3_6_oe_n(gpio3_6_oe_n),
        .gpio3_6_one(gpio3_6_one),
        .gpio3_6_out(gpio3_6_out),
        .gpio3_6_pad_a_esd_0_h(gpio3_6_pad_a_esd_0_h),
        .gpio3_6_pad_a_esd_1_h(gpio3_6_pad_a_esd_1_h),
        .gpio3_6_pad_a_noesd_h(gpio3_6_pad_a_noesd_h),
        .gpio3_6_slow(gpio3_6_slow),
        .gpio3_6_tie_hi_esd(gpio3_6_tie_hi_esd),
        .gpio3_6_tie_lo_esd(gpio3_6_tie_lo_esd),
        .gpio3_6_vtrip_sel(gpio3_6_vtrip_sel),
        .gpio3_6_zero(gpio3_6_zero),
        .gpio3_7_analog_en(gpio3_7_analog_en),
        .gpio3_7_analog_pol(gpio3_7_analog_pol),
        .gpio3_7_analog_sel(gpio3_7_analog_sel),
        .gpio3_7_dm(gpio3_7_dm),
        .gpio3_7_enable_h(gpio3_7_enable_h),
        .gpio3_7_enable_inp_h(gpio3_7_enable_inp_h),
        .gpio3_7_enable_vdda_h(gpio3_7_enable_vdda_h),
        .gpio3_7_enable_vddio(gpio3_7_enable_vddio),
        .gpio3_7_enable_vswitch_h(gpio3_7_enable_vswitch_h),
        .gpio3_7_hld_h_n(gpio3_7_hld_h_n),
        .gpio3_7_hld_ovr(gpio3_7_hld_ovr),
        .gpio3_7_ib_mode_sel(gpio3_7_ib_mode_sel),
        .gpio3_7_in(gpio3_7_in),
        .gpio3_7_in_h(gpio3_7_in_h),
        .gpio3_7_inp_dis(gpio3_7_inp_dis),
        .gpio3_7_oe_n(gpio3_7_oe_n),
        .gpio3_7_one(gpio3_7_one),
        .gpio3_7_out(gpio3_7_out),
        .gpio3_7_pad_a_esd_0_h(gpio3_7_pad_a_esd_0_h),
        .gpio3_7_pad_a_esd_1_h(gpio3_7_pad_a_esd_1_h),
        .gpio3_7_pad_a_noesd_h(gpio3_7_pad_a_noesd_h),
        .gpio3_7_slow(gpio3_7_slow),
        .gpio3_7_tie_hi_esd(gpio3_7_tie_hi_esd),
        .gpio3_7_tie_lo_esd(gpio3_7_tie_lo_esd),
        .gpio3_7_vtrip_sel(gpio3_7_vtrip_sel),
        .gpio3_7_zero(gpio3_7_zero),
        .gpio4_0_analog_en(gpio4_0_analog_en),
        .gpio4_0_analog_pol(gpio4_0_analog_pol),
        .gpio4_0_analog_sel(gpio4_0_analog_sel),
        .gpio4_0_dm(gpio4_0_dm),
        .gpio4_0_enable_h(gpio4_0_enable_h),
        .gpio4_0_enable_inp_h(gpio4_0_enable_inp_h),
        .gpio4_0_enable_vdda_h(gpio4_0_enable_vdda_h),
        .gpio4_0_enable_vddio(gpio4_0_enable_vddio),
        .gpio4_0_enable_vswitch_h(gpio4_0_enable_vswitch_h),
        .gpio4_0_hld_h_n(gpio4_0_hld_h_n),
        .gpio4_0_hld_ovr(gpio4_0_hld_ovr),
        .gpio4_0_ib_mode_sel(gpio4_0_ib_mode_sel),
        .gpio4_0_in(gpio4_0_in),
        .gpio4_0_in_h(gpio4_0_in_h),
        .gpio4_0_inp_dis(gpio4_0_inp_dis),
        .gpio4_0_oe_n(gpio4_0_oe_n),
        .gpio4_0_one(gpio4_0_one),
        .gpio4_0_out(gpio4_0_out),
        .gpio4_0_pad_a_esd_0_h(gpio4_0_pad_a_esd_0_h),
        .gpio4_0_pad_a_esd_1_h(gpio4_0_pad_a_esd_1_h),
        .gpio4_0_pad_a_noesd_h(gpio4_0_pad_a_noesd_h),
        .gpio4_0_slow(gpio4_0_slow),
        .gpio4_0_tie_hi_esd(gpio4_0_tie_hi_esd),
        .gpio4_0_tie_lo_esd(gpio4_0_tie_lo_esd),
        .gpio4_0_vtrip_sel(gpio4_0_vtrip_sel),
        .gpio4_0_zero(gpio4_0_zero),
        .gpio4_1_analog_en(gpio4_1_analog_en),
        .gpio4_1_analog_pol(gpio4_1_analog_pol),
        .gpio4_1_analog_sel(gpio4_1_analog_sel),
        .gpio4_1_dm(gpio4_1_dm),
        .gpio4_1_enable_h(gpio4_1_enable_h),
        .gpio4_1_enable_inp_h(gpio4_1_enable_inp_h),
        .gpio4_1_enable_vdda_h(gpio4_1_enable_vdda_h),
        .gpio4_1_enable_vddio(gpio4_1_enable_vddio),
        .gpio4_1_enable_vswitch_h(gpio4_1_enable_vswitch_h),
        .gpio4_1_hld_h_n(gpio4_1_hld_h_n),
        .gpio4_1_hld_ovr(gpio4_1_hld_ovr),
        .gpio4_1_ib_mode_sel(gpio4_1_ib_mode_sel),
        .gpio4_1_in(gpio4_1_in),
        .gpio4_1_in_h(gpio4_1_in_h),
        .gpio4_1_inp_dis(gpio4_1_inp_dis),
        .gpio4_1_oe_n(gpio4_1_oe_n),
        .gpio4_1_one(gpio4_1_one),
        .gpio4_1_out(gpio4_1_out),
        .gpio4_1_pad_a_esd_0_h(gpio4_1_pad_a_esd_0_h),
        .gpio4_1_pad_a_esd_1_h(gpio4_1_pad_a_esd_1_h),
        .gpio4_1_pad_a_noesd_h(gpio4_1_pad_a_noesd_h),
        .gpio4_1_slow(gpio4_1_slow),
        .gpio4_1_tie_hi_esd(gpio4_1_tie_hi_esd),
        .gpio4_1_tie_lo_esd(gpio4_1_tie_lo_esd),
        .gpio4_1_vtrip_sel(gpio4_1_vtrip_sel),
        .gpio4_1_zero(gpio4_1_zero),
        .gpio4_2_analog_en(gpio4_2_analog_en),
        .gpio4_2_analog_pol(gpio4_2_analog_pol),
        .gpio4_2_analog_sel(gpio4_2_analog_sel),
        .gpio4_2_dm(gpio4_2_dm),
        .gpio4_2_enable_h(gpio4_2_enable_h),
        .gpio4_2_enable_inp_h(gpio4_2_enable_inp_h),
        .gpio4_2_enable_vdda_h(gpio4_2_enable_vdda_h),
        .gpio4_2_enable_vddio(gpio4_2_enable_vddio),
        .gpio4_2_enable_vswitch_h(gpio4_2_enable_vswitch_h),
        .gpio4_2_hld_h_n(gpio4_2_hld_h_n),
        .gpio4_2_hld_ovr(gpio4_2_hld_ovr),
        .gpio4_2_ib_mode_sel(gpio4_2_ib_mode_sel),
        .gpio4_2_in(gpio4_2_in),
        .gpio4_2_in_h(gpio4_2_in_h),
        .gpio4_2_inp_dis(gpio4_2_inp_dis),
        .gpio4_2_oe_n(gpio4_2_oe_n),
        .gpio4_2_one(gpio4_2_one),
        .gpio4_2_out(gpio4_2_out),
        .gpio4_2_pad_a_esd_0_h(gpio4_2_pad_a_esd_0_h),
        .gpio4_2_pad_a_esd_1_h(gpio4_2_pad_a_esd_1_h),
        .gpio4_2_pad_a_noesd_h(gpio4_2_pad_a_noesd_h),
        .gpio4_2_slow(gpio4_2_slow),
        .gpio4_2_tie_hi_esd(gpio4_2_tie_hi_esd),
        .gpio4_2_tie_lo_esd(gpio4_2_tie_lo_esd),
        .gpio4_2_vtrip_sel(gpio4_2_vtrip_sel),
        .gpio4_2_zero(gpio4_2_zero),
        .gpio4_3_analog_en(gpio4_3_analog_en),
        .gpio4_3_analog_pol(gpio4_3_analog_pol),
        .gpio4_3_analog_sel(gpio4_3_analog_sel),
        .gpio4_3_dm(gpio4_3_dm),
        .gpio4_3_enable_h(gpio4_3_enable_h),
        .gpio4_3_enable_inp_h(gpio4_3_enable_inp_h),
        .gpio4_3_enable_vdda_h(gpio4_3_enable_vdda_h),
        .gpio4_3_enable_vddio(gpio4_3_enable_vddio),
        .gpio4_3_enable_vswitch_h(gpio4_3_enable_vswitch_h),
        .gpio4_3_hld_h_n(gpio4_3_hld_h_n),
        .gpio4_3_hld_ovr(gpio4_3_hld_ovr),
        .gpio4_3_ib_mode_sel(gpio4_3_ib_mode_sel),
        .gpio4_3_in(gpio4_3_in),
        .gpio4_3_in_h(gpio4_3_in_h),
        .gpio4_3_inp_dis(gpio4_3_inp_dis),
        .gpio4_3_oe_n(gpio4_3_oe_n),
        .gpio4_3_one(gpio4_3_one),
        .gpio4_3_out(gpio4_3_out),
        .gpio4_3_pad_a_esd_0_h(gpio4_3_pad_a_esd_0_h),
        .gpio4_3_pad_a_esd_1_h(gpio4_3_pad_a_esd_1_h),
        .gpio4_3_pad_a_noesd_h(gpio4_3_pad_a_noesd_h),
        .gpio4_3_slow(gpio4_3_slow),
        .gpio4_3_tie_hi_esd(gpio4_3_tie_hi_esd),
        .gpio4_3_tie_lo_esd(gpio4_3_tie_lo_esd),
        .gpio4_3_vtrip_sel(gpio4_3_vtrip_sel),
        .gpio4_3_zero(gpio4_3_zero),
        .gpio4_4_analog_en(gpio4_4_analog_en),
        .gpio4_4_analog_pol(gpio4_4_analog_pol),
        .gpio4_4_analog_sel(gpio4_4_analog_sel),
        .gpio4_4_dm(gpio4_4_dm),
        .gpio4_4_enable_h(gpio4_4_enable_h),
        .gpio4_4_enable_inp_h(gpio4_4_enable_inp_h),
        .gpio4_4_enable_vdda_h(gpio4_4_enable_vdda_h),
        .gpio4_4_enable_vddio(gpio4_4_enable_vddio),
        .gpio4_4_enable_vswitch_h(gpio4_4_enable_vswitch_h),
        .gpio4_4_hld_h_n(gpio4_4_hld_h_n),
        .gpio4_4_hld_ovr(gpio4_4_hld_ovr),
        .gpio4_4_ib_mode_sel(gpio4_4_ib_mode_sel),
        .gpio4_4_in(gpio4_4_in),
        .gpio4_4_in_h(gpio4_4_in_h),
        .gpio4_4_inp_dis(gpio4_4_inp_dis),
        .gpio4_4_oe_n(gpio4_4_oe_n),
        .gpio4_4_one(gpio4_4_one),
        .gpio4_4_out(gpio4_4_out),
        .gpio4_4_pad_a_esd_0_h(gpio4_4_pad_a_esd_0_h),
        .gpio4_4_pad_a_esd_1_h(gpio4_4_pad_a_esd_1_h),
        .gpio4_4_pad_a_noesd_h(gpio4_4_pad_a_noesd_h),
        .gpio4_4_slow(gpio4_4_slow),
        .gpio4_4_tie_hi_esd(gpio4_4_tie_hi_esd),
        .gpio4_4_tie_lo_esd(gpio4_4_tie_lo_esd),
        .gpio4_4_vtrip_sel(gpio4_4_vtrip_sel),
        .gpio4_4_zero(gpio4_4_zero),
        .gpio4_5_analog_en(gpio4_5_analog_en),
        .gpio4_5_analog_pol(gpio4_5_analog_pol),
        .gpio4_5_analog_sel(gpio4_5_analog_sel),
        .gpio4_5_dm(gpio4_5_dm),
        .gpio4_5_enable_h(gpio4_5_enable_h),
        .gpio4_5_enable_inp_h(gpio4_5_enable_inp_h),
        .gpio4_5_enable_vdda_h(gpio4_5_enable_vdda_h),
        .gpio4_5_enable_vddio(gpio4_5_enable_vddio),
        .gpio4_5_enable_vswitch_h(gpio4_5_enable_vswitch_h),
        .gpio4_5_hld_h_n(gpio4_5_hld_h_n),
        .gpio4_5_hld_ovr(gpio4_5_hld_ovr),
        .gpio4_5_ib_mode_sel(gpio4_5_ib_mode_sel),
        .gpio4_5_in(gpio4_5_in),
        .gpio4_5_in_h(gpio4_5_in_h),
        .gpio4_5_inp_dis(gpio4_5_inp_dis),
        .gpio4_5_oe_n(gpio4_5_oe_n),
        .gpio4_5_one(gpio4_5_one),
        .gpio4_5_out(gpio4_5_out),
        .gpio4_5_pad_a_esd_0_h(gpio4_5_pad_a_esd_0_h),
        .gpio4_5_pad_a_esd_1_h(gpio4_5_pad_a_esd_1_h),
        .gpio4_5_pad_a_noesd_h(gpio4_5_pad_a_noesd_h),
        .gpio4_5_slow(gpio4_5_slow),
        .gpio4_5_tie_hi_esd(gpio4_5_tie_hi_esd),
        .gpio4_5_tie_lo_esd(gpio4_5_tie_lo_esd),
        .gpio4_5_vtrip_sel(gpio4_5_vtrip_sel),
        .gpio4_5_zero(gpio4_5_zero),
        .gpio4_6_analog_en(gpio4_6_analog_en),
        .gpio4_6_analog_pol(gpio4_6_analog_pol),
        .gpio4_6_analog_sel(gpio4_6_analog_sel),
        .gpio4_6_dm(gpio4_6_dm),
        .gpio4_6_enable_h(gpio4_6_enable_h),
        .gpio4_6_enable_inp_h(gpio4_6_enable_inp_h),
        .gpio4_6_enable_vdda_h(gpio4_6_enable_vdda_h),
        .gpio4_6_enable_vddio(gpio4_6_enable_vddio),
        .gpio4_6_enable_vswitch_h(gpio4_6_enable_vswitch_h),
        .gpio4_6_hld_h_n(gpio4_6_hld_h_n),
        .gpio4_6_hld_ovr(gpio4_6_hld_ovr),
        .gpio4_6_ib_mode_sel(gpio4_6_ib_mode_sel),
        .gpio4_6_in(gpio4_6_in),
        .gpio4_6_in_h(gpio4_6_in_h),
        .gpio4_6_inp_dis(gpio4_6_inp_dis),
        .gpio4_6_oe_n(gpio4_6_oe_n),
        .gpio4_6_one(gpio4_6_one),
        .gpio4_6_out(gpio4_6_out),
        .gpio4_6_pad_a_esd_0_h(gpio4_6_pad_a_esd_0_h),
        .gpio4_6_pad_a_esd_1_h(gpio4_6_pad_a_esd_1_h),
        .gpio4_6_pad_a_noesd_h(gpio4_6_pad_a_noesd_h),
        .gpio4_6_slow(gpio4_6_slow),
        .gpio4_6_tie_hi_esd(gpio4_6_tie_hi_esd),
        .gpio4_6_tie_lo_esd(gpio4_6_tie_lo_esd),
        .gpio4_6_vtrip_sel(gpio4_6_vtrip_sel),
        .gpio4_6_zero(gpio4_6_zero),
        .gpio4_7_analog_en(gpio4_7_analog_en),
        .gpio4_7_analog_pol(gpio4_7_analog_pol),
        .gpio4_7_analog_sel(gpio4_7_analog_sel),
        .gpio4_7_dm(gpio4_7_dm),
        .gpio4_7_enable_h(gpio4_7_enable_h),
        .gpio4_7_enable_inp_h(gpio4_7_enable_inp_h),
        .gpio4_7_enable_vdda_h(gpio4_7_enable_vdda_h),
        .gpio4_7_enable_vddio(gpio4_7_enable_vddio),
        .gpio4_7_enable_vswitch_h(gpio4_7_enable_vswitch_h),
        .gpio4_7_hld_h_n(gpio4_7_hld_h_n),
        .gpio4_7_hld_ovr(gpio4_7_hld_ovr),
        .gpio4_7_ib_mode_sel(gpio4_7_ib_mode_sel),
        .gpio4_7_in(gpio4_7_in),
        .gpio4_7_in_h(gpio4_7_in_h),
        .gpio4_7_inp_dis(gpio4_7_inp_dis),
        .gpio4_7_oe_n(gpio4_7_oe_n),
        .gpio4_7_one(gpio4_7_one),
        .gpio4_7_out(gpio4_7_out),
        .gpio4_7_pad_a_esd_0_h(gpio4_7_pad_a_esd_0_h),
        .gpio4_7_pad_a_esd_1_h(gpio4_7_pad_a_esd_1_h),
        .gpio4_7_pad_a_noesd_h(gpio4_7_pad_a_noesd_h),
        .gpio4_7_slow(gpio4_7_slow),
        .gpio4_7_tie_hi_esd(gpio4_7_tie_hi_esd),
        .gpio4_7_tie_lo_esd(gpio4_7_tie_lo_esd),
        .gpio4_7_vtrip_sel(gpio4_7_vtrip_sel),
        .gpio4_7_zero(gpio4_7_zero),
        .gpio5_0_analog_en(gpio5_0_analog_en),
        .gpio5_0_analog_pol(gpio5_0_analog_pol),
        .gpio5_0_analog_sel(gpio5_0_analog_sel),
        .gpio5_0_dm(gpio5_0_dm),
        .gpio5_0_enable_h(gpio5_0_enable_h),
        .gpio5_0_enable_inp_h(gpio5_0_enable_inp_h),
        .gpio5_0_enable_vdda_h(gpio5_0_enable_vdda_h),
        .gpio5_0_enable_vddio(gpio5_0_enable_vddio),
        .gpio5_0_enable_vswitch_h(gpio5_0_enable_vswitch_h),
        .gpio5_0_hld_h_n(gpio5_0_hld_h_n),
        .gpio5_0_hld_ovr(gpio5_0_hld_ovr),
        .gpio5_0_ib_mode_sel(gpio5_0_ib_mode_sel),
        .gpio5_0_in(gpio5_0_in),
        .gpio5_0_in_h(gpio5_0_in_h),
        .gpio5_0_inp_dis(gpio5_0_inp_dis),
        .gpio5_0_oe_n(gpio5_0_oe_n),
        .gpio5_0_one(gpio5_0_one),
        .gpio5_0_out(gpio5_0_out),
        .gpio5_0_pad_a_esd_0_h(gpio5_0_pad_a_esd_0_h),
        .gpio5_0_pad_a_esd_1_h(gpio5_0_pad_a_esd_1_h),
        .gpio5_0_pad_a_noesd_h(gpio5_0_pad_a_noesd_h),
        .gpio5_0_slow(gpio5_0_slow),
        .gpio5_0_tie_hi_esd(gpio5_0_tie_hi_esd),
        .gpio5_0_tie_lo_esd(gpio5_0_tie_lo_esd),
        .gpio5_0_vtrip_sel(gpio5_0_vtrip_sel),
        .gpio5_0_zero(gpio5_0_zero),
        .gpio5_1_analog_en(gpio5_1_analog_en),
        .gpio5_1_analog_pol(gpio5_1_analog_pol),
        .gpio5_1_analog_sel(gpio5_1_analog_sel),
        .gpio5_1_dm(gpio5_1_dm),
        .gpio5_1_enable_h(gpio5_1_enable_h),
        .gpio5_1_enable_inp_h(gpio5_1_enable_inp_h),
        .gpio5_1_enable_vdda_h(gpio5_1_enable_vdda_h),
        .gpio5_1_enable_vddio(gpio5_1_enable_vddio),
        .gpio5_1_enable_vswitch_h(gpio5_1_enable_vswitch_h),
        .gpio5_1_hld_h_n(gpio5_1_hld_h_n),
        .gpio5_1_hld_ovr(gpio5_1_hld_ovr),
        .gpio5_1_ib_mode_sel(gpio5_1_ib_mode_sel),
        .gpio5_1_in(gpio5_1_in),
        .gpio5_1_in_h(gpio5_1_in_h),
        .gpio5_1_inp_dis(gpio5_1_inp_dis),
        .gpio5_1_oe_n(gpio5_1_oe_n),
        .gpio5_1_one(gpio5_1_one),
        .gpio5_1_out(gpio5_1_out),
        .gpio5_1_pad_a_esd_0_h(gpio5_1_pad_a_esd_0_h),
        .gpio5_1_pad_a_esd_1_h(gpio5_1_pad_a_esd_1_h),
        .gpio5_1_pad_a_noesd_h(gpio5_1_pad_a_noesd_h),
        .gpio5_1_slow(gpio5_1_slow),
        .gpio5_1_tie_hi_esd(gpio5_1_tie_hi_esd),
        .gpio5_1_tie_lo_esd(gpio5_1_tie_lo_esd),
        .gpio5_1_vtrip_sel(gpio5_1_vtrip_sel),
        .gpio5_1_zero(gpio5_1_zero),
        .gpio5_2_analog_en(gpio5_2_analog_en),
        .gpio5_2_analog_pol(gpio5_2_analog_pol),
        .gpio5_2_analog_sel(gpio5_2_analog_sel),
        .gpio5_2_dm(gpio5_2_dm),
        .gpio5_2_enable_h(gpio5_2_enable_h),
        .gpio5_2_enable_inp_h(gpio5_2_enable_inp_h),
        .gpio5_2_enable_vdda_h(gpio5_2_enable_vdda_h),
        .gpio5_2_enable_vddio(gpio5_2_enable_vddio),
        .gpio5_2_enable_vswitch_h(gpio5_2_enable_vswitch_h),
        .gpio5_2_hld_h_n(gpio5_2_hld_h_n),
        .gpio5_2_hld_ovr(gpio5_2_hld_ovr),
        .gpio5_2_ib_mode_sel(gpio5_2_ib_mode_sel),
        .gpio5_2_in(gpio5_2_in),
        .gpio5_2_in_h(gpio5_2_in_h),
        .gpio5_2_inp_dis(gpio5_2_inp_dis),
        .gpio5_2_oe_n(gpio5_2_oe_n),
        .gpio5_2_one(gpio5_2_one),
        .gpio5_2_out(gpio5_2_out),
        .gpio5_2_pad_a_esd_0_h(gpio5_2_pad_a_esd_0_h),
        .gpio5_2_pad_a_esd_1_h(gpio5_2_pad_a_esd_1_h),
        .gpio5_2_pad_a_noesd_h(gpio5_2_pad_a_noesd_h),
        .gpio5_2_slow(gpio5_2_slow),
        .gpio5_2_tie_hi_esd(gpio5_2_tie_hi_esd),
        .gpio5_2_tie_lo_esd(gpio5_2_tie_lo_esd),
        .gpio5_2_vtrip_sel(gpio5_2_vtrip_sel),
        .gpio5_2_zero(gpio5_2_zero),
        .gpio5_3_analog_en(gpio5_3_analog_en),
        .gpio5_3_analog_pol(gpio5_3_analog_pol),
        .gpio5_3_analog_sel(gpio5_3_analog_sel),
        .gpio5_3_dm(gpio5_3_dm),
        .gpio5_3_enable_h(gpio5_3_enable_h),
        .gpio5_3_enable_inp_h(gpio5_3_enable_inp_h),
        .gpio5_3_enable_vdda_h(gpio5_3_enable_vdda_h),
        .gpio5_3_enable_vddio(gpio5_3_enable_vddio),
        .gpio5_3_enable_vswitch_h(gpio5_3_enable_vswitch_h),
        .gpio5_3_hld_h_n(gpio5_3_hld_h_n),
        .gpio5_3_hld_ovr(gpio5_3_hld_ovr),
        .gpio5_3_ib_mode_sel(gpio5_3_ib_mode_sel),
        .gpio5_3_in(gpio5_3_in),
        .gpio5_3_in_h(gpio5_3_in_h),
        .gpio5_3_inp_dis(gpio5_3_inp_dis),
        .gpio5_3_oe_n(gpio5_3_oe_n),
        .gpio5_3_one(gpio5_3_one),
        .gpio5_3_out(gpio5_3_out),
        .gpio5_3_pad_a_esd_0_h(gpio5_3_pad_a_esd_0_h),
        .gpio5_3_pad_a_esd_1_h(gpio5_3_pad_a_esd_1_h),
        .gpio5_3_pad_a_noesd_h(gpio5_3_pad_a_noesd_h),
        .gpio5_3_slow(gpio5_3_slow),
        .gpio5_3_tie_hi_esd(gpio5_3_tie_hi_esd),
        .gpio5_3_tie_lo_esd(gpio5_3_tie_lo_esd),
        .gpio5_3_vtrip_sel(gpio5_3_vtrip_sel),
        .gpio5_3_zero(gpio5_3_zero),
        .gpio5_4_analog_en(gpio5_4_analog_en),
        .gpio5_4_analog_pol(gpio5_4_analog_pol),
        .gpio5_4_analog_sel(gpio5_4_analog_sel),
        .gpio5_4_dm(gpio5_4_dm),
        .gpio5_4_enable_h(gpio5_4_enable_h),
        .gpio5_4_enable_inp_h(gpio5_4_enable_inp_h),
        .gpio5_4_enable_vdda_h(gpio5_4_enable_vdda_h),
        .gpio5_4_enable_vddio(gpio5_4_enable_vddio),
        .gpio5_4_enable_vswitch_h(gpio5_4_enable_vswitch_h),
        .gpio5_4_hld_h_n(gpio5_4_hld_h_n),
        .gpio5_4_hld_ovr(gpio5_4_hld_ovr),
        .gpio5_4_ib_mode_sel(gpio5_4_ib_mode_sel),
        .gpio5_4_in(gpio5_4_in),
        .gpio5_4_in_h(gpio5_4_in_h),
        .gpio5_4_inp_dis(gpio5_4_inp_dis),
        .gpio5_4_oe_n(gpio5_4_oe_n),
        .gpio5_4_one(gpio5_4_one),
        .gpio5_4_out(gpio5_4_out),
        .gpio5_4_pad_a_esd_0_h(gpio5_4_pad_a_esd_0_h),
        .gpio5_4_pad_a_esd_1_h(gpio5_4_pad_a_esd_1_h),
        .gpio5_4_pad_a_noesd_h(gpio5_4_pad_a_noesd_h),
        .gpio5_4_slow(gpio5_4_slow),
        .gpio5_4_tie_hi_esd(gpio5_4_tie_hi_esd),
        .gpio5_4_tie_lo_esd(gpio5_4_tie_lo_esd),
        .gpio5_4_vtrip_sel(gpio5_4_vtrip_sel),
        .gpio5_4_zero(gpio5_4_zero),
        .gpio5_5_analog_en(gpio5_5_analog_en),
        .gpio5_5_analog_pol(gpio5_5_analog_pol),
        .gpio5_5_analog_sel(gpio5_5_analog_sel),
        .gpio5_5_dm(gpio5_5_dm),
        .gpio5_5_enable_h(gpio5_5_enable_h),
        .gpio5_5_enable_inp_h(gpio5_5_enable_inp_h),
        .gpio5_5_enable_vdda_h(gpio5_5_enable_vdda_h),
        .gpio5_5_enable_vddio(gpio5_5_enable_vddio),
        .gpio5_5_enable_vswitch_h(gpio5_5_enable_vswitch_h),
        .gpio5_5_hld_h_n(gpio5_5_hld_h_n),
        .gpio5_5_hld_ovr(gpio5_5_hld_ovr),
        .gpio5_5_ib_mode_sel(gpio5_5_ib_mode_sel),
        .gpio5_5_in(gpio5_5_in),
        .gpio5_5_in_h(gpio5_5_in_h),
        .gpio5_5_inp_dis(gpio5_5_inp_dis),
        .gpio5_5_oe_n(gpio5_5_oe_n),
        .gpio5_5_one(gpio5_5_one),
        .gpio5_5_out(gpio5_5_out),
        .gpio5_5_pad_a_esd_0_h(gpio5_5_pad_a_esd_0_h),
        .gpio5_5_pad_a_esd_1_h(gpio5_5_pad_a_esd_1_h),
        .gpio5_5_pad_a_noesd_h(gpio5_5_pad_a_noesd_h),
        .gpio5_5_slow(gpio5_5_slow),
        .gpio5_5_tie_hi_esd(gpio5_5_tie_hi_esd),
        .gpio5_5_tie_lo_esd(gpio5_5_tie_lo_esd),
        .gpio5_5_vtrip_sel(gpio5_5_vtrip_sel),
        .gpio5_5_zero(gpio5_5_zero),
        .gpio5_6_analog_en(gpio5_6_analog_en),
        .gpio5_6_analog_pol(gpio5_6_analog_pol),
        .gpio5_6_analog_sel(gpio5_6_analog_sel),
        .gpio5_6_dm(gpio5_6_dm),
        .gpio5_6_enable_h(gpio5_6_enable_h),
        .gpio5_6_enable_inp_h(gpio5_6_enable_inp_h),
        .gpio5_6_enable_vdda_h(gpio5_6_enable_vdda_h),
        .gpio5_6_enable_vddio(gpio5_6_enable_vddio),
        .gpio5_6_enable_vswitch_h(gpio5_6_enable_vswitch_h),
        .gpio5_6_hld_h_n(gpio5_6_hld_h_n),
        .gpio5_6_hld_ovr(gpio5_6_hld_ovr),
        .gpio5_6_ib_mode_sel(gpio5_6_ib_mode_sel),
        .gpio5_6_in(gpio5_6_in),
        .gpio5_6_in_h(gpio5_6_in_h),
        .gpio5_6_inp_dis(gpio5_6_inp_dis),
        .gpio5_6_oe_n(gpio5_6_oe_n),
        .gpio5_6_one(gpio5_6_one),
        .gpio5_6_out(gpio5_6_out),
        .gpio5_6_pad_a_esd_0_h(gpio5_6_pad_a_esd_0_h),
        .gpio5_6_pad_a_esd_1_h(gpio5_6_pad_a_esd_1_h),
        .gpio5_6_pad_a_noesd_h(gpio5_6_pad_a_noesd_h),
        .gpio5_6_slow(gpio5_6_slow),
        .gpio5_6_tie_hi_esd(gpio5_6_tie_hi_esd),
        .gpio5_6_tie_lo_esd(gpio5_6_tie_lo_esd),
        .gpio5_6_vtrip_sel(gpio5_6_vtrip_sel),
        .gpio5_6_zero(gpio5_6_zero),
        .gpio5_7_analog_en(gpio5_7_analog_en),
        .gpio5_7_analog_pol(gpio5_7_analog_pol),
        .gpio5_7_analog_sel(gpio5_7_analog_sel),
        .gpio5_7_dm(gpio5_7_dm),
        .gpio5_7_enable_h(gpio5_7_enable_h),
        .gpio5_7_enable_inp_h(gpio5_7_enable_inp_h),
        .gpio5_7_enable_vdda_h(gpio5_7_enable_vdda_h),
        .gpio5_7_enable_vddio(gpio5_7_enable_vddio),
        .gpio5_7_enable_vswitch_h(gpio5_7_enable_vswitch_h),
        .gpio5_7_hld_h_n(gpio5_7_hld_h_n),
        .gpio5_7_hld_ovr(gpio5_7_hld_ovr),
        .gpio5_7_ib_mode_sel(gpio5_7_ib_mode_sel),
        .gpio5_7_in(gpio5_7_in),
        .gpio5_7_in_h(gpio5_7_in_h),
        .gpio5_7_inp_dis(gpio5_7_inp_dis),
        .gpio5_7_oe_n(gpio5_7_oe_n),
        .gpio5_7_one(gpio5_7_one),
        .gpio5_7_out(gpio5_7_out),
        .gpio5_7_pad_a_esd_0_h(gpio5_7_pad_a_esd_0_h),
        .gpio5_7_pad_a_esd_1_h(gpio5_7_pad_a_esd_1_h),
        .gpio5_7_pad_a_noesd_h(gpio5_7_pad_a_noesd_h),
        .gpio5_7_slow(gpio5_7_slow),
        .gpio5_7_tie_hi_esd(gpio5_7_tie_hi_esd),
        .gpio5_7_tie_lo_esd(gpio5_7_tie_lo_esd),
        .gpio5_7_vtrip_sel(gpio5_7_vtrip_sel),
        .gpio5_7_zero(gpio5_7_zero),
        .gpio6_0_analog_en(gpio6_0_analog_en),
        .gpio6_0_analog_pol(gpio6_0_analog_pol),
        .gpio6_0_analog_sel(gpio6_0_analog_sel),
        .gpio6_0_dm(gpio6_0_dm),
        .gpio6_0_enable_h(gpio6_0_enable_h),
        .gpio6_0_enable_inp_h(gpio6_0_enable_inp_h),
        .gpio6_0_enable_vdda_h(gpio6_0_enable_vdda_h),
        .gpio6_0_enable_vddio(gpio6_0_enable_vddio),
        .gpio6_0_enable_vswitch_h(gpio6_0_enable_vswitch_h),
        .gpio6_0_hld_h_n(gpio6_0_hld_h_n),
        .gpio6_0_hld_ovr(gpio6_0_hld_ovr),
        .gpio6_0_hys_trim(gpio6_0_hys_trim),
        .gpio6_0_ib_mode_sel(gpio6_0_ib_mode_sel),
        .gpio6_0_in(gpio6_0_in),
        .gpio6_0_in_h(gpio6_0_in_h),
        .gpio6_0_inp_dis(gpio6_0_inp_dis),
        .gpio6_0_oe_n(gpio6_0_oe_n),
        .gpio6_0_one(gpio6_0_one),
        .gpio6_0_out(gpio6_0_out),
        .gpio6_0_pad_a_esd_0_h(gpio6_0_pad_a_esd_0_h),
        .gpio6_0_pad_a_esd_1_h(gpio6_0_pad_a_esd_1_h),
        .gpio6_0_pad_a_noesd_h(gpio6_0_pad_a_noesd_h),
        .gpio6_0_slew_ctl(gpio6_0_slew_ctl),
        .gpio6_0_slow(gpio6_0_slow),
        .gpio6_0_tie_hi_esd(gpio6_0_tie_hi_esd),
        .gpio6_0_tie_lo_esd(gpio6_0_tie_lo_esd),
        .gpio6_0_vtrip_sel(gpio6_0_vtrip_sel),
        .gpio6_0_zero(gpio6_0_zero),
        .gpio6_1_analog_en(gpio6_1_analog_en),
        .gpio6_1_analog_pol(gpio6_1_analog_pol),
        .gpio6_1_analog_sel(gpio6_1_analog_sel),
        .gpio6_1_dm(gpio6_1_dm),
        .gpio6_1_enable_h(gpio6_1_enable_h),
        .gpio6_1_enable_inp_h(gpio6_1_enable_inp_h),
        .gpio6_1_enable_vdda_h(gpio6_1_enable_vdda_h),
        .gpio6_1_enable_vddio(gpio6_1_enable_vddio),
        .gpio6_1_enable_vswitch_h(gpio6_1_enable_vswitch_h),
        .gpio6_1_hld_h_n(gpio6_1_hld_h_n),
        .gpio6_1_hld_ovr(gpio6_1_hld_ovr),
        .gpio6_1_hys_trim(gpio6_1_hys_trim),
        .gpio6_1_ib_mode_sel(gpio6_1_ib_mode_sel),
        .gpio6_1_in(gpio6_1_in),
        .gpio6_1_in_h(gpio6_1_in_h),
        .gpio6_1_inp_dis(gpio6_1_inp_dis),
        .gpio6_1_oe_n(gpio6_1_oe_n),
        .gpio6_1_one(gpio6_1_one),
        .gpio6_1_out(gpio6_1_out),
        .gpio6_1_pad_a_esd_0_h(gpio6_1_pad_a_esd_0_h),
        .gpio6_1_pad_a_esd_1_h(gpio6_1_pad_a_esd_1_h),
        .gpio6_1_pad_a_noesd_h(gpio6_1_pad_a_noesd_h),
        .gpio6_1_slew_ctl(gpio6_1_slew_ctl),
        .gpio6_1_slow(gpio6_1_slow),
        .gpio6_1_tie_hi_esd(gpio6_1_tie_hi_esd),
        .gpio6_1_tie_lo_esd(gpio6_1_tie_lo_esd),
        .gpio6_1_vtrip_sel(gpio6_1_vtrip_sel),
        .gpio6_1_zero(gpio6_1_zero),
        .gpio6_2_analog_en(gpio6_2_analog_en),
        .gpio6_2_analog_pol(gpio6_2_analog_pol),
        .gpio6_2_analog_sel(gpio6_2_analog_sel),
        .gpio6_2_dm(gpio6_2_dm),
        .gpio6_2_enable_h(gpio6_2_enable_h),
        .gpio6_2_enable_inp_h(gpio6_2_enable_inp_h),
        .gpio6_2_enable_vdda_h(gpio6_2_enable_vdda_h),
        .gpio6_2_enable_vddio(gpio6_2_enable_vddio),
        .gpio6_2_enable_vswitch_h(gpio6_2_enable_vswitch_h),
        .gpio6_2_hld_h_n(gpio6_2_hld_h_n),
        .gpio6_2_hld_ovr(gpio6_2_hld_ovr),
        .gpio6_2_hys_trim(gpio6_2_hys_trim),
        .gpio6_2_ib_mode_sel(gpio6_2_ib_mode_sel),
        .gpio6_2_in(gpio6_2_in),
        .gpio6_2_in_h(gpio6_2_in_h),
        .gpio6_2_inp_dis(gpio6_2_inp_dis),
        .gpio6_2_oe_n(gpio6_2_oe_n),
        .gpio6_2_one(gpio6_2_one),
        .gpio6_2_out(gpio6_2_out),
        .gpio6_2_pad_a_esd_0_h(gpio6_2_pad_a_esd_0_h),
        .gpio6_2_pad_a_esd_1_h(gpio6_2_pad_a_esd_1_h),
        .gpio6_2_pad_a_noesd_h(gpio6_2_pad_a_noesd_h),
        .gpio6_2_slew_ctl(gpio6_2_slew_ctl),
        .gpio6_2_slow(gpio6_2_slow),
        .gpio6_2_tie_hi_esd(gpio6_2_tie_hi_esd),
        .gpio6_2_tie_lo_esd(gpio6_2_tie_lo_esd),
        .gpio6_2_vtrip_sel(gpio6_2_vtrip_sel),
        .gpio6_2_zero(gpio6_2_zero),
        .gpio6_3_analog_en(gpio6_3_analog_en),
        .gpio6_3_analog_pol(gpio6_3_analog_pol),
        .gpio6_3_analog_sel(gpio6_3_analog_sel),
        .gpio6_3_dm(gpio6_3_dm),
        .gpio6_3_enable_h(gpio6_3_enable_h),
        .gpio6_3_enable_inp_h(gpio6_3_enable_inp_h),
        .gpio6_3_enable_vdda_h(gpio6_3_enable_vdda_h),
        .gpio6_3_enable_vddio(gpio6_3_enable_vddio),
        .gpio6_3_enable_vswitch_h(gpio6_3_enable_vswitch_h),
        .gpio6_3_hld_h_n(gpio6_3_hld_h_n),
        .gpio6_3_hld_ovr(gpio6_3_hld_ovr),
        .gpio6_3_hys_trim(gpio6_3_hys_trim),
        .gpio6_3_ib_mode_sel(gpio6_3_ib_mode_sel),
        .gpio6_3_in(gpio6_3_in),
        .gpio6_3_in_h(gpio6_3_in_h),
        .gpio6_3_inp_dis(gpio6_3_inp_dis),
        .gpio6_3_oe_n(gpio6_3_oe_n),
        .gpio6_3_one(gpio6_3_one),
        .gpio6_3_out(gpio6_3_out),
        .gpio6_3_pad_a_esd_0_h(gpio6_3_pad_a_esd_0_h),
        .gpio6_3_pad_a_esd_1_h(gpio6_3_pad_a_esd_1_h),
        .gpio6_3_pad_a_noesd_h(gpio6_3_pad_a_noesd_h),
        .gpio6_3_slew_ctl(gpio6_3_slew_ctl),
        .gpio6_3_slow(gpio6_3_slow),
        .gpio6_3_tie_hi_esd(gpio6_3_tie_hi_esd),
        .gpio6_3_tie_lo_esd(gpio6_3_tie_lo_esd),
        .gpio6_3_vtrip_sel(gpio6_3_vtrip_sel),
        .gpio6_3_zero(gpio6_3_zero),
        .gpio6_4_analog_en(gpio6_4_analog_en),
        .gpio6_4_analog_pol(gpio6_4_analog_pol),
        .gpio6_4_analog_sel(gpio6_4_analog_sel),
        .gpio6_4_dm(gpio6_4_dm),
        .gpio6_4_enable_h(gpio6_4_enable_h),
        .gpio6_4_enable_inp_h(gpio6_4_enable_inp_h),
        .gpio6_4_enable_vdda_h(gpio6_4_enable_vdda_h),
        .gpio6_4_enable_vddio(gpio6_4_enable_vddio),
        .gpio6_4_enable_vswitch_h(gpio6_4_enable_vswitch_h),
        .gpio6_4_hld_h_n(gpio6_4_hld_h_n),
        .gpio6_4_hld_ovr(gpio6_4_hld_ovr),
        .gpio6_4_hys_trim(gpio6_4_hys_trim),
        .gpio6_4_ib_mode_sel(gpio6_4_ib_mode_sel),
        .gpio6_4_in(gpio6_4_in),
        .gpio6_4_in_h(gpio6_4_in_h),
        .gpio6_4_inp_dis(gpio6_4_inp_dis),
        .gpio6_4_oe_n(gpio6_4_oe_n),
        .gpio6_4_one(gpio6_4_one),
        .gpio6_4_out(gpio6_4_out),
        .gpio6_4_pad_a_esd_0_h(gpio6_4_pad_a_esd_0_h),
        .gpio6_4_pad_a_esd_1_h(gpio6_4_pad_a_esd_1_h),
        .gpio6_4_pad_a_noesd_h(gpio6_4_pad_a_noesd_h),
        .gpio6_4_slew_ctl(gpio6_4_slew_ctl),
        .gpio6_4_slow(gpio6_4_slow),
        .gpio6_4_tie_hi_esd(gpio6_4_tie_hi_esd),
        .gpio6_4_tie_lo_esd(gpio6_4_tie_lo_esd),
        .gpio6_4_vtrip_sel(gpio6_4_vtrip_sel),
        .gpio6_4_zero(gpio6_4_zero),
        .gpio6_5_analog_en(gpio6_5_analog_en),
        .gpio6_5_analog_pol(gpio6_5_analog_pol),
        .gpio6_5_analog_sel(gpio6_5_analog_sel),
        .gpio6_5_dm(gpio6_5_dm),
        .gpio6_5_enable_h(gpio6_5_enable_h),
        .gpio6_5_enable_inp_h(gpio6_5_enable_inp_h),
        .gpio6_5_enable_vdda_h(gpio6_5_enable_vdda_h),
        .gpio6_5_enable_vddio(gpio6_5_enable_vddio),
        .gpio6_5_enable_vswitch_h(gpio6_5_enable_vswitch_h),
        .gpio6_5_hld_h_n(gpio6_5_hld_h_n),
        .gpio6_5_hld_ovr(gpio6_5_hld_ovr),
        .gpio6_5_hys_trim(gpio6_5_hys_trim),
        .gpio6_5_ib_mode_sel(gpio6_5_ib_mode_sel),
        .gpio6_5_in(gpio6_5_in),
        .gpio6_5_in_h(gpio6_5_in_h),
        .gpio6_5_inp_dis(gpio6_5_inp_dis),
        .gpio6_5_oe_n(gpio6_5_oe_n),
        .gpio6_5_one(gpio6_5_one),
        .gpio6_5_out(gpio6_5_out),
        .gpio6_5_pad_a_esd_0_h(gpio6_5_pad_a_esd_0_h),
        .gpio6_5_pad_a_esd_1_h(gpio6_5_pad_a_esd_1_h),
        .gpio6_5_pad_a_noesd_h(gpio6_5_pad_a_noesd_h),
        .gpio6_5_slew_ctl(gpio6_5_slew_ctl),
        .gpio6_5_slow(gpio6_5_slow),
        .gpio6_5_tie_hi_esd(gpio6_5_tie_hi_esd),
        .gpio6_5_tie_lo_esd(gpio6_5_tie_lo_esd),
        .gpio6_5_vtrip_sel(gpio6_5_vtrip_sel),
        .gpio6_5_zero(gpio6_5_zero),
        .gpio6_6_analog_en(gpio6_6_analog_en),
        .gpio6_6_analog_pol(gpio6_6_analog_pol),
        .gpio6_6_analog_sel(gpio6_6_analog_sel),
        .gpio6_6_dm(gpio6_6_dm),
        .gpio6_6_enable_h(gpio6_6_enable_h),
        .gpio6_6_enable_inp_h(gpio6_6_enable_inp_h),
        .gpio6_6_enable_vdda_h(gpio6_6_enable_vdda_h),
        .gpio6_6_enable_vddio(gpio6_6_enable_vddio),
        .gpio6_6_enable_vswitch_h(gpio6_6_enable_vswitch_h),
        .gpio6_6_hld_h_n(gpio6_6_hld_h_n),
        .gpio6_6_hld_ovr(gpio6_6_hld_ovr),
        .gpio6_6_hys_trim(gpio6_6_hys_trim),
        .gpio6_6_ib_mode_sel(gpio6_6_ib_mode_sel),
        .gpio6_6_in(gpio6_6_in),
        .gpio6_6_in_h(gpio6_6_in_h),
        .gpio6_6_inp_dis(gpio6_6_inp_dis),
        .gpio6_6_oe_n(gpio6_6_oe_n),
        .gpio6_6_one(gpio6_6_one),
        .gpio6_6_out(gpio6_6_out),
        .gpio6_6_pad_a_esd_0_h(gpio6_6_pad_a_esd_0_h),
        .gpio6_6_pad_a_esd_1_h(gpio6_6_pad_a_esd_1_h),
        .gpio6_6_pad_a_noesd_h(gpio6_6_pad_a_noesd_h),
        .gpio6_6_slew_ctl(gpio6_6_slew_ctl),
        .gpio6_6_slow(gpio6_6_slow),
        .gpio6_6_tie_hi_esd(gpio6_6_tie_hi_esd),
        .gpio6_6_tie_lo_esd(gpio6_6_tie_lo_esd),
        .gpio6_6_vtrip_sel(gpio6_6_vtrip_sel),
        .gpio6_6_zero(gpio6_6_zero),
        .gpio6_7_analog_en(gpio6_7_analog_en),
        .gpio6_7_analog_pol(gpio6_7_analog_pol),
        .gpio6_7_analog_sel(gpio6_7_analog_sel),
        .gpio6_7_dm(gpio6_7_dm),
        .gpio6_7_enable_h(gpio6_7_enable_h),
        .gpio6_7_enable_inp_h(gpio6_7_enable_inp_h),
        .gpio6_7_enable_vdda_h(gpio6_7_enable_vdda_h),
        .gpio6_7_enable_vddio(gpio6_7_enable_vddio),
        .gpio6_7_enable_vswitch_h(gpio6_7_enable_vswitch_h),
        .gpio6_7_hld_h_n(gpio6_7_hld_h_n),
        .gpio6_7_hld_ovr(gpio6_7_hld_ovr),
        .gpio6_7_hys_trim(gpio6_7_hys_trim),
        .gpio6_7_ib_mode_sel(gpio6_7_ib_mode_sel),
        .gpio6_7_in(gpio6_7_in),
        .gpio6_7_in_h(gpio6_7_in_h),
        .gpio6_7_inp_dis(gpio6_7_inp_dis),
        .gpio6_7_oe_n(gpio6_7_oe_n),
        .gpio6_7_one(gpio6_7_one),
        .gpio6_7_out(gpio6_7_out),
        .gpio6_7_pad_a_esd_0_h(gpio6_7_pad_a_esd_0_h),
        .gpio6_7_pad_a_esd_1_h(gpio6_7_pad_a_esd_1_h),
        .gpio6_7_pad_a_noesd_h(gpio6_7_pad_a_noesd_h),
        .gpio6_7_slew_ctl(gpio6_7_slew_ctl),
        .gpio6_7_slow(gpio6_7_slow),
        .gpio6_7_tie_hi_esd(gpio6_7_tie_hi_esd),
        .gpio6_7_tie_lo_esd(gpio6_7_tie_lo_esd),
        .gpio6_7_vtrip_sel(gpio6_7_vtrip_sel),
        .gpio6_7_zero(gpio6_7_zero),
        .gpio7_0_analog_en(gpio7_0_analog_en),
        .gpio7_0_analog_pol(gpio7_0_analog_pol),
        .gpio7_0_analog_sel(gpio7_0_analog_sel),
        .gpio7_0_dm(gpio7_0_dm),
        .gpio7_0_enable_h(gpio7_0_enable_h),
        .gpio7_0_enable_inp_h(gpio7_0_enable_inp_h),
        .gpio7_0_enable_vdda_h(gpio7_0_enable_vdda_h),
        .gpio7_0_enable_vddio(gpio7_0_enable_vddio),
        .gpio7_0_enable_vswitch_h(gpio7_0_enable_vswitch_h),
        .gpio7_0_hld_h_n(gpio7_0_hld_h_n),
        .gpio7_0_hld_ovr(gpio7_0_hld_ovr),
        .gpio7_0_ib_mode_sel(gpio7_0_ib_mode_sel),
        .gpio7_0_in(gpio7_0_in),
        .gpio7_0_in_h(gpio7_0_in_h),
        .gpio7_0_inp_dis(gpio7_0_inp_dis),
        .gpio7_0_oe_n(gpio7_0_oe_n),
        .gpio7_0_one(gpio7_0_one),
        .gpio7_0_out(gpio7_0_out),
        .gpio7_0_pad_a_esd_0_h(gpio7_0_pad_a_esd_0_h),
        .gpio7_0_pad_a_esd_1_h(gpio7_0_pad_a_esd_1_h),
        .gpio7_0_pad_a_noesd_h(gpio7_0_pad_a_noesd_h),
        .gpio7_0_slow(gpio7_0_slow),
        .gpio7_0_tie_hi_esd(gpio7_0_tie_hi_esd),
        .gpio7_0_tie_lo_esd(gpio7_0_tie_lo_esd),
        .gpio7_0_vtrip_sel(gpio7_0_vtrip_sel),
        .gpio7_0_zero(gpio7_0_zero),
        .gpio7_1_analog_en(gpio7_1_analog_en),
        .gpio7_1_analog_pol(gpio7_1_analog_pol),
        .gpio7_1_analog_sel(gpio7_1_analog_sel),
        .gpio7_1_dm(gpio7_1_dm),
        .gpio7_1_enable_h(gpio7_1_enable_h),
        .gpio7_1_enable_inp_h(gpio7_1_enable_inp_h),
        .gpio7_1_enable_vdda_h(gpio7_1_enable_vdda_h),
        .gpio7_1_enable_vddio(gpio7_1_enable_vddio),
        .gpio7_1_enable_vswitch_h(gpio7_1_enable_vswitch_h),
        .gpio7_1_hld_h_n(gpio7_1_hld_h_n),
        .gpio7_1_hld_ovr(gpio7_1_hld_ovr),
        .gpio7_1_ib_mode_sel(gpio7_1_ib_mode_sel),
        .gpio7_1_in(gpio7_1_in),
        .gpio7_1_in_h(gpio7_1_in_h),
        .gpio7_1_inp_dis(gpio7_1_inp_dis),
        .gpio7_1_oe_n(gpio7_1_oe_n),
        .gpio7_1_one(gpio7_1_one),
        .gpio7_1_out(gpio7_1_out),
        .gpio7_1_pad_a_esd_0_h(gpio7_1_pad_a_esd_0_h),
        .gpio7_1_pad_a_esd_1_h(gpio7_1_pad_a_esd_1_h),
        .gpio7_1_pad_a_noesd_h(gpio7_1_pad_a_noesd_h),
        .gpio7_1_slow(gpio7_1_slow),
        .gpio7_1_tie_hi_esd(gpio7_1_tie_hi_esd),
        .gpio7_1_tie_lo_esd(gpio7_1_tie_lo_esd),
        .gpio7_1_vtrip_sel(gpio7_1_vtrip_sel),
        .gpio7_1_zero(gpio7_1_zero),
        .gpio7_2_analog_en(gpio7_2_analog_en),
        .gpio7_2_analog_pol(gpio7_2_analog_pol),
        .gpio7_2_analog_sel(gpio7_2_analog_sel),
        .gpio7_2_dm(gpio7_2_dm),
        .gpio7_2_enable_h(gpio7_2_enable_h),
        .gpio7_2_enable_inp_h(gpio7_2_enable_inp_h),
        .gpio7_2_enable_vdda_h(gpio7_2_enable_vdda_h),
        .gpio7_2_enable_vddio(gpio7_2_enable_vddio),
        .gpio7_2_enable_vswitch_h(gpio7_2_enable_vswitch_h),
        .gpio7_2_hld_h_n(gpio7_2_hld_h_n),
        .gpio7_2_hld_ovr(gpio7_2_hld_ovr),
        .gpio7_2_ib_mode_sel(gpio7_2_ib_mode_sel),
        .gpio7_2_in(gpio7_2_in),
        .gpio7_2_in_h(gpio7_2_in_h),
        .gpio7_2_inp_dis(gpio7_2_inp_dis),
        .gpio7_2_oe_n(gpio7_2_oe_n),
        .gpio7_2_one(gpio7_2_one),
        .gpio7_2_out(gpio7_2_out),
        .gpio7_2_pad_a_esd_0_h(gpio7_2_pad_a_esd_0_h),
        .gpio7_2_pad_a_esd_1_h(gpio7_2_pad_a_esd_1_h),
        .gpio7_2_pad_a_noesd_h(gpio7_2_pad_a_noesd_h),
        .gpio7_2_slow(gpio7_2_slow),
        .gpio7_2_tie_hi_esd(gpio7_2_tie_hi_esd),
        .gpio7_2_tie_lo_esd(gpio7_2_tie_lo_esd),
        .gpio7_2_vtrip_sel(gpio7_2_vtrip_sel),
        .gpio7_2_zero(gpio7_2_zero),
        .gpio7_3_analog_en(gpio7_3_analog_en),
        .gpio7_3_analog_pol(gpio7_3_analog_pol),
        .gpio7_3_analog_sel(gpio7_3_analog_sel),
        .gpio7_3_dm(gpio7_3_dm),
        .gpio7_3_enable_h(gpio7_3_enable_h),
        .gpio7_3_enable_inp_h(gpio7_3_enable_inp_h),
        .gpio7_3_enable_vdda_h(gpio7_3_enable_vdda_h),
        .gpio7_3_enable_vddio(gpio7_3_enable_vddio),
        .gpio7_3_enable_vswitch_h(gpio7_3_enable_vswitch_h),
        .gpio7_3_hld_h_n(gpio7_3_hld_h_n),
        .gpio7_3_hld_ovr(gpio7_3_hld_ovr),
        .gpio7_3_ib_mode_sel(gpio7_3_ib_mode_sel),
        .gpio7_3_in(gpio7_3_in),
        .gpio7_3_in_h(gpio7_3_in_h),
        .gpio7_3_inp_dis(gpio7_3_inp_dis),
        .gpio7_3_oe_n(gpio7_3_oe_n),
        .gpio7_3_one(gpio7_3_one),
        .gpio7_3_out(gpio7_3_out),
        .gpio7_3_pad_a_esd_0_h(gpio7_3_pad_a_esd_0_h),
        .gpio7_3_pad_a_esd_1_h(gpio7_3_pad_a_esd_1_h),
        .gpio7_3_pad_a_noesd_h(gpio7_3_pad_a_noesd_h),
        .gpio7_3_slow(gpio7_3_slow),
        .gpio7_3_tie_hi_esd(gpio7_3_tie_hi_esd),
        .gpio7_3_tie_lo_esd(gpio7_3_tie_lo_esd),
        .gpio7_3_vtrip_sel(gpio7_3_vtrip_sel),
        .gpio7_3_zero(gpio7_3_zero),
        .gpio7_4_analog_en(gpio7_4_analog_en),
        .gpio7_4_analog_pol(gpio7_4_analog_pol),
        .gpio7_4_analog_sel(gpio7_4_analog_sel),
        .gpio7_4_dm(gpio7_4_dm),
        .gpio7_4_enable_h(gpio7_4_enable_h),
        .gpio7_4_enable_inp_h(gpio7_4_enable_inp_h),
        .gpio7_4_enable_vdda_h(gpio7_4_enable_vdda_h),
        .gpio7_4_enable_vddio(gpio7_4_enable_vddio),
        .gpio7_4_enable_vswitch_h(gpio7_4_enable_vswitch_h),
        .gpio7_4_hld_h_n(gpio7_4_hld_h_n),
        .gpio7_4_hld_ovr(gpio7_4_hld_ovr),
        .gpio7_4_ib_mode_sel(gpio7_4_ib_mode_sel),
        .gpio7_4_in(gpio7_4_in),
        .gpio7_4_in_h(gpio7_4_in_h),
        .gpio7_4_inp_dis(gpio7_4_inp_dis),
        .gpio7_4_oe_n(gpio7_4_oe_n),
        .gpio7_4_one(gpio7_4_one),
        .gpio7_4_out(gpio7_4_out),
        .gpio7_4_pad_a_esd_0_h(gpio7_4_pad_a_esd_0_h),
        .gpio7_4_pad_a_esd_1_h(gpio7_4_pad_a_esd_1_h),
        .gpio7_4_pad_a_noesd_h(gpio7_4_pad_a_noesd_h),
        .gpio7_4_slow(gpio7_4_slow),
        .gpio7_4_tie_hi_esd(gpio7_4_tie_hi_esd),
        .gpio7_4_tie_lo_esd(gpio7_4_tie_lo_esd),
        .gpio7_4_vtrip_sel(gpio7_4_vtrip_sel),
        .gpio7_4_zero(gpio7_4_zero),
        .gpio7_5_analog_en(gpio7_5_analog_en),
        .gpio7_5_analog_pol(gpio7_5_analog_pol),
        .gpio7_5_analog_sel(gpio7_5_analog_sel),
        .gpio7_5_dm(gpio7_5_dm),
        .gpio7_5_enable_h(gpio7_5_enable_h),
        .gpio7_5_enable_inp_h(gpio7_5_enable_inp_h),
        .gpio7_5_enable_vdda_h(gpio7_5_enable_vdda_h),
        .gpio7_5_enable_vddio(gpio7_5_enable_vddio),
        .gpio7_5_enable_vswitch_h(gpio7_5_enable_vswitch_h),
        .gpio7_5_hld_h_n(gpio7_5_hld_h_n),
        .gpio7_5_hld_ovr(gpio7_5_hld_ovr),
        .gpio7_5_ib_mode_sel(gpio7_5_ib_mode_sel),
        .gpio7_5_in(gpio7_5_in),
        .gpio7_5_in_h(gpio7_5_in_h),
        .gpio7_5_inp_dis(gpio7_5_inp_dis),
        .gpio7_5_oe_n(gpio7_5_oe_n),
        .gpio7_5_one(gpio7_5_one),
        .gpio7_5_out(gpio7_5_out),
        .gpio7_5_pad_a_esd_0_h(gpio7_5_pad_a_esd_0_h),
        .gpio7_5_pad_a_esd_1_h(gpio7_5_pad_a_esd_1_h),
        .gpio7_5_pad_a_noesd_h(gpio7_5_pad_a_noesd_h),
        .gpio7_5_slow(gpio7_5_slow),
        .gpio7_5_tie_hi_esd(gpio7_5_tie_hi_esd),
        .gpio7_5_tie_lo_esd(gpio7_5_tie_lo_esd),
        .gpio7_5_vtrip_sel(gpio7_5_vtrip_sel),
        .gpio7_5_zero(gpio7_5_zero),
        .gpio7_6_analog_en(gpio7_6_analog_en),
        .gpio7_6_analog_pol(gpio7_6_analog_pol),
        .gpio7_6_analog_sel(gpio7_6_analog_sel),
        .gpio7_6_dm(gpio7_6_dm),
        .gpio7_6_enable_h(gpio7_6_enable_h),
        .gpio7_6_enable_inp_h(gpio7_6_enable_inp_h),
        .gpio7_6_enable_vdda_h(gpio7_6_enable_vdda_h),
        .gpio7_6_enable_vddio(gpio7_6_enable_vddio),
        .gpio7_6_enable_vswitch_h(gpio7_6_enable_vswitch_h),
        .gpio7_6_hld_h_n(gpio7_6_hld_h_n),
        .gpio7_6_hld_ovr(gpio7_6_hld_ovr),
        .gpio7_6_ib_mode_sel(gpio7_6_ib_mode_sel),
        .gpio7_6_in(gpio7_6_in),
        .gpio7_6_in_h(gpio7_6_in_h),
        .gpio7_6_inp_dis(gpio7_6_inp_dis),
        .gpio7_6_oe_n(gpio7_6_oe_n),
        .gpio7_6_one(gpio7_6_one),
        .gpio7_6_out(gpio7_6_out),
        .gpio7_6_pad_a_esd_0_h(gpio7_6_pad_a_esd_0_h),
        .gpio7_6_pad_a_esd_1_h(gpio7_6_pad_a_esd_1_h),
        .gpio7_6_pad_a_noesd_h(gpio7_6_pad_a_noesd_h),
        .gpio7_6_slow(gpio7_6_slow),
        .gpio7_6_tie_hi_esd(gpio7_6_tie_hi_esd),
        .gpio7_6_tie_lo_esd(gpio7_6_tie_lo_esd),
        .gpio7_6_vtrip_sel(gpio7_6_vtrip_sel),
        .gpio7_6_zero(gpio7_6_zero),
        .gpio7_7_analog_en(gpio7_7_analog_en),
        .gpio7_7_analog_pol(gpio7_7_analog_pol),
        .gpio7_7_analog_sel(gpio7_7_analog_sel),
        .gpio7_7_dm(gpio7_7_dm),
        .gpio7_7_enable_h(gpio7_7_enable_h),
        .gpio7_7_enable_inp_h(gpio7_7_enable_inp_h),
        .gpio7_7_enable_vdda_h(gpio7_7_enable_vdda_h),
        .gpio7_7_enable_vddio(gpio7_7_enable_vddio),
        .gpio7_7_enable_vswitch_h(gpio7_7_enable_vswitch_h),
        .gpio7_7_hld_h_n(gpio7_7_hld_h_n),
        .gpio7_7_hld_ovr(gpio7_7_hld_ovr),
        .gpio7_7_ib_mode_sel(gpio7_7_ib_mode_sel),
        .gpio7_7_in(gpio7_7_in),
        .gpio7_7_in_h(gpio7_7_in_h),
        .gpio7_7_inp_dis(gpio7_7_inp_dis),
        .gpio7_7_oe_n(gpio7_7_oe_n),
        .gpio7_7_one(gpio7_7_one),
        .gpio7_7_out(gpio7_7_out),
        .gpio7_7_pad_a_esd_0_h(gpio7_7_pad_a_esd_0_h),
        .gpio7_7_pad_a_esd_1_h(gpio7_7_pad_a_esd_1_h),
        .gpio7_7_pad_a_noesd_h(gpio7_7_pad_a_noesd_h),
        .gpio7_7_slow(gpio7_7_slow),
        .gpio7_7_tie_hi_esd(gpio7_7_tie_hi_esd),
        .gpio7_7_tie_lo_esd(gpio7_7_tie_lo_esd),
        .gpio7_7_vtrip_sel(gpio7_7_vtrip_sel),
        .gpio7_7_zero(gpio7_7_zero),
        .gpio8_0_analog_en(gpio8_0_analog_en),
        .gpio8_0_analog_pol(gpio8_0_analog_pol),
        .gpio8_0_analog_sel(gpio8_0_analog_sel),
        .gpio8_0_dm(gpio8_0_dm),
        .gpio8_0_enable_h(gpio8_0_enable_h),
        .gpio8_0_enable_inp_h(gpio8_0_enable_inp_h),
        .gpio8_0_enable_vdda_h(gpio8_0_enable_vdda_h),
        .gpio8_0_enable_vddio(gpio8_0_enable_vddio),
        .gpio8_0_enable_vswitch_h(gpio8_0_enable_vswitch_h),
        .gpio8_0_hld_h_n(gpio8_0_hld_h_n),
        .gpio8_0_hld_ovr(gpio8_0_hld_ovr),
        .gpio8_0_ib_mode_sel(gpio8_0_ib_mode_sel),
        .gpio8_0_in(gpio8_0_in),
        .gpio8_0_in_h(gpio8_0_in_h),
        .gpio8_0_inp_dis(gpio8_0_inp_dis),
        .gpio8_0_oe_n(gpio8_0_oe_n),
        .gpio8_0_one(gpio8_0_one),
        .gpio8_0_out(gpio8_0_out),
        .gpio8_0_pad_a_esd_0_h(gpio8_0_pad_a_esd_0_h),
        .gpio8_0_pad_a_esd_1_h(gpio8_0_pad_a_esd_1_h),
        .gpio8_0_pad_a_noesd_h(gpio8_0_pad_a_noesd_h),
        .gpio8_0_slow(gpio8_0_slow),
        .gpio8_0_tie_hi_esd(gpio8_0_tie_hi_esd),
        .gpio8_0_tie_lo_esd(gpio8_0_tie_lo_esd),
        .gpio8_0_vtrip_sel(gpio8_0_vtrip_sel),
        .gpio8_0_zero(gpio8_0_zero),
        .gpio8_1_analog_en(gpio8_1_analog_en),
        .gpio8_1_analog_pol(gpio8_1_analog_pol),
        .gpio8_1_analog_sel(gpio8_1_analog_sel),
        .gpio8_1_dm(gpio8_1_dm),
        .gpio8_1_enable_h(gpio8_1_enable_h),
        .gpio8_1_enable_inp_h(gpio8_1_enable_inp_h),
        .gpio8_1_enable_vdda_h(gpio8_1_enable_vdda_h),
        .gpio8_1_enable_vddio(gpio8_1_enable_vddio),
        .gpio8_1_enable_vswitch_h(gpio8_1_enable_vswitch_h),
        .gpio8_1_hld_h_n(gpio8_1_hld_h_n),
        .gpio8_1_hld_ovr(gpio8_1_hld_ovr),
        .gpio8_1_ib_mode_sel(gpio8_1_ib_mode_sel),
        .gpio8_1_in(gpio8_1_in),
        .gpio8_1_in_h(gpio8_1_in_h),
        .gpio8_1_inp_dis(gpio8_1_inp_dis),
        .gpio8_1_oe_n(gpio8_1_oe_n),
        .gpio8_1_one(gpio8_1_one),
        .gpio8_1_out(gpio8_1_out),
        .gpio8_1_pad_a_esd_0_h(gpio8_1_pad_a_esd_0_h),
        .gpio8_1_pad_a_esd_1_h(gpio8_1_pad_a_esd_1_h),
        .gpio8_1_pad_a_noesd_h(gpio8_1_pad_a_noesd_h),
        .gpio8_1_slow(gpio8_1_slow),
        .gpio8_1_tie_hi_esd(gpio8_1_tie_hi_esd),
        .gpio8_1_tie_lo_esd(gpio8_1_tie_lo_esd),
        .gpio8_1_vtrip_sel(gpio8_1_vtrip_sel),
        .gpio8_1_zero(gpio8_1_zero),
        .gpio8_2_analog_en(gpio8_2_analog_en),
        .gpio8_2_analog_pol(gpio8_2_analog_pol),
        .gpio8_2_analog_sel(gpio8_2_analog_sel),
        .gpio8_2_dm(gpio8_2_dm),
        .gpio8_2_enable_h(gpio8_2_enable_h),
        .gpio8_2_enable_inp_h(gpio8_2_enable_inp_h),
        .gpio8_2_enable_vdda_h(gpio8_2_enable_vdda_h),
        .gpio8_2_enable_vddio(gpio8_2_enable_vddio),
        .gpio8_2_enable_vswitch_h(gpio8_2_enable_vswitch_h),
        .gpio8_2_hld_h_n(gpio8_2_hld_h_n),
        .gpio8_2_hld_ovr(gpio8_2_hld_ovr),
        .gpio8_2_ib_mode_sel(gpio8_2_ib_mode_sel),
        .gpio8_2_in(gpio8_2_in),
        .gpio8_2_in_h(gpio8_2_in_h),
        .gpio8_2_inp_dis(gpio8_2_inp_dis),
        .gpio8_2_oe_n(gpio8_2_oe_n),
        .gpio8_2_one(gpio8_2_one),
        .gpio8_2_out(gpio8_2_out),
        .gpio8_2_pad_a_esd_0_h(gpio8_2_pad_a_esd_0_h),
        .gpio8_2_pad_a_esd_1_h(gpio8_2_pad_a_esd_1_h),
        .gpio8_2_pad_a_noesd_h(gpio8_2_pad_a_noesd_h),
        .gpio8_2_slow(gpio8_2_slow),
        .gpio8_2_tie_hi_esd(gpio8_2_tie_hi_esd),
        .gpio8_2_tie_lo_esd(gpio8_2_tie_lo_esd),
        .gpio8_2_vtrip_sel(gpio8_2_vtrip_sel),
        .gpio8_2_zero(gpio8_2_zero),
        .gpio8_3_analog_en(gpio8_3_analog_en),
        .gpio8_3_analog_pol(gpio8_3_analog_pol),
        .gpio8_3_analog_sel(gpio8_3_analog_sel),
        .gpio8_3_dm(gpio8_3_dm),
        .gpio8_3_enable_h(gpio8_3_enable_h),
        .gpio8_3_enable_inp_h(gpio8_3_enable_inp_h),
        .gpio8_3_enable_vdda_h(gpio8_3_enable_vdda_h),
        .gpio8_3_enable_vddio(gpio8_3_enable_vddio),
        .gpio8_3_enable_vswitch_h(gpio8_3_enable_vswitch_h),
        .gpio8_3_hld_h_n(gpio8_3_hld_h_n),
        .gpio8_3_hld_ovr(gpio8_3_hld_ovr),
        .gpio8_3_ib_mode_sel(gpio8_3_ib_mode_sel),
        .gpio8_3_in(gpio8_3_in),
        .gpio8_3_in_h(gpio8_3_in_h),
        .gpio8_3_inp_dis(gpio8_3_inp_dis),
        .gpio8_3_oe_n(gpio8_3_oe_n),
        .gpio8_3_one(gpio8_3_one),
        .gpio8_3_out(gpio8_3_out),
        .gpio8_3_pad_a_esd_0_h(gpio8_3_pad_a_esd_0_h),
        .gpio8_3_pad_a_esd_1_h(gpio8_3_pad_a_esd_1_h),
        .gpio8_3_pad_a_noesd_h(gpio8_3_pad_a_noesd_h),
        .gpio8_3_slow(gpio8_3_slow),
        .gpio8_3_tie_hi_esd(gpio8_3_tie_hi_esd),
        .gpio8_3_tie_lo_esd(gpio8_3_tie_lo_esd),
        .gpio8_3_vtrip_sel(gpio8_3_vtrip_sel),
        .gpio8_3_zero(gpio8_3_zero),
        .gpio8_4_analog_en(gpio8_4_analog_en),
        .gpio8_4_analog_pol(gpio8_4_analog_pol),
        .gpio8_4_analog_sel(gpio8_4_analog_sel),
        .gpio8_4_dm(gpio8_4_dm),
        .gpio8_4_enable_h(gpio8_4_enable_h),
        .gpio8_4_enable_inp_h(gpio8_4_enable_inp_h),
        .gpio8_4_enable_vdda_h(gpio8_4_enable_vdda_h),
        .gpio8_4_enable_vddio(gpio8_4_enable_vddio),
        .gpio8_4_enable_vswitch_h(gpio8_4_enable_vswitch_h),
        .gpio8_4_hld_h_n(gpio8_4_hld_h_n),
        .gpio8_4_hld_ovr(gpio8_4_hld_ovr),
        .gpio8_4_ib_mode_sel(gpio8_4_ib_mode_sel),
        .gpio8_4_in(gpio8_4_in),
        .gpio8_4_in_h(gpio8_4_in_h),
        .gpio8_4_inp_dis(gpio8_4_inp_dis),
        .gpio8_4_oe_n(gpio8_4_oe_n),
        .gpio8_4_one(gpio8_4_one),
        .gpio8_4_out(gpio8_4_out),
        .gpio8_4_pad_a_esd_0_h(gpio8_4_pad_a_esd_0_h),
        .gpio8_4_pad_a_esd_1_h(gpio8_4_pad_a_esd_1_h),
        .gpio8_4_pad_a_noesd_h(gpio8_4_pad_a_noesd_h),
        .gpio8_4_slow(gpio8_4_slow),
        .gpio8_4_tie_hi_esd(gpio8_4_tie_hi_esd),
        .gpio8_4_tie_lo_esd(gpio8_4_tie_lo_esd),
        .gpio8_4_vtrip_sel(gpio8_4_vtrip_sel),
        .gpio8_4_zero(gpio8_4_zero),
        .gpio8_5_analog_en(gpio8_5_analog_en),
        .gpio8_5_analog_pol(gpio8_5_analog_pol),
        .gpio8_5_analog_sel(gpio8_5_analog_sel),
        .gpio8_5_dm(gpio8_5_dm),
        .gpio8_5_enable_h(gpio8_5_enable_h),
        .gpio8_5_enable_inp_h(gpio8_5_enable_inp_h),
        .gpio8_5_enable_vdda_h(gpio8_5_enable_vdda_h),
        .gpio8_5_enable_vddio(gpio8_5_enable_vddio),
        .gpio8_5_enable_vswitch_h(gpio8_5_enable_vswitch_h),
        .gpio8_5_hld_h_n(gpio8_5_hld_h_n),
        .gpio8_5_hld_ovr(gpio8_5_hld_ovr),
        .gpio8_5_ib_mode_sel(gpio8_5_ib_mode_sel),
        .gpio8_5_in(gpio8_5_in),
        .gpio8_5_in_h(gpio8_5_in_h),
        .gpio8_5_inp_dis(gpio8_5_inp_dis),
        .gpio8_5_oe_n(gpio8_5_oe_n),
        .gpio8_5_one(gpio8_5_one),
        .gpio8_5_out(gpio8_5_out),
        .gpio8_5_pad_a_esd_0_h(gpio8_5_pad_a_esd_0_h),
        .gpio8_5_pad_a_esd_1_h(gpio8_5_pad_a_esd_1_h),
        .gpio8_5_pad_a_noesd_h(gpio8_5_pad_a_noesd_h),
        .gpio8_5_slow(gpio8_5_slow),
        .gpio8_5_tie_hi_esd(gpio8_5_tie_hi_esd),
        .gpio8_5_tie_lo_esd(gpio8_5_tie_lo_esd),
        .gpio8_5_vtrip_sel(gpio8_5_vtrip_sel),
        .gpio8_5_zero(gpio8_5_zero),
        .gpio8_6_analog_en(gpio8_6_analog_en),
        .gpio8_6_analog_pol(gpio8_6_analog_pol),
        .gpio8_6_analog_sel(gpio8_6_analog_sel),
        .gpio8_6_dm(gpio8_6_dm),
        .gpio8_6_enable_h(gpio8_6_enable_h),
        .gpio8_6_enable_inp_h(gpio8_6_enable_inp_h),
        .gpio8_6_enable_vdda_h(gpio8_6_enable_vdda_h),
        .gpio8_6_enable_vddio(gpio8_6_enable_vddio),
        .gpio8_6_enable_vswitch_h(gpio8_6_enable_vswitch_h),
        .gpio8_6_hld_h_n(gpio8_6_hld_h_n),
        .gpio8_6_hld_ovr(gpio8_6_hld_ovr),
        .gpio8_6_ib_mode_sel(gpio8_6_ib_mode_sel),
        .gpio8_6_in(gpio8_6_in),
        .gpio8_6_in_h(gpio8_6_in_h),
        .gpio8_6_inp_dis(gpio8_6_inp_dis),
        .gpio8_6_oe_n(gpio8_6_oe_n),
        .gpio8_6_one(gpio8_6_one),
        .gpio8_6_out(gpio8_6_out),
        .gpio8_6_pad_a_esd_0_h(gpio8_6_pad_a_esd_0_h),
        .gpio8_6_pad_a_esd_1_h(gpio8_6_pad_a_esd_1_h),
        .gpio8_6_pad_a_noesd_h(gpio8_6_pad_a_noesd_h),
        .gpio8_6_slow(gpio8_6_slow),
        .gpio8_6_tie_hi_esd(gpio8_6_tie_hi_esd),
        .gpio8_6_tie_lo_esd(gpio8_6_tie_lo_esd),
        .gpio8_6_vtrip_sel(gpio8_6_vtrip_sel),
        .gpio8_6_zero(gpio8_6_zero),
        .gpio8_7_analog_en(gpio8_7_analog_en),
        .gpio8_7_analog_pol(gpio8_7_analog_pol),
        .gpio8_7_analog_sel(gpio8_7_analog_sel),
        .gpio8_7_dm(gpio8_7_dm),
        .gpio8_7_enable_h(gpio8_7_enable_h),
        .gpio8_7_enable_inp_h(gpio8_7_enable_inp_h),
        .gpio8_7_enable_vdda_h(gpio8_7_enable_vdda_h),
        .gpio8_7_enable_vddio(gpio8_7_enable_vddio),
        .gpio8_7_enable_vswitch_h(gpio8_7_enable_vswitch_h),
        .gpio8_7_hld_h_n(gpio8_7_hld_h_n),
        .gpio8_7_hld_ovr(gpio8_7_hld_ovr),
        .gpio8_7_ib_mode_sel(gpio8_7_ib_mode_sel),
        .gpio8_7_in(gpio8_7_in),
        .gpio8_7_in_h(gpio8_7_in_h),
        .gpio8_7_inp_dis(gpio8_7_inp_dis),
        .gpio8_7_oe_n(gpio8_7_oe_n),
        .gpio8_7_one(gpio8_7_one),
        .gpio8_7_out(gpio8_7_out),
        .gpio8_7_pad_a_esd_0_h(gpio8_7_pad_a_esd_0_h),
        .gpio8_7_pad_a_esd_1_h(gpio8_7_pad_a_esd_1_h),
        .gpio8_7_pad_a_noesd_h(gpio8_7_pad_a_noesd_h),
        .gpio8_7_slow(gpio8_7_slow),
        .gpio8_7_tie_hi_esd(gpio8_7_tie_hi_esd),
        .gpio8_7_tie_lo_esd(gpio8_7_tie_lo_esd),
        .gpio8_7_vtrip_sel(gpio8_7_vtrip_sel),
        .gpio8_7_zero(gpio8_7_zero),
        .muxsplit_ne_enable_vdda_h(muxsplit_ne_enable_vdda_h),
        .muxsplit_ne_hld_vdda_h_n(muxsplit_ne_hld_vdda_h_n),
        .muxsplit_ne_switch_aa_s0(muxsplit_ne_switch_aa_s0),
        .muxsplit_ne_switch_aa_sl(muxsplit_ne_switch_aa_sl),
        .muxsplit_ne_switch_aa_sr(muxsplit_ne_switch_aa_sr),
        .muxsplit_ne_switch_bb_s0(muxsplit_ne_switch_bb_s0),
        .muxsplit_ne_switch_bb_sl(muxsplit_ne_switch_bb_sl),
        .muxsplit_ne_switch_bb_sr(muxsplit_ne_switch_bb_sr),
        .muxsplit_nw_enable_vdda_h(muxsplit_nw_enable_vdda_h),
        .muxsplit_nw_hld_vdda_h_n(muxsplit_nw_hld_vdda_h_n),
        .muxsplit_nw_switch_aa_s0(muxsplit_nw_switch_aa_s0),
        .muxsplit_nw_switch_aa_sl(muxsplit_nw_switch_aa_sl),
        .muxsplit_nw_switch_aa_sr(muxsplit_nw_switch_aa_sr),
        .muxsplit_nw_switch_bb_s0(muxsplit_nw_switch_bb_s0),
        .muxsplit_nw_switch_bb_sl(muxsplit_nw_switch_bb_sl),
        .muxsplit_nw_switch_bb_sr(muxsplit_nw_switch_bb_sr),
        .muxsplit_se_enable_vdda_h(muxsplit_se_enable_vdda_h),
        .muxsplit_se_hld_vdda_h_n(muxsplit_se_hld_vdda_h_n),
        .muxsplit_se_switch_aa_s0(muxsplit_se_switch_aa_s0),
        .muxsplit_se_switch_aa_sl(muxsplit_se_switch_aa_sl),
        .muxsplit_se_switch_aa_sr(muxsplit_se_switch_aa_sr),
        .muxsplit_se_switch_bb_s0(muxsplit_se_switch_bb_s0),
        .muxsplit_se_switch_bb_sl(muxsplit_se_switch_bb_sl),
        .muxsplit_se_switch_bb_sr(muxsplit_se_switch_bb_sr),
        .muxsplit_sw_enable_vdda_h(muxsplit_sw_enable_vdda_h),
        .muxsplit_sw_hld_vdda_h_n(muxsplit_sw_hld_vdda_h_n),
        .muxsplit_sw_switch_aa_s0(muxsplit_sw_switch_aa_s0),
        .muxsplit_sw_switch_aa_sl(muxsplit_sw_switch_aa_sl),
        .muxsplit_sw_switch_aa_sr(muxsplit_sw_switch_aa_sr),
        .muxsplit_sw_switch_bb_s0(muxsplit_sw_switch_bb_s0),
        .muxsplit_sw_switch_bb_sl(muxsplit_sw_switch_bb_sl),
        .muxsplit_sw_switch_bb_sr(muxsplit_sw_switch_bb_sr),
        .pwrdet_in1_vddd_hv(pwrdet_in1_vddd_hv),
        .pwrdet_in1_vddio_hv(pwrdet_in1_vddio_hv),
        .pwrdet_in2_vddd_hv(pwrdet_in2_vddd_hv),
        .pwrdet_in2_vddio_hv(pwrdet_in2_vddio_hv),
        .pwrdet_in3_vddd_hv(pwrdet_in3_vddd_hv),
        .pwrdet_in3_vddio_hv(pwrdet_in3_vddio_hv),
        .pwrdet_out1_vddd_hv(pwrdet_out1_vddd_hv),
        .pwrdet_out1_vddio_hv(pwrdet_out1_vddio_hv),
        .pwrdet_out2_vddd_hv(pwrdet_out2_vddd_hv),
        .pwrdet_out2_vddio_hv(pwrdet_out2_vddio_hv),
        .pwrdet_out3_vddd_hv(pwrdet_out3_vddd_hv),
        .pwrdet_out3_vddio_hv(pwrdet_out3_vddio_hv),
        .pwrdet_rst_por_hv_n(pwrdet_rst_por_hv_n),
        .pwrdet_tie_lo_esd(pwrdet_tie_lo_esd),
        .pwrdet_vddd_present_vddio_hv(pwrdet_vddd_present_vddio_hv),
        .pwrdet_vddio_present_vddd_hv(pwrdet_vddio_present_vddd_hv),
        .resetb_disable_pullup_h(resetb_disable_pullup_h),
        .resetb_en_vddio_sig_h(resetb_en_vddio_sig_h),
        .resetb_enable_h(resetb_enable_h),
        .resetb_enable_vddio(resetb_enable_vddio),
        .resetb_filt_in_h(resetb_filt_in_h),
        .resetb_inp_sel_h(resetb_inp_sel_h),
        .resetb_pad_a_esd_h(resetb_pad_a_esd_h),
        .resetb_pullup_h(resetb_pullup_h),
        .resetb_tie_hi_esd(resetb_tie_hi_esd),
        .resetb_tie_lo_esd(resetb_tie_lo_esd),
        .resetb_tie_weak_hi_h(resetb_tie_weak_hi_h),
        .resetb_xres_h_n(resetb_xres_h_n),
        .resetb_xres_n(resetb_xres_n),
        .select_analog_en(select_analog_en),
        .select_analog_pol(select_analog_pol),
        .select_analog_sel(select_analog_sel),
        .select_dm(select_dm),
        .select_enable_h(select_enable_h),
        .select_enable_inp_h(select_enable_inp_h),
        .select_enable_vdda_h(select_enable_vdda_h),
        .select_enable_vddio(select_enable_vddio),
        .select_enable_vswitch_h(select_enable_vswitch_h),
        .select_hld_h_n(select_hld_h_n),
        .select_hld_ovr(select_hld_ovr),
        .select_ib_mode_sel(select_ib_mode_sel),
        .select_in(select_in),
        .select_in_h(select_in_h),
        .select_inp_dis(select_inp_dis),
        .select_oe_n(select_oe_n),
        .select_one(select_one),
        .select_out(select_out),
        .select_pad_a_esd_0_h(select_pad_a_esd_0_h),
        .select_pad_a_esd_1_h(select_pad_a_esd_1_h),
        .select_pad_a_noesd_h(select_pad_a_noesd_h),
        .select_slow(select_slow),
        .select_tie_hi_esd(select_tie_hi_esd),
        .select_tie_lo_esd(select_tie_lo_esd),
        .select_vtrip_sel(select_vtrip_sel),
        .select_zero(select_zero),
        .sio_amuxbus_a(sio_amuxbus_a),
        .sio_amuxbus_b(sio_amuxbus_b),
        .sio_dft_refgen(sio_dft_refgen),
        .sio_dm0(sio_dm0),
        .sio_dm1(sio_dm1),
        .sio_enable_h(sio_enable_h),
        .sio_enable_vdda_h(sio_enable_vdda_h),
        .sio_hld_h_n(sio_hld_h_n),
        .sio_hld_h_n_refgen(sio_hld_h_n_refgen),
        .sio_hld_ovr(sio_hld_ovr),
        .sio_ibuf_sel(sio_ibuf_sel),
        .sio_ibuf_sel_refgen(sio_ibuf_sel_refgen),
        .sio_in(sio_in),
        .sio_in_h(sio_in_h),
        .sio_inp_dis(sio_inp_dis),
        .sio_oe_n(sio_oe_n),
        .sio_out(sio_out),
        .sio_pad_a_esd_0_h(sio_pad_a_esd_0_h),
        .sio_pad_a_esd_1_h(sio_pad_a_esd_1_h),
        .sio_pad_a_noesd_h(sio_pad_a_noesd_h),
        .sio_slow(sio_slow),
        .sio_tie_lo_esd(sio_tie_lo_esd),
        .sio_vinref_dft(sio_vinref_dft),
        .sio_voh_sel(sio_voh_sel),
        .sio_vohref(sio_vohref),
        .sio_voutref_dft(sio_voutref_dft),
        .sio_vref_sel(sio_vref_sel),
        .sio_vreg_en(sio_vreg_en),
        .sio_vreg_en_refgen(sio_vreg_en_refgen),
        .sio_vtrip_sel(sio_vtrip_sel),
        .sio_vtrip_sel_refgen(sio_vtrip_sel_refgen),
        .vccd0(vccd0_core),
        .vccd1(vccd1_core),
        .vccd2(vccd2_core),
        .vssd0(vssd0_core),
        .vssd1(vssd1_core),
        .vssd2(vssd2_core),
        .vref_e_enable_h(vref_e_enable_h),
        .vref_e_hld_h_n(vref_e_hld_h_n),
        .vref_e_ref_sel(vref_e_ref_sel),
        .vref_e_vrefgen_en(vref_e_vrefgen_en),
        .vref_w_enable_h(vref_w_enable_h),
        .vref_w_hld_h_n(vref_w_hld_h_n),
        .vref_w_ref_sel(vref_w_ref_sel),
        .vref_w_vrefgen_en(vref_w_vrefgen_en),
        .vssa0(vssa0_core),
        .vssa1(vssa1_core),
        .vssa2(vssa2_core),
        .vssa3(vssa3_core),
        .vdda0(vdda0_core),
        .vdda1(vdda1_core),
        .vdda2(vdda2_core),
        .vdda3(vdda3_core),
        .vssio(vssio_core),
        .vddio(vddio_core),
        .xi0_core(xi0_core), // 32k
        .xi1_core(xi1_core), // 16 M
        .xo0_core(xo0_core),
        .xo1_core(xo1_core),
        .amuxbus_a_n(amuxbus_a_n),
        .amuxbus_b_n(amuxbus_b_n),
        .vref_e_vinref(vref_e_vinref),
        .vref_w_vinref(vref_w_vinref),
        
        // TODO
        .VPWR(VPWR),
        .VGND(VGND)
    );
endmodule
