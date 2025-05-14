`default_nettype none

module panamax_fpga_core #(
    parameter FABRIC_NUM_IO_WEST = 64
)(
`ifdef USE_POWER_PINS
    inout VPWR,
    inout VGND,
`endif

    input  clk_i,
    input  rst_ni,
    
    // FPGA config
    input  logic fpga_sclk_i,
    output logic fpga_sclk_o,
    output logic fpga_sclk_oe_o,
    
    input  logic fpga_cs_n_i,
    output logic fpga_cs_n_o,
    output logic fpga_cs_n_oe_o,
    
    input  logic fpga_mosi_i,
    output logic fpga_mosi_o,
    output logic fpga_mosi_oe_o,
    
    input  logic fpga_miso_i,
    output logic fpga_miso_o,
    output logic fpga_miso_oe_o,
    
    // FPGA config mode
    // if mode == 0: SPI controller
    // if mode == 1: SPI receiver
    input  logic fpga_mode_i,
    output logic config_busy_o,
    
    // ADC 0
    input         fabric_adc0_cmp_i,
    output        fabric_adc0_hold_o,
    output        fabric_adc0_reset_o,
    output [11:0] fabric_adc0_value_o,

    // ADC 1
    input         fabric_adc1_cmp_i,
    output        fabric_adc1_hold_o,
    output        fabric_adc1_reset_o,
    output [11:0] fabric_adc1_value_o,

    // DAC 0
    output [7:0]  fabric_dac0_value_o,
    output        fabric_dac0_enable_o,

    // DAC 1
    output [7:0]  fabric_dac1_value_o,
    output        fabric_dac1_enable_o,

    // Fabric I/O
    input  [FABRIC_NUM_IO_WEST-1:0] fabric_io_in_i,
    output [FABRIC_NUM_IO_WEST-1:0] fabric_io_out_o,
    output [FABRIC_NUM_IO_WEST-1:0] fabric_io_oe_o,
    
    output [FABRIC_NUM_IO_WEST-1:0] fabric_io_config_bit0_o,
    output [FABRIC_NUM_IO_WEST-1:0] fabric_io_config_bit1_o,
    output [FABRIC_NUM_IO_WEST-1:0] fabric_io_config_bit2_o,
    output [FABRIC_NUM_IO_WEST-1:0] fabric_io_config_bit3_o
);
    	parameter FrameBitsPerRow = 32;
    parameter MaxFramesPerCol = 20;
    
    parameter NumColumns = 14;
    parameter NumRows = 18;
    
    // Fabric config is currently
    // configuring the fabric
    wire            fabric_config_busy;
    
    // Config busy
    assign config_busy_o = fabric_config_busy;
    
    // Fabric is configured
    wire            fabric_config_configured;
    
    // I/Os West
    wire [FABRIC_NUM_IO_WEST-1:0]      fabric_io_west_in_i;
    wire [FABRIC_NUM_IO_WEST-1:0]      fabric_io_west_out_o;
    wire [FABRIC_NUM_IO_WEST-1:0]      fabric_io_west_oe_o;

    // I/O West config
    wire [FABRIC_NUM_IO_WEST-1:0]      fabric_io_west_config_bit0_o;
    wire [FABRIC_NUM_IO_WEST-1:0]      fabric_io_west_config_bit1_o;
    wire [FABRIC_NUM_IO_WEST-1:0]      fabric_io_west_config_bit2_o;
    wire [FABRIC_NUM_IO_WEST-1:0]      fabric_io_west_config_bit3_o;

    // WARMBOOT
    wire        fabric_warmboot_boot_o;
    wire  [3:0] fabric_warmboot_slot_o;
    wire        fabric_warmboot_reset_i;
    
    assign fabric_warmboot_reset_i = fabric_config_busy;
    
    // SPI receiver
    logic [31:0] spi_receiver_bitstream_data_o;
    logic        spi_receiver_bitstream_valid_o;

    logic spi_receiver_sclk_i;
    logic spi_receiver_cs_ni;
    logic spi_receiver_mosi_i;
    logic spi_receiver_miso_o;

    fabric_spi_receiver fabric_spi_receiver (
        .clk_i  (clk_i),
        .rst_ni (rst_ni),
        
        // Bitstream data
        .bitstream_data_o   (spi_receiver_bitstream_data_o),
        .bitstream_valid_o  (spi_receiver_bitstream_valid_o),
        
        // Enable the SPI receiver
        .enable_i   (1'b1),
        
        // SPI
        .sclk_i     (spi_receiver_sclk_i),
        .cs_ni      (spi_receiver_cs_ni),
        .mosi_i     (spi_receiver_mosi_i),
        .miso_o     (spi_receiver_miso_o)
    );
    
    // SPI controller
    logic [31:0] spi_controller_bitstream_data_o;
    logic        spi_controller_bitstream_valid_o;
    
    logic spi_controller_sclk_o;
    logic spi_controller_cs_no;
    logic spi_controller_mosi_o;
    logic spi_controller_miso_i;
    
    logic spi_controller_start_i;
    logic [3:0] spi_controller_slot_i;
    
    // Fabric SPI controller is busy
    logic fabric_spi_controller_busy;
    
    fabric_spi_controller #(
        .BITSTREAM_LENGTH_WORDS (32'h1762),
        .SLOT_OFFSET_WORDS      (32'h2000),
        .NUM_SLOTS              (16)
    ) fabric_spi_controller (
        .clk_i  (clk_i),
        .rst_ni (rst_ni),
        
        // Start reading data at selected slot
        .start_i    (spi_controller_start_i),
        .slot_i     (spi_controller_slot_i),
        
        // Bitstream data
        .bitstream_data_o    (spi_controller_bitstream_data_o),
        .bitstream_valid_o   (spi_controller_bitstream_valid_o),
        
        // Reading in progress
        .busy_o     (fabric_spi_controller_busy),
        
        // SPI
        .sclk_o     (spi_controller_sclk_o),
        .cs_no      (spi_controller_cs_no),
        .mosi_o     (spi_controller_mosi_o),
        .miso_i     (spi_controller_miso_i)
    );
    
    // At startup, trigger configuration
    // when fpga_mode == 1'b0
    logic startup_trigger;
    always_ff @(posedge clk_i, negedge rst_ni) begin
        if (!rst_ni) begin
            startup_trigger <= 1'b1;
        end else begin
            startup_trigger <= 1'b0;
        end
    end
    
    // Bitstream multiplexer
    logic [31:0] spi_bitstream_data;
    logic        spi_bitstream_valid;
    
    always_comb begin
        // Default output
        fpga_sclk_o = 1'b0;
        fpga_cs_n_o = 1'b0;
        fpga_mosi_o = 1'b0;
        fpga_miso_o = 1'b0;
        
        // Receiver not selected
        spi_receiver_sclk_i = 1'b0;
        spi_receiver_cs_ni  = 1'b1;
        spi_receiver_mosi_i = 1'b0;
        
        // Controller not selected
        spi_controller_miso_i = 1'b0;

        if (fpga_mode_i == 1'b0) begin
            // SPI Controller
            fpga_sclk_oe_o = 1'b1;
            fpga_cs_n_oe_o = 1'b1;
            fpga_mosi_oe_o = 1'b1;
            fpga_miso_oe_o = 1'b0;
            
            fpga_sclk_o = spi_controller_sclk_o;
            fpga_cs_n_o = spi_controller_cs_no;
            fpga_mosi_o = spi_controller_mosi_o;
            spi_controller_miso_i = fpga_miso_i;
            
            // Re-route bitstream
            spi_bitstream_data  = spi_controller_bitstream_data_o;
            spi_bitstream_valid = spi_controller_bitstream_valid_o;
            
            // Slot and trigger
            spi_controller_start_i  = startup_trigger || (fabric_warmboot_boot_o && !(fabric_config_busy || fabric_spi_controller_busy));
            spi_controller_slot_i   = startup_trigger ? '0 : fabric_warmboot_slot_o;
            
        end else begin
            // SPI receiver
            fpga_sclk_oe_o = 1'b0;
            fpga_cs_n_oe_o = 1'b0;
            fpga_mosi_oe_o = 1'b0;
            fpga_miso_oe_o = 1'b1;
            
            spi_receiver_sclk_i = fpga_sclk_i;
            spi_receiver_cs_ni  = fpga_cs_n_i;
            spi_receiver_mosi_i = fpga_mosi_i;
            fpga_miso_o = spi_receiver_miso_o;
            
            // Re-route bitstream
            spi_bitstream_data  = spi_receiver_bitstream_data_o;
            spi_bitstream_valid = spi_receiver_bitstream_valid_o;
            
            // Slot and trigger
            spi_controller_start_i  = '0;
            spi_controller_slot_i   = '0;
        end
    end
    
    // To the fabric
    wire [(FrameBitsPerRow*NumRows)-1:0]    FrameData;
    wire [(MaxFramesPerCol*NumColumns)-1:0] FrameStrobe;

    fabric_config #(
        	.FrameBitsPerRow    (FrameBitsPerRow),
	    .MaxFramesPerCol    (MaxFramesPerCol),
	    
	    .NumColumns         (NumColumns),
	    .NumRows            (NumRows)
    ) fabric_config (
        .clk_i              (clk_i),
        .rst_ni             (rst_ni),
        
        // Bitstream
        .bitstream_valid_i  (spi_bitstream_valid),
        .bitstream_data_i   (spi_bitstream_data),
        
        // Configuration in progress
        .busy_o             (fabric_config_busy),
        
        // Fabric is configured
        .configured_o       (fabric_config_configured),
        
        // To the fabric
        .FrameData_o        (FrameData),
        .FrameStrobe_o      (FrameStrobe)
    );

    fabric_wrapper fabric_wrapper (
    `ifdef USE_POWER_PINS
        .VPWR   (VPWR),
        .VGND   (VGND),
    `endif

        .clk_i,
        
        // Configuration
        .FrameData_i    (FrameData),
        .FrameStrobe_i  (FrameStrobe),
        
        // Fabric is configured
        .configured_i   (fabric_config_configured),
        
        // I/Os West
        .io_west_in_i    (fabric_io_west_in_i),
        .io_west_out_o   (fabric_io_west_out_o),
        .io_west_oe_o    (fabric_io_west_oe_o),

        // I/O West config
        .io_west_config_bit0_o   (fabric_io_west_config_bit0_o),
        .io_west_config_bit1_o   (fabric_io_west_config_bit1_o),
        .io_west_config_bit2_o   (fabric_io_west_config_bit2_o),
        .io_west_config_bit3_o   (fabric_io_west_config_bit3_o),

        // WARMBOOT
        .warmboot_boot_o     (fabric_warmboot_boot_o),
        .warmboot_slot_o     (fabric_warmboot_slot_o),
        .warmboot_reset_i    (fabric_warmboot_reset_i),
        
        // ADC 0
        .adc0_cmp_i     (fabric_adc0_cmp_i),
        .adc0_hold_o    (fabric_adc0_hold_o),
        .adc0_reset_o   (fabric_adc0_reset_o),
        .adc0_value_o   (fabric_adc0_value_o),

        // ADC 1
        .adc1_cmp_i     (fabric_adc1_cmp_i),
        .adc1_hold_o    (fabric_adc1_hold_o),
        .adc1_reset_o   (fabric_adc1_reset_o),
        .adc1_value_o   (fabric_adc1_value_o),

        // DAC 0
        .dac0_value_o   (fabric_dac0_value_o),
        .dac0_enable_o   (fabric_dac0_enable_o),

        // DAC 1
        .dac1_value_o   (fabric_dac1_value_o),
        .dac1_enable_o   (fabric_dac1_enable_o)
    );
    
    assign fabric_io_west_in_i = fabric_io_in_i;
    assign fabric_io_out_o  = fabric_io_west_out_o;
    assign fabric_io_oe_o   = fabric_io_west_oe_o;
    
    assign fabric_io_config_bit0_o = fabric_io_west_config_bit0_o;
    assign fabric_io_config_bit1_o = fabric_io_west_config_bit1_o;
    assign fabric_io_config_bit2_o = fabric_io_west_config_bit2_o;
    assign fabric_io_config_bit3_o = fabric_io_west_config_bit3_o;

endmodule

`default_nettype wire
