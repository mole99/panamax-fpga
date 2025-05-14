// SPDX-FileCopyrightText: © 2025 Leo Moser <leo.moser@pm.me>
// SPDX-License-Identifier: Apache-2.0

`timescale 1 ns / 1 ps
`default_nettype none

module panamax_fpga_tb;

    initial begin
        $dumpfile("panamax_fpga_tb.fst");
        $dumpvars(0, panamax_fpga_tb);
    end

    // QSPI - Flash
    wire fpga_sclk;
    wire fpga_cs_n;
    wire fpga_mosi;
    wire fpga_miso;

    spiflash_powered i_spiflash (
	    .csb (fpga_cs_n),
	    .clk (fpga_sclk),
	    .io0 (fpga_mosi), // MOSI
	    .io1 (fpga_miso), // MISO
	    .io2 (),
	    .io3 ()
    );

    // power
    wire vccd0_0;
    wire vccd0_1;
    wire vccd1_0;
    wire vccd1_1;
    wire vccd1_2;
    wire vccd2_0;
    wire vccd2_1;
    wire vccd2_2;
    wire vdda0_0;
    wire vdda1_0;
    wire vdda2_0;
    wire vdda2_1;
    wire vdda3_0;
    wire vssd0_0;
    wire vssd0_1;
    wire vssd1_0;
    wire vssd1_1;
    wire vssd1_2;
    wire vssd2_0;
    wire vssd2_1;
    wire vssd2_2;
    wire vssa0_0;
    wire vssa1_0;
    wire vssa1_1;
    wire vssa2_0;
    wire vssa2_1;
    wire vssa3_0;
    wire vddio_0;
    wire vddio_1;
    wire vddio_2;
    wire vddio_3;
    wire vddio_4;
    wire vddio_5;
    wire vddio_6;
    wire vddio_7;
    wire vddio_8;
    wire vddio_9;
    wire vssio_0;
    wire vssio_1;
    wire vssio_2;
    wire vssio_3;
    wire vssio_4;
    wire vssio_5;
    wire vssio_6;
    wire vssio_7;
    wire vssio_8;
    wire vssio_9;
    
    // reset 
    wire resetb_tb;	// Reset input (sense inverted)

    // clock
    wire clock_tb;    	// CMOS core clock input; not a crystal
    
    // crystal oscillator
    wire xi0;
    wire xo0;
    wire xi1;
    wire xo1;

    // select 
    wire select;

    // analog gpios 
    wire sio0;
    wire sio1;
    wire analog_1;
    wire analog_0;

    // gpios
    wire gpio0;
    wire gpio1;
    wire gpio2;
    wire gpio3;
    wire gpio4;
    wire gpio5;
    wire gpio6;
    wire gpio7;
    wire gpio8;
    wire gpio9;
    wire gpio10;
    wire gpio11;
    wire gpio12;
    wire gpio13;
    wire gpio14;
    wire gpio15;
    wire gpio16;
    wire gpio17;
    wire gpio18;
    wire gpio19;
    wire gpio20;
    wire gpio21;
    wire gpio22;
    wire gpio23;
    wire gpio24;
    wire gpio25;
    wire gpio26;
    wire gpio27;
    wire gpio28;
    wire gpio29;
    wire gpio30;
    wire gpio31;
    wire gpio32;
    wire gpio33;
    wire gpio34;
    wire gpio35;
    wire gpio36;
    wire gpio37;
    wire gpio38;
    wire gpio39;
    wire gpio40;
    wire gpio41;
    wire gpio42;
    wire gpio43;
    wire gpio44;
    wire gpio45;
    wire gpio46;
    wire gpio47;
    wire gpio48;
    wire gpio49;
    wire gpio50;
    wire gpio51;
    wire gpio52;
    wire gpio53;
    wire gpio54;
    wire gpio55;
    wire gpio56;
    wire gpio57;
    wire gpio58;
    wire gpio59;
    wire gpio60;
    wire gpio61;
    wire gpio62;
    wire gpio63;
    wire gpio64;
    // define flash as tri1 because it's connected to weak high in the board
    wire gpio65;
    wire gpio66;
    wire gpio67;
    wire gpio68;
    wire gpio69;
    wire gpio70;
    wire gpio71;
    wire gpio72;
    wire gpio73;
    
    // TODO assignments
    assign gpio64 = clock_tb;
    
    assign sio0 = gpio72;
    assign sio1 = gpio73;
    
    assign fpga_sclk = gpio65;
    assign fpga_cs_n = gpio66;
    assign fpga_mosi = gpio67;
    assign gpio68 = fpga_miso;
    
    wire fpga_mode_i;
    assign gpio69 = fpga_mode_i;
    
    wire config_busy_o;
    assign config_busy_o = gpio70;

    // greyhound instance
    panamax_fpga uut(
        // PWR
        .vccd0_0(vccd0_0),
        .vccd0_1(vccd0_1),
        .vccd1_0(vccd1_0),
        .vccd1_1(vccd1_1),
        .vccd1_2(vccd1_2),
        .vccd2_0(vccd2_0),
        .vccd2_1(vccd2_1),
        .vccd2_2(vccd2_2),
        .vdda0_0(vdda0_0),
        .vdda1_0(vdda1_0),
        .vdda2_0(vdda2_0),
        .vdda2_1(vdda2_1),
        .vdda3_0(vdda3_0),
        .vssd0_0(vssd0_0),
        .vssd0_1(vssd0_1),
        .vssd1_0(vssd1_0),
        .vssd1_1(vssd1_1),
        .vssd1_2(vssd1_2),
        .vssd2_0(vssd2_0),
        .vssd2_1(vssd2_1),
        .vssd2_2(vssd2_2),
        .vssa0_0(vssa0_0),
        .vssa1_0(vssa1_0),
        .vssa1_1(vssa1_1),
        .vssa2_0(vssa2_0),
        .vssa2_1(vssa2_1),
        .vssa3_0(vssa3_0),
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

        // crystal oscillators
        .xi0(xi0),
        .xo0(xo0),
        .xi1(xi1),
        .xo1(xo1),

        // reset
        .resetb(resetb_tb),

        // select
        .select(select),
        .analog_1(analog_1),
        .analog_0(analog_0),

        // gpio
        .gpio0_0(gpio0),
        .gpio0_1(gpio1),
        .gpio0_2(gpio2),
        .gpio0_3(gpio3),
        .gpio0_4(gpio4),
        .gpio0_5(gpio5),
        .gpio0_6(gpio6),
        .gpio0_7(gpio7),
        .gpio1_0(gpio8),
        .gpio1_1(gpio9),
        .gpio1_2(gpio10),
        .gpio1_3(gpio11),
        .gpio1_4(gpio12),
        .gpio1_5(gpio13),
        .gpio1_6(gpio14),
        .gpio1_7(gpio15),
        .gpio2_0(gpio16),
        .gpio2_1(gpio17),
        .gpio2_2(gpio18),
        .gpio2_3(gpio19),
        .gpio2_4(gpio20),
        .gpio2_5(gpio21),
        .gpio2_6(gpio22),
        .gpio2_7(gpio23),
        .gpio3_0(gpio24),
        .gpio3_1(gpio25),
        .gpio3_2(gpio26),
        .gpio3_3(gpio27),
        .gpio3_4(gpio28),
        .gpio3_5(gpio29),
        .gpio3_6(gpio30),
        .gpio3_7(gpio31),
        .gpio4_0(gpio32),
        .gpio4_1(gpio33),
        .gpio4_2(gpio34),
        .gpio4_3(gpio35),
        .gpio4_4(gpio36),
        .gpio4_5(gpio37),
        .gpio4_6(gpio38),
        .gpio4_7(gpio39),
        .gpio5_0(gpio40),
        .gpio5_1(gpio41),
        .gpio5_2(gpio42),
        .gpio5_3(gpio43),
        .gpio5_4(gpio44),
        .gpio5_5(gpio45),
        .gpio5_6(gpio46),
        .gpio5_7(gpio47),
        .gpio6_0(gpio48),
        .gpio6_1(gpio49),
        .gpio6_2(gpio50),
        .gpio6_3(gpio51),
        .gpio6_4(gpio52),
        .gpio6_5(gpio53),
        .gpio6_6(gpio54),
        .gpio6_7(gpio55),
        .gpio7_0(gpio56),
        .gpio7_1(gpio57),
        .gpio7_2(gpio58),
        .gpio7_3(gpio59),
        .gpio7_4(gpio60),
        .gpio7_5(gpio61),
        .gpio7_6(gpio62),
        .gpio7_7(gpio63),
        .gpio8_0(gpio64),
        .gpio8_1(gpio65),
        .gpio8_2(gpio66),
        .gpio8_3(gpio67),
        .gpio8_4(gpio68),
        .gpio8_5(gpio69),
        .gpio8_6(gpio70),
        .gpio8_7(gpio71),
        .sio0(gpio72),
        .sio1(gpio73)
);

endmodule

module clk_buf(input A, output X);
assign X = A;
endmodule

module break_comb_loop(input A, output X);
assign X = A;
endmodule
