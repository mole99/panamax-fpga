    // Fabric GPIO fabric_io[0]
            
    wire gpio0_0_pull_enable;
    assign gpio0_0_pull_enable = (fabric_io_config_bit0[0] ^ fabric_io_config_bit1[0]) && !fabric_io_oe[0];
            
    assign fabric_io_in[0]    = gpio0_0_in;
    assign gpio0_0_out               = gpio0_0_pull_enable ? fabric_io_config_bit0[0] : fabric_io_out[0];
    assign gpio0_0_oe_n              = !(gpio0_0_pull_enable || fabric_io_oe[0]);
    assign gpio0_0_inp_dis           = gpio0_0_zero;
    assign gpio0_0_vtrip_sel         = gpio0_0_zero;
    assign gpio0_0_slow              = fabric_io_config_bit2[0];
    assign gpio0_0_hld_ovr           = gpio0_0_zero;
    assign gpio0_0_analog_en         = gpio0_0_zero;
    assign gpio0_0_analog_sel        = gpio0_0_zero;
    assign gpio0_0_analog_pol        = gpio0_0_zero;
    assign gpio0_0_dm                = gpio0_0_pull_enable ? {gpio0_0_one, gpio0_0_one, gpio0_0_one} : // weak
                                       fabric_io_config_bit3[0] ? {gpio0_0_one, gpio0_0_zero, gpio0_0_zero} : // open-drain
                                       {gpio0_0_one, gpio0_0_one, gpio0_0_zero}; // strong
    assign gpio0_0_enable_vddio      = gpio0_0_one;
    assign gpio0_0_enable_inp_h      = gpio0_0_tie_lo_esd;
    assign gpio0_0_enable_h          = porb_h; // TODO
    assign gpio0_0_hld_h_n           = gpio0_0_tie_hi_esd;
    assign gpio0_0_enable_vswitch_h  = gpio0_0_tie_lo_esd;
    assign gpio0_0_enable_vdda_h     = porb_h; // TODO
    assign gpio0_0_ib_mode_sel       = gpio0_0_zero; // VDDIO


    // Fabric GPIO fabric_io[1]
            
    wire gpio0_1_pull_enable;
    assign gpio0_1_pull_enable = (fabric_io_config_bit0[1] ^ fabric_io_config_bit1[1]) && !fabric_io_oe[1];
            
    assign fabric_io_in[1]    = gpio0_1_in;
    assign gpio0_1_out               = gpio0_1_pull_enable ? fabric_io_config_bit0[1] : fabric_io_out[1];
    assign gpio0_1_oe_n              = !(gpio0_1_pull_enable || fabric_io_oe[1]);
    assign gpio0_1_inp_dis           = gpio0_1_zero;
    assign gpio0_1_vtrip_sel         = gpio0_1_zero;
    assign gpio0_1_slow              = fabric_io_config_bit2[1];
    assign gpio0_1_hld_ovr           = gpio0_1_zero;
    assign gpio0_1_analog_en         = gpio0_1_zero;
    assign gpio0_1_analog_sel        = gpio0_1_zero;
    assign gpio0_1_analog_pol        = gpio0_1_zero;
    assign gpio0_1_dm                = gpio0_1_pull_enable ? {gpio0_1_one, gpio0_1_one, gpio0_1_one} : // weak
                                       fabric_io_config_bit3[1] ? {gpio0_1_one, gpio0_1_zero, gpio0_1_zero} : // open-drain
                                       {gpio0_1_one, gpio0_1_one, gpio0_1_zero}; // strong
    assign gpio0_1_enable_vddio      = gpio0_1_one;
    assign gpio0_1_enable_inp_h      = gpio0_1_tie_lo_esd;
    assign gpio0_1_enable_h          = porb_h; // TODO
    assign gpio0_1_hld_h_n           = gpio0_1_tie_hi_esd;
    assign gpio0_1_enable_vswitch_h  = gpio0_1_tie_lo_esd;
    assign gpio0_1_enable_vdda_h     = porb_h; // TODO
    assign gpio0_1_ib_mode_sel       = gpio0_1_zero; // VDDIO


    // Fabric GPIO fabric_io[2]
            
    wire gpio0_2_pull_enable;
    assign gpio0_2_pull_enable = (fabric_io_config_bit0[2] ^ fabric_io_config_bit1[2]) && !fabric_io_oe[2];
            
    assign fabric_io_in[2]    = gpio0_2_in;
    assign gpio0_2_out               = gpio0_2_pull_enable ? fabric_io_config_bit0[2] : fabric_io_out[2];
    assign gpio0_2_oe_n              = !(gpio0_2_pull_enable || fabric_io_oe[2]);
    assign gpio0_2_inp_dis           = gpio0_2_zero;
    assign gpio0_2_vtrip_sel         = gpio0_2_zero;
    assign gpio0_2_slow              = fabric_io_config_bit2[2];
    assign gpio0_2_hld_ovr           = gpio0_2_zero;
    assign gpio0_2_analog_en         = gpio0_2_zero;
    assign gpio0_2_analog_sel        = gpio0_2_zero;
    assign gpio0_2_analog_pol        = gpio0_2_zero;
    assign gpio0_2_dm                = gpio0_2_pull_enable ? {gpio0_2_one, gpio0_2_one, gpio0_2_one} : // weak
                                       fabric_io_config_bit3[2] ? {gpio0_2_one, gpio0_2_zero, gpio0_2_zero} : // open-drain
                                       {gpio0_2_one, gpio0_2_one, gpio0_2_zero}; // strong
    assign gpio0_2_enable_vddio      = gpio0_2_one;
    assign gpio0_2_enable_inp_h      = gpio0_2_tie_lo_esd;
    assign gpio0_2_enable_h          = porb_h; // TODO
    assign gpio0_2_hld_h_n           = gpio0_2_tie_hi_esd;
    assign gpio0_2_enable_vswitch_h  = gpio0_2_tie_lo_esd;
    assign gpio0_2_enable_vdda_h     = porb_h; // TODO
    assign gpio0_2_ib_mode_sel       = gpio0_2_zero; // VDDIO


    // Fabric GPIO fabric_io[3]
            
    wire gpio0_3_pull_enable;
    assign gpio0_3_pull_enable = (fabric_io_config_bit0[3] ^ fabric_io_config_bit1[3]) && !fabric_io_oe[3];
            
    assign fabric_io_in[3]    = gpio0_3_in;
    assign gpio0_3_out               = gpio0_3_pull_enable ? fabric_io_config_bit0[3] : fabric_io_out[3];
    assign gpio0_3_oe_n              = !(gpio0_3_pull_enable || fabric_io_oe[3]);
    assign gpio0_3_inp_dis           = gpio0_3_zero;
    assign gpio0_3_vtrip_sel         = gpio0_3_zero;
    assign gpio0_3_slow              = fabric_io_config_bit2[3];
    assign gpio0_3_hld_ovr           = gpio0_3_zero;
    assign gpio0_3_analog_en         = gpio0_3_zero;
    assign gpio0_3_analog_sel        = gpio0_3_zero;
    assign gpio0_3_analog_pol        = gpio0_3_zero;
    assign gpio0_3_dm                = gpio0_3_pull_enable ? {gpio0_3_one, gpio0_3_one, gpio0_3_one} : // weak
                                       fabric_io_config_bit3[3] ? {gpio0_3_one, gpio0_3_zero, gpio0_3_zero} : // open-drain
                                       {gpio0_3_one, gpio0_3_one, gpio0_3_zero}; // strong
    assign gpio0_3_enable_vddio      = gpio0_3_one;
    assign gpio0_3_enable_inp_h      = gpio0_3_tie_lo_esd;
    assign gpio0_3_enable_h          = porb_h; // TODO
    assign gpio0_3_hld_h_n           = gpio0_3_tie_hi_esd;
    assign gpio0_3_enable_vswitch_h  = gpio0_3_tie_lo_esd;
    assign gpio0_3_enable_vdda_h     = porb_h; // TODO
    assign gpio0_3_ib_mode_sel       = gpio0_3_zero; // VDDIO


    // Fabric GPIO fabric_io[4]
            
    wire gpio0_4_pull_enable;
    assign gpio0_4_pull_enable = (fabric_io_config_bit0[4] ^ fabric_io_config_bit1[4]) && !fabric_io_oe[4];
            
    assign fabric_io_in[4]    = gpio0_4_in;
    assign gpio0_4_out               = gpio0_4_pull_enable ? fabric_io_config_bit0[4] : fabric_io_out[4];
    assign gpio0_4_oe_n              = !(gpio0_4_pull_enable || fabric_io_oe[4]);
    assign gpio0_4_inp_dis           = gpio0_4_zero;
    assign gpio0_4_vtrip_sel         = gpio0_4_zero;
    assign gpio0_4_slow              = fabric_io_config_bit2[4];
    assign gpio0_4_hld_ovr           = gpio0_4_zero;
    assign gpio0_4_analog_en         = gpio0_4_zero;
    assign gpio0_4_analog_sel        = gpio0_4_zero;
    assign gpio0_4_analog_pol        = gpio0_4_zero;
    assign gpio0_4_dm                = gpio0_4_pull_enable ? {gpio0_4_one, gpio0_4_one, gpio0_4_one} : // weak
                                       fabric_io_config_bit3[4] ? {gpio0_4_one, gpio0_4_zero, gpio0_4_zero} : // open-drain
                                       {gpio0_4_one, gpio0_4_one, gpio0_4_zero}; // strong
    assign gpio0_4_enable_vddio      = gpio0_4_one;
    assign gpio0_4_enable_inp_h      = gpio0_4_tie_lo_esd;
    assign gpio0_4_enable_h          = porb_h; // TODO
    assign gpio0_4_hld_h_n           = gpio0_4_tie_hi_esd;
    assign gpio0_4_enable_vswitch_h  = gpio0_4_tie_lo_esd;
    assign gpio0_4_enable_vdda_h     = porb_h; // TODO
    assign gpio0_4_ib_mode_sel       = gpio0_4_zero; // VDDIO


    // Fabric GPIO fabric_io[5]
            
    wire gpio0_5_pull_enable;
    assign gpio0_5_pull_enable = (fabric_io_config_bit0[5] ^ fabric_io_config_bit1[5]) && !fabric_io_oe[5];
            
    assign fabric_io_in[5]    = gpio0_5_in;
    assign gpio0_5_out               = gpio0_5_pull_enable ? fabric_io_config_bit0[5] : fabric_io_out[5];
    assign gpio0_5_oe_n              = !(gpio0_5_pull_enable || fabric_io_oe[5]);
    assign gpio0_5_inp_dis           = gpio0_5_zero;
    assign gpio0_5_vtrip_sel         = gpio0_5_zero;
    assign gpio0_5_slow              = fabric_io_config_bit2[5];
    assign gpio0_5_hld_ovr           = gpio0_5_zero;
    assign gpio0_5_analog_en         = gpio0_5_zero;
    assign gpio0_5_analog_sel        = gpio0_5_zero;
    assign gpio0_5_analog_pol        = gpio0_5_zero;
    assign gpio0_5_dm                = gpio0_5_pull_enable ? {gpio0_5_one, gpio0_5_one, gpio0_5_one} : // weak
                                       fabric_io_config_bit3[5] ? {gpio0_5_one, gpio0_5_zero, gpio0_5_zero} : // open-drain
                                       {gpio0_5_one, gpio0_5_one, gpio0_5_zero}; // strong
    assign gpio0_5_enable_vddio      = gpio0_5_one;
    assign gpio0_5_enable_inp_h      = gpio0_5_tie_lo_esd;
    assign gpio0_5_enable_h          = porb_h; // TODO
    assign gpio0_5_hld_h_n           = gpio0_5_tie_hi_esd;
    assign gpio0_5_enable_vswitch_h  = gpio0_5_tie_lo_esd;
    assign gpio0_5_enable_vdda_h     = porb_h; // TODO
    assign gpio0_5_ib_mode_sel       = gpio0_5_zero; // VDDIO


    // Fabric GPIO fabric_io[6]
            
    wire gpio0_6_pull_enable;
    assign gpio0_6_pull_enable = (fabric_io_config_bit0[6] ^ fabric_io_config_bit1[6]) && !fabric_io_oe[6];
            
    assign fabric_io_in[6]    = gpio0_6_in;
    assign gpio0_6_out               = gpio0_6_pull_enable ? fabric_io_config_bit0[6] : fabric_io_out[6];
    assign gpio0_6_oe_n              = !(gpio0_6_pull_enable || fabric_io_oe[6]);
    assign gpio0_6_inp_dis           = gpio0_6_zero;
    assign gpio0_6_vtrip_sel         = gpio0_6_zero;
    assign gpio0_6_slow              = fabric_io_config_bit2[6];
    assign gpio0_6_hld_ovr           = gpio0_6_zero;
    assign gpio0_6_analog_en         = gpio0_6_zero;
    assign gpio0_6_analog_sel        = gpio0_6_zero;
    assign gpio0_6_analog_pol        = gpio0_6_zero;
    assign gpio0_6_dm                = gpio0_6_pull_enable ? {gpio0_6_one, gpio0_6_one, gpio0_6_one} : // weak
                                       fabric_io_config_bit3[6] ? {gpio0_6_one, gpio0_6_zero, gpio0_6_zero} : // open-drain
                                       {gpio0_6_one, gpio0_6_one, gpio0_6_zero}; // strong
    assign gpio0_6_enable_vddio      = gpio0_6_one;
    assign gpio0_6_enable_inp_h      = gpio0_6_tie_lo_esd;
    assign gpio0_6_enable_h          = porb_h; // TODO
    assign gpio0_6_hld_h_n           = gpio0_6_tie_hi_esd;
    assign gpio0_6_enable_vswitch_h  = gpio0_6_tie_lo_esd;
    assign gpio0_6_enable_vdda_h     = porb_h; // TODO
    assign gpio0_6_ib_mode_sel       = gpio0_6_zero; // VDDIO


    // Fabric GPIO fabric_io[7]
            
    wire gpio0_7_pull_enable;
    assign gpio0_7_pull_enable = (fabric_io_config_bit0[7] ^ fabric_io_config_bit1[7]) && !fabric_io_oe[7];
            
    assign fabric_io_in[7]    = gpio0_7_in;
    assign gpio0_7_out               = gpio0_7_pull_enable ? fabric_io_config_bit0[7] : fabric_io_out[7];
    assign gpio0_7_oe_n              = !(gpio0_7_pull_enable || fabric_io_oe[7]);
    assign gpio0_7_inp_dis           = gpio0_7_zero;
    assign gpio0_7_vtrip_sel         = gpio0_7_zero;
    assign gpio0_7_slow              = fabric_io_config_bit2[7];
    assign gpio0_7_hld_ovr           = gpio0_7_zero;
    assign gpio0_7_analog_en         = gpio0_7_zero;
    assign gpio0_7_analog_sel        = gpio0_7_zero;
    assign gpio0_7_analog_pol        = gpio0_7_zero;
    assign gpio0_7_dm                = gpio0_7_pull_enable ? {gpio0_7_one, gpio0_7_one, gpio0_7_one} : // weak
                                       fabric_io_config_bit3[7] ? {gpio0_7_one, gpio0_7_zero, gpio0_7_zero} : // open-drain
                                       {gpio0_7_one, gpio0_7_one, gpio0_7_zero}; // strong
    assign gpio0_7_enable_vddio      = gpio0_7_one;
    assign gpio0_7_enable_inp_h      = gpio0_7_tie_lo_esd;
    assign gpio0_7_enable_h          = porb_h; // TODO
    assign gpio0_7_hld_h_n           = gpio0_7_tie_hi_esd;
    assign gpio0_7_enable_vswitch_h  = gpio0_7_tie_lo_esd;
    assign gpio0_7_enable_vdda_h     = porb_h; // TODO
    assign gpio0_7_ib_mode_sel       = gpio0_7_zero; // VDDIO


    // Fabric GPIO fabric_io[8]
            
    wire gpio1_0_pull_enable;
    assign gpio1_0_pull_enable = (fabric_io_config_bit0[8] ^ fabric_io_config_bit1[8]) && !fabric_io_oe[8];
            
    assign fabric_io_in[8]    = gpio1_0_in;
    assign gpio1_0_out               = gpio1_0_pull_enable ? fabric_io_config_bit0[8] : fabric_io_out[8];
    assign gpio1_0_oe_n              = !(gpio1_0_pull_enable || fabric_io_oe[8]);
    assign gpio1_0_inp_dis           = gpio1_0_zero;
    assign gpio1_0_vtrip_sel         = gpio1_0_zero;
    assign gpio1_0_slow              = fabric_io_config_bit2[8];
    assign gpio1_0_hld_ovr           = gpio1_0_zero;
    assign gpio1_0_analog_en         = gpio1_0_zero;
    assign gpio1_0_analog_sel        = gpio1_0_zero;
    assign gpio1_0_analog_pol        = gpio1_0_zero;
    assign gpio1_0_dm                = gpio1_0_pull_enable ? {gpio1_0_one, gpio1_0_one, gpio1_0_one} : // weak
                                       fabric_io_config_bit3[8] ? {gpio1_0_one, gpio1_0_zero, gpio1_0_zero} : // open-drain
                                       {gpio1_0_one, gpio1_0_one, gpio1_0_zero}; // strong
    assign gpio1_0_enable_vddio      = gpio1_0_one;
    assign gpio1_0_enable_inp_h      = gpio1_0_tie_lo_esd;
    assign gpio1_0_enable_h          = porb_h; // TODO
    assign gpio1_0_hld_h_n           = gpio1_0_tie_hi_esd;
    assign gpio1_0_enable_vswitch_h  = gpio1_0_tie_lo_esd;
    assign gpio1_0_enable_vdda_h     = porb_h; // TODO
    assign gpio1_0_slew_ctl          = {gpio1_0_zero, gpio1_0_zero}; // slew rate in I2C mode
    assign gpio1_0_hys_trim          = gpio1_0_one; // 1 for input signaling voltage > 2.2V 
    assign gpio1_0_ib_mode_sel       = {gpio1_0_zero, gpio1_0_zero}; // CMOS input buffer, VDDIO


    // Fabric GPIO fabric_io[9]
            
    wire gpio1_1_pull_enable;
    assign gpio1_1_pull_enable = (fabric_io_config_bit0[9] ^ fabric_io_config_bit1[9]) && !fabric_io_oe[9];
            
    assign fabric_io_in[9]    = gpio1_1_in;
    assign gpio1_1_out               = gpio1_1_pull_enable ? fabric_io_config_bit0[9] : fabric_io_out[9];
    assign gpio1_1_oe_n              = !(gpio1_1_pull_enable || fabric_io_oe[9]);
    assign gpio1_1_inp_dis           = gpio1_1_zero;
    assign gpio1_1_vtrip_sel         = gpio1_1_zero;
    assign gpio1_1_slow              = fabric_io_config_bit2[9];
    assign gpio1_1_hld_ovr           = gpio1_1_zero;
    assign gpio1_1_analog_en         = gpio1_1_zero;
    assign gpio1_1_analog_sel        = gpio1_1_zero;
    assign gpio1_1_analog_pol        = gpio1_1_zero;
    assign gpio1_1_dm                = gpio1_1_pull_enable ? {gpio1_1_one, gpio1_1_one, gpio1_1_one} : // weak
                                       fabric_io_config_bit3[9] ? {gpio1_1_one, gpio1_1_zero, gpio1_1_zero} : // open-drain
                                       {gpio1_1_one, gpio1_1_one, gpio1_1_zero}; // strong
    assign gpio1_1_enable_vddio      = gpio1_1_one;
    assign gpio1_1_enable_inp_h      = gpio1_1_tie_lo_esd;
    assign gpio1_1_enable_h          = porb_h; // TODO
    assign gpio1_1_hld_h_n           = gpio1_1_tie_hi_esd;
    assign gpio1_1_enable_vswitch_h  = gpio1_1_tie_lo_esd;
    assign gpio1_1_enable_vdda_h     = porb_h; // TODO
    assign gpio1_1_slew_ctl          = {gpio1_1_zero, gpio1_1_zero}; // slew rate in I2C mode
    assign gpio1_1_hys_trim          = gpio1_1_one; // 1 for input signaling voltage > 2.2V 
    assign gpio1_1_ib_mode_sel       = {gpio1_1_zero, gpio1_1_zero}; // CMOS input buffer, VDDIO


    // Fabric GPIO fabric_io[10]
            
    wire gpio1_2_pull_enable;
    assign gpio1_2_pull_enable = (fabric_io_config_bit0[10] ^ fabric_io_config_bit1[10]) && !fabric_io_oe[10];
            
    assign fabric_io_in[10]    = gpio1_2_in;
    assign gpio1_2_out               = gpio1_2_pull_enable ? fabric_io_config_bit0[10] : fabric_io_out[10];
    assign gpio1_2_oe_n              = !(gpio1_2_pull_enable || fabric_io_oe[10]);
    assign gpio1_2_inp_dis           = gpio1_2_zero;
    assign gpio1_2_vtrip_sel         = gpio1_2_zero;
    assign gpio1_2_slow              = fabric_io_config_bit2[10];
    assign gpio1_2_hld_ovr           = gpio1_2_zero;
    assign gpio1_2_analog_en         = gpio1_2_zero;
    assign gpio1_2_analog_sel        = gpio1_2_zero;
    assign gpio1_2_analog_pol        = gpio1_2_zero;
    assign gpio1_2_dm                = gpio1_2_pull_enable ? {gpio1_2_one, gpio1_2_one, gpio1_2_one} : // weak
                                       fabric_io_config_bit3[10] ? {gpio1_2_one, gpio1_2_zero, gpio1_2_zero} : // open-drain
                                       {gpio1_2_one, gpio1_2_one, gpio1_2_zero}; // strong
    assign gpio1_2_enable_vddio      = gpio1_2_one;
    assign gpio1_2_enable_inp_h      = gpio1_2_tie_lo_esd;
    assign gpio1_2_enable_h          = porb_h; // TODO
    assign gpio1_2_hld_h_n           = gpio1_2_tie_hi_esd;
    assign gpio1_2_enable_vswitch_h  = gpio1_2_tie_lo_esd;
    assign gpio1_2_enable_vdda_h     = porb_h; // TODO
    assign gpio1_2_slew_ctl          = {gpio1_2_zero, gpio1_2_zero}; // slew rate in I2C mode
    assign gpio1_2_hys_trim          = gpio1_2_one; // 1 for input signaling voltage > 2.2V 
    assign gpio1_2_ib_mode_sel       = {gpio1_2_zero, gpio1_2_zero}; // CMOS input buffer, VDDIO


    // Fabric GPIO fabric_io[11]
            
    wire gpio1_3_pull_enable;
    assign gpio1_3_pull_enable = (fabric_io_config_bit0[11] ^ fabric_io_config_bit1[11]) && !fabric_io_oe[11];
            
    assign fabric_io_in[11]    = gpio1_3_in;
    assign gpio1_3_out               = gpio1_3_pull_enable ? fabric_io_config_bit0[11] : fabric_io_out[11];
    assign gpio1_3_oe_n              = !(gpio1_3_pull_enable || fabric_io_oe[11]);
    assign gpio1_3_inp_dis           = gpio1_3_zero;
    assign gpio1_3_vtrip_sel         = gpio1_3_zero;
    assign gpio1_3_slow              = fabric_io_config_bit2[11];
    assign gpio1_3_hld_ovr           = gpio1_3_zero;
    assign gpio1_3_analog_en         = gpio1_3_zero;
    assign gpio1_3_analog_sel        = gpio1_3_zero;
    assign gpio1_3_analog_pol        = gpio1_3_zero;
    assign gpio1_3_dm                = gpio1_3_pull_enable ? {gpio1_3_one, gpio1_3_one, gpio1_3_one} : // weak
                                       fabric_io_config_bit3[11] ? {gpio1_3_one, gpio1_3_zero, gpio1_3_zero} : // open-drain
                                       {gpio1_3_one, gpio1_3_one, gpio1_3_zero}; // strong
    assign gpio1_3_enable_vddio      = gpio1_3_one;
    assign gpio1_3_enable_inp_h      = gpio1_3_tie_lo_esd;
    assign gpio1_3_enable_h          = porb_h; // TODO
    assign gpio1_3_hld_h_n           = gpio1_3_tie_hi_esd;
    assign gpio1_3_enable_vswitch_h  = gpio1_3_tie_lo_esd;
    assign gpio1_3_enable_vdda_h     = porb_h; // TODO
    assign gpio1_3_slew_ctl          = {gpio1_3_zero, gpio1_3_zero}; // slew rate in I2C mode
    assign gpio1_3_hys_trim          = gpio1_3_one; // 1 for input signaling voltage > 2.2V 
    assign gpio1_3_ib_mode_sel       = {gpio1_3_zero, gpio1_3_zero}; // CMOS input buffer, VDDIO


    // Fabric GPIO fabric_io[12]
            
    wire gpio1_4_pull_enable;
    assign gpio1_4_pull_enable = (fabric_io_config_bit0[12] ^ fabric_io_config_bit1[12]) && !fabric_io_oe[12];
            
    assign fabric_io_in[12]    = gpio1_4_in;
    assign gpio1_4_out               = gpio1_4_pull_enable ? fabric_io_config_bit0[12] : fabric_io_out[12];
    assign gpio1_4_oe_n              = !(gpio1_4_pull_enable || fabric_io_oe[12]);
    assign gpio1_4_inp_dis           = gpio1_4_zero;
    assign gpio1_4_vtrip_sel         = gpio1_4_zero;
    assign gpio1_4_slow              = fabric_io_config_bit2[12];
    assign gpio1_4_hld_ovr           = gpio1_4_zero;
    assign gpio1_4_analog_en         = gpio1_4_zero;
    assign gpio1_4_analog_sel        = gpio1_4_zero;
    assign gpio1_4_analog_pol        = gpio1_4_zero;
    assign gpio1_4_dm                = gpio1_4_pull_enable ? {gpio1_4_one, gpio1_4_one, gpio1_4_one} : // weak
                                       fabric_io_config_bit3[12] ? {gpio1_4_one, gpio1_4_zero, gpio1_4_zero} : // open-drain
                                       {gpio1_4_one, gpio1_4_one, gpio1_4_zero}; // strong
    assign gpio1_4_enable_vddio      = gpio1_4_one;
    assign gpio1_4_enable_inp_h      = gpio1_4_tie_lo_esd;
    assign gpio1_4_enable_h          = porb_h; // TODO
    assign gpio1_4_hld_h_n           = gpio1_4_tie_hi_esd;
    assign gpio1_4_enable_vswitch_h  = gpio1_4_tie_lo_esd;
    assign gpio1_4_enable_vdda_h     = porb_h; // TODO
    assign gpio1_4_slew_ctl          = {gpio1_4_zero, gpio1_4_zero}; // slew rate in I2C mode
    assign gpio1_4_hys_trim          = gpio1_4_one; // 1 for input signaling voltage > 2.2V 
    assign gpio1_4_ib_mode_sel       = {gpio1_4_zero, gpio1_4_zero}; // CMOS input buffer, VDDIO


    // Fabric GPIO fabric_io[13]
            
    wire gpio1_5_pull_enable;
    assign gpio1_5_pull_enable = (fabric_io_config_bit0[13] ^ fabric_io_config_bit1[13]) && !fabric_io_oe[13];
            
    assign fabric_io_in[13]    = gpio1_5_in;
    assign gpio1_5_out               = gpio1_5_pull_enable ? fabric_io_config_bit0[13] : fabric_io_out[13];
    assign gpio1_5_oe_n              = !(gpio1_5_pull_enable || fabric_io_oe[13]);
    assign gpio1_5_inp_dis           = gpio1_5_zero;
    assign gpio1_5_vtrip_sel         = gpio1_5_zero;
    assign gpio1_5_slow              = fabric_io_config_bit2[13];
    assign gpio1_5_hld_ovr           = gpio1_5_zero;
    assign gpio1_5_analog_en         = gpio1_5_zero;
    assign gpio1_5_analog_sel        = gpio1_5_zero;
    assign gpio1_5_analog_pol        = gpio1_5_zero;
    assign gpio1_5_dm                = gpio1_5_pull_enable ? {gpio1_5_one, gpio1_5_one, gpio1_5_one} : // weak
                                       fabric_io_config_bit3[13] ? {gpio1_5_one, gpio1_5_zero, gpio1_5_zero} : // open-drain
                                       {gpio1_5_one, gpio1_5_one, gpio1_5_zero}; // strong
    assign gpio1_5_enable_vddio      = gpio1_5_one;
    assign gpio1_5_enable_inp_h      = gpio1_5_tie_lo_esd;
    assign gpio1_5_enable_h          = porb_h; // TODO
    assign gpio1_5_hld_h_n           = gpio1_5_tie_hi_esd;
    assign gpio1_5_enable_vswitch_h  = gpio1_5_tie_lo_esd;
    assign gpio1_5_enable_vdda_h     = porb_h; // TODO
    assign gpio1_5_slew_ctl          = {gpio1_5_zero, gpio1_5_zero}; // slew rate in I2C mode
    assign gpio1_5_hys_trim          = gpio1_5_one; // 1 for input signaling voltage > 2.2V 
    assign gpio1_5_ib_mode_sel       = {gpio1_5_zero, gpio1_5_zero}; // CMOS input buffer, VDDIO


    // Fabric GPIO fabric_io[14]
            
    wire gpio1_6_pull_enable;
    assign gpio1_6_pull_enable = (fabric_io_config_bit0[14] ^ fabric_io_config_bit1[14]) && !fabric_io_oe[14];
            
    assign fabric_io_in[14]    = gpio1_6_in;
    assign gpio1_6_out               = gpio1_6_pull_enable ? fabric_io_config_bit0[14] : fabric_io_out[14];
    assign gpio1_6_oe_n              = !(gpio1_6_pull_enable || fabric_io_oe[14]);
    assign gpio1_6_inp_dis           = gpio1_6_zero;
    assign gpio1_6_vtrip_sel         = gpio1_6_zero;
    assign gpio1_6_slow              = fabric_io_config_bit2[14];
    assign gpio1_6_hld_ovr           = gpio1_6_zero;
    assign gpio1_6_analog_en         = gpio1_6_zero;
    assign gpio1_6_analog_sel        = gpio1_6_zero;
    assign gpio1_6_analog_pol        = gpio1_6_zero;
    assign gpio1_6_dm                = gpio1_6_pull_enable ? {gpio1_6_one, gpio1_6_one, gpio1_6_one} : // weak
                                       fabric_io_config_bit3[14] ? {gpio1_6_one, gpio1_6_zero, gpio1_6_zero} : // open-drain
                                       {gpio1_6_one, gpio1_6_one, gpio1_6_zero}; // strong
    assign gpio1_6_enable_vddio      = gpio1_6_one;
    assign gpio1_6_enable_inp_h      = gpio1_6_tie_lo_esd;
    assign gpio1_6_enable_h          = porb_h; // TODO
    assign gpio1_6_hld_h_n           = gpio1_6_tie_hi_esd;
    assign gpio1_6_enable_vswitch_h  = gpio1_6_tie_lo_esd;
    assign gpio1_6_enable_vdda_h     = porb_h; // TODO
    assign gpio1_6_slew_ctl          = {gpio1_6_zero, gpio1_6_zero}; // slew rate in I2C mode
    assign gpio1_6_hys_trim          = gpio1_6_one; // 1 for input signaling voltage > 2.2V 
    assign gpio1_6_ib_mode_sel       = {gpio1_6_zero, gpio1_6_zero}; // CMOS input buffer, VDDIO


    // Fabric GPIO fabric_io[15]
            
    wire gpio1_7_pull_enable;
    assign gpio1_7_pull_enable = (fabric_io_config_bit0[15] ^ fabric_io_config_bit1[15]) && !fabric_io_oe[15];
            
    assign fabric_io_in[15]    = gpio1_7_in;
    assign gpio1_7_out               = gpio1_7_pull_enable ? fabric_io_config_bit0[15] : fabric_io_out[15];
    assign gpio1_7_oe_n              = !(gpio1_7_pull_enable || fabric_io_oe[15]);
    assign gpio1_7_inp_dis           = gpio1_7_zero;
    assign gpio1_7_vtrip_sel         = gpio1_7_zero;
    assign gpio1_7_slow              = fabric_io_config_bit2[15];
    assign gpio1_7_hld_ovr           = gpio1_7_zero;
    assign gpio1_7_analog_en         = gpio1_7_zero;
    assign gpio1_7_analog_sel        = gpio1_7_zero;
    assign gpio1_7_analog_pol        = gpio1_7_zero;
    assign gpio1_7_dm                = gpio1_7_pull_enable ? {gpio1_7_one, gpio1_7_one, gpio1_7_one} : // weak
                                       fabric_io_config_bit3[15] ? {gpio1_7_one, gpio1_7_zero, gpio1_7_zero} : // open-drain
                                       {gpio1_7_one, gpio1_7_one, gpio1_7_zero}; // strong
    assign gpio1_7_enable_vddio      = gpio1_7_one;
    assign gpio1_7_enable_inp_h      = gpio1_7_tie_lo_esd;
    assign gpio1_7_enable_h          = porb_h; // TODO
    assign gpio1_7_hld_h_n           = gpio1_7_tie_hi_esd;
    assign gpio1_7_enable_vswitch_h  = gpio1_7_tie_lo_esd;
    assign gpio1_7_enable_vdda_h     = porb_h; // TODO
    assign gpio1_7_slew_ctl          = {gpio1_7_zero, gpio1_7_zero}; // slew rate in I2C mode
    assign gpio1_7_hys_trim          = gpio1_7_one; // 1 for input signaling voltage > 2.2V 
    assign gpio1_7_ib_mode_sel       = {gpio1_7_zero, gpio1_7_zero}; // CMOS input buffer, VDDIO


    // Fabric GPIO fabric_io[16]
            
    wire gpio2_0_pull_enable;
    assign gpio2_0_pull_enable = (fabric_io_config_bit0[16] ^ fabric_io_config_bit1[16]) && !fabric_io_oe[16];
            
    assign fabric_io_in[16]    = gpio2_0_in;
    assign gpio2_0_out               = gpio2_0_pull_enable ? fabric_io_config_bit0[16] : fabric_io_out[16];
    assign gpio2_0_oe_n              = !(gpio2_0_pull_enable || fabric_io_oe[16]);
    assign gpio2_0_inp_dis           = gpio2_0_zero;
    assign gpio2_0_vtrip_sel         = gpio2_0_zero;
    assign gpio2_0_slow              = fabric_io_config_bit2[16];
    assign gpio2_0_hld_ovr           = gpio2_0_zero;
    assign gpio2_0_analog_en         = gpio2_0_zero;
    assign gpio2_0_analog_sel        = gpio2_0_zero;
    assign gpio2_0_analog_pol        = gpio2_0_zero;
    assign gpio2_0_dm                = gpio2_0_pull_enable ? {gpio2_0_one, gpio2_0_one, gpio2_0_one} : // weak
                                       fabric_io_config_bit3[16] ? {gpio2_0_one, gpio2_0_zero, gpio2_0_zero} : // open-drain
                                       {gpio2_0_one, gpio2_0_one, gpio2_0_zero}; // strong
    assign gpio2_0_enable_vddio      = gpio2_0_one;
    assign gpio2_0_enable_inp_h      = gpio2_0_tie_lo_esd;
    assign gpio2_0_enable_h          = porb_h; // TODO
    assign gpio2_0_hld_h_n           = gpio2_0_tie_hi_esd;
    assign gpio2_0_enable_vswitch_h  = gpio2_0_tie_lo_esd;
    assign gpio2_0_enable_vdda_h     = porb_h; // TODO
    assign gpio2_0_ib_mode_sel       = gpio2_0_zero; // VDDIO


    // Fabric GPIO fabric_io[17]
            
    wire gpio2_1_pull_enable;
    assign gpio2_1_pull_enable = (fabric_io_config_bit0[17] ^ fabric_io_config_bit1[17]) && !fabric_io_oe[17];
            
    assign fabric_io_in[17]    = gpio2_1_in;
    assign gpio2_1_out               = gpio2_1_pull_enable ? fabric_io_config_bit0[17] : fabric_io_out[17];
    assign gpio2_1_oe_n              = !(gpio2_1_pull_enable || fabric_io_oe[17]);
    assign gpio2_1_inp_dis           = gpio2_1_zero;
    assign gpio2_1_vtrip_sel         = gpio2_1_zero;
    assign gpio2_1_slow              = fabric_io_config_bit2[17];
    assign gpio2_1_hld_ovr           = gpio2_1_zero;
    assign gpio2_1_analog_en         = gpio2_1_zero;
    assign gpio2_1_analog_sel        = gpio2_1_zero;
    assign gpio2_1_analog_pol        = gpio2_1_zero;
    assign gpio2_1_dm                = gpio2_1_pull_enable ? {gpio2_1_one, gpio2_1_one, gpio2_1_one} : // weak
                                       fabric_io_config_bit3[17] ? {gpio2_1_one, gpio2_1_zero, gpio2_1_zero} : // open-drain
                                       {gpio2_1_one, gpio2_1_one, gpio2_1_zero}; // strong
    assign gpio2_1_enable_vddio      = gpio2_1_one;
    assign gpio2_1_enable_inp_h      = gpio2_1_tie_lo_esd;
    assign gpio2_1_enable_h          = porb_h; // TODO
    assign gpio2_1_hld_h_n           = gpio2_1_tie_hi_esd;
    assign gpio2_1_enable_vswitch_h  = gpio2_1_tie_lo_esd;
    assign gpio2_1_enable_vdda_h     = porb_h; // TODO
    assign gpio2_1_ib_mode_sel       = gpio2_1_zero; // VDDIO


    // Fabric GPIO fabric_io[18]
            
    wire gpio2_2_pull_enable;
    assign gpio2_2_pull_enable = (fabric_io_config_bit0[18] ^ fabric_io_config_bit1[18]) && !fabric_io_oe[18];
            
    assign fabric_io_in[18]    = gpio2_2_in;
    assign gpio2_2_out               = gpio2_2_pull_enable ? fabric_io_config_bit0[18] : fabric_io_out[18];
    assign gpio2_2_oe_n              = !(gpio2_2_pull_enable || fabric_io_oe[18]);
    assign gpio2_2_inp_dis           = gpio2_2_zero;
    assign gpio2_2_vtrip_sel         = gpio2_2_zero;
    assign gpio2_2_slow              = fabric_io_config_bit2[18];
    assign gpio2_2_hld_ovr           = gpio2_2_zero;
    assign gpio2_2_analog_en         = gpio2_2_zero;
    assign gpio2_2_analog_sel        = gpio2_2_zero;
    assign gpio2_2_analog_pol        = gpio2_2_zero;
    assign gpio2_2_dm                = gpio2_2_pull_enable ? {gpio2_2_one, gpio2_2_one, gpio2_2_one} : // weak
                                       fabric_io_config_bit3[18] ? {gpio2_2_one, gpio2_2_zero, gpio2_2_zero} : // open-drain
                                       {gpio2_2_one, gpio2_2_one, gpio2_2_zero}; // strong
    assign gpio2_2_enable_vddio      = gpio2_2_one;
    assign gpio2_2_enable_inp_h      = gpio2_2_tie_lo_esd;
    assign gpio2_2_enable_h          = porb_h; // TODO
    assign gpio2_2_hld_h_n           = gpio2_2_tie_hi_esd;
    assign gpio2_2_enable_vswitch_h  = gpio2_2_tie_lo_esd;
    assign gpio2_2_enable_vdda_h     = porb_h; // TODO
    assign gpio2_2_ib_mode_sel       = gpio2_2_zero; // VDDIO


    // Fabric GPIO fabric_io[19]
            
    wire gpio2_3_pull_enable;
    assign gpio2_3_pull_enable = (fabric_io_config_bit0[19] ^ fabric_io_config_bit1[19]) && !fabric_io_oe[19];
            
    assign fabric_io_in[19]    = gpio2_3_in;
    assign gpio2_3_out               = gpio2_3_pull_enable ? fabric_io_config_bit0[19] : fabric_io_out[19];
    assign gpio2_3_oe_n              = !(gpio2_3_pull_enable || fabric_io_oe[19]);
    assign gpio2_3_inp_dis           = gpio2_3_zero;
    assign gpio2_3_vtrip_sel         = gpio2_3_zero;
    assign gpio2_3_slow              = fabric_io_config_bit2[19];
    assign gpio2_3_hld_ovr           = gpio2_3_zero;
    assign gpio2_3_analog_en         = gpio2_3_zero;
    assign gpio2_3_analog_sel        = gpio2_3_zero;
    assign gpio2_3_analog_pol        = gpio2_3_zero;
    assign gpio2_3_dm                = gpio2_3_pull_enable ? {gpio2_3_one, gpio2_3_one, gpio2_3_one} : // weak
                                       fabric_io_config_bit3[19] ? {gpio2_3_one, gpio2_3_zero, gpio2_3_zero} : // open-drain
                                       {gpio2_3_one, gpio2_3_one, gpio2_3_zero}; // strong
    assign gpio2_3_enable_vddio      = gpio2_3_one;
    assign gpio2_3_enable_inp_h      = gpio2_3_tie_lo_esd;
    assign gpio2_3_enable_h          = porb_h; // TODO
    assign gpio2_3_hld_h_n           = gpio2_3_tie_hi_esd;
    assign gpio2_3_enable_vswitch_h  = gpio2_3_tie_lo_esd;
    assign gpio2_3_enable_vdda_h     = porb_h; // TODO
    assign gpio2_3_ib_mode_sel       = gpio2_3_zero; // VDDIO


    // Fabric GPIO fabric_io[20]
            
    wire gpio2_4_pull_enable;
    assign gpio2_4_pull_enable = (fabric_io_config_bit0[20] ^ fabric_io_config_bit1[20]) && !fabric_io_oe[20];
            
    assign fabric_io_in[20]    = gpio2_4_in;
    assign gpio2_4_out               = gpio2_4_pull_enable ? fabric_io_config_bit0[20] : fabric_io_out[20];
    assign gpio2_4_oe_n              = !(gpio2_4_pull_enable || fabric_io_oe[20]);
    assign gpio2_4_inp_dis           = gpio2_4_zero;
    assign gpio2_4_vtrip_sel         = gpio2_4_zero;
    assign gpio2_4_slow              = fabric_io_config_bit2[20];
    assign gpio2_4_hld_ovr           = gpio2_4_zero;
    assign gpio2_4_analog_en         = gpio2_4_zero;
    assign gpio2_4_analog_sel        = gpio2_4_zero;
    assign gpio2_4_analog_pol        = gpio2_4_zero;
    assign gpio2_4_dm                = gpio2_4_pull_enable ? {gpio2_4_one, gpio2_4_one, gpio2_4_one} : // weak
                                       fabric_io_config_bit3[20] ? {gpio2_4_one, gpio2_4_zero, gpio2_4_zero} : // open-drain
                                       {gpio2_4_one, gpio2_4_one, gpio2_4_zero}; // strong
    assign gpio2_4_enable_vddio      = gpio2_4_one;
    assign gpio2_4_enable_inp_h      = gpio2_4_tie_lo_esd;
    assign gpio2_4_enable_h          = porb_h; // TODO
    assign gpio2_4_hld_h_n           = gpio2_4_tie_hi_esd;
    assign gpio2_4_enable_vswitch_h  = gpio2_4_tie_lo_esd;
    assign gpio2_4_enable_vdda_h     = porb_h; // TODO
    assign gpio2_4_ib_mode_sel       = gpio2_4_zero; // VDDIO


    // Fabric GPIO fabric_io[21]
            
    wire gpio2_5_pull_enable;
    assign gpio2_5_pull_enable = (fabric_io_config_bit0[21] ^ fabric_io_config_bit1[21]) && !fabric_io_oe[21];
            
    assign fabric_io_in[21]    = gpio2_5_in;
    assign gpio2_5_out               = gpio2_5_pull_enable ? fabric_io_config_bit0[21] : fabric_io_out[21];
    assign gpio2_5_oe_n              = !(gpio2_5_pull_enable || fabric_io_oe[21]);
    assign gpio2_5_inp_dis           = gpio2_5_zero;
    assign gpio2_5_vtrip_sel         = gpio2_5_zero;
    assign gpio2_5_slow              = fabric_io_config_bit2[21];
    assign gpio2_5_hld_ovr           = gpio2_5_zero;
    assign gpio2_5_analog_en         = gpio2_5_zero;
    assign gpio2_5_analog_sel        = gpio2_5_zero;
    assign gpio2_5_analog_pol        = gpio2_5_zero;
    assign gpio2_5_dm                = gpio2_5_pull_enable ? {gpio2_5_one, gpio2_5_one, gpio2_5_one} : // weak
                                       fabric_io_config_bit3[21] ? {gpio2_5_one, gpio2_5_zero, gpio2_5_zero} : // open-drain
                                       {gpio2_5_one, gpio2_5_one, gpio2_5_zero}; // strong
    assign gpio2_5_enable_vddio      = gpio2_5_one;
    assign gpio2_5_enable_inp_h      = gpio2_5_tie_lo_esd;
    assign gpio2_5_enable_h          = porb_h; // TODO
    assign gpio2_5_hld_h_n           = gpio2_5_tie_hi_esd;
    assign gpio2_5_enable_vswitch_h  = gpio2_5_tie_lo_esd;
    assign gpio2_5_enable_vdda_h     = porb_h; // TODO
    assign gpio2_5_ib_mode_sel       = gpio2_5_zero; // VDDIO


    // Fabric GPIO fabric_io[22]
            
    wire gpio2_6_pull_enable;
    assign gpio2_6_pull_enable = (fabric_io_config_bit0[22] ^ fabric_io_config_bit1[22]) && !fabric_io_oe[22];
            
    assign fabric_io_in[22]    = gpio2_6_in;
    assign gpio2_6_out               = gpio2_6_pull_enable ? fabric_io_config_bit0[22] : fabric_io_out[22];
    assign gpio2_6_oe_n              = !(gpio2_6_pull_enable || fabric_io_oe[22]);
    assign gpio2_6_inp_dis           = gpio2_6_zero;
    assign gpio2_6_vtrip_sel         = gpio2_6_zero;
    assign gpio2_6_slow              = fabric_io_config_bit2[22];
    assign gpio2_6_hld_ovr           = gpio2_6_zero;
    assign gpio2_6_analog_en         = gpio2_6_zero;
    assign gpio2_6_analog_sel        = gpio2_6_zero;
    assign gpio2_6_analog_pol        = gpio2_6_zero;
    assign gpio2_6_dm                = gpio2_6_pull_enable ? {gpio2_6_one, gpio2_6_one, gpio2_6_one} : // weak
                                       fabric_io_config_bit3[22] ? {gpio2_6_one, gpio2_6_zero, gpio2_6_zero} : // open-drain
                                       {gpio2_6_one, gpio2_6_one, gpio2_6_zero}; // strong
    assign gpio2_6_enable_vddio      = gpio2_6_one;
    assign gpio2_6_enable_inp_h      = gpio2_6_tie_lo_esd;
    assign gpio2_6_enable_h          = porb_h; // TODO
    assign gpio2_6_hld_h_n           = gpio2_6_tie_hi_esd;
    assign gpio2_6_enable_vswitch_h  = gpio2_6_tie_lo_esd;
    assign gpio2_6_enable_vdda_h     = porb_h; // TODO
    assign gpio2_6_ib_mode_sel       = gpio2_6_zero; // VDDIO


    // Fabric GPIO fabric_io[23]
            
    wire gpio2_7_pull_enable;
    assign gpio2_7_pull_enable = (fabric_io_config_bit0[23] ^ fabric_io_config_bit1[23]) && !fabric_io_oe[23];
            
    assign fabric_io_in[23]    = gpio2_7_in;
    assign gpio2_7_out               = gpio2_7_pull_enable ? fabric_io_config_bit0[23] : fabric_io_out[23];
    assign gpio2_7_oe_n              = !(gpio2_7_pull_enable || fabric_io_oe[23]);
    assign gpio2_7_inp_dis           = gpio2_7_zero;
    assign gpio2_7_vtrip_sel         = gpio2_7_zero;
    assign gpio2_7_slow              = fabric_io_config_bit2[23];
    assign gpio2_7_hld_ovr           = gpio2_7_zero;
    assign gpio2_7_analog_en         = gpio2_7_zero;
    assign gpio2_7_analog_sel        = gpio2_7_zero;
    assign gpio2_7_analog_pol        = gpio2_7_zero;
    assign gpio2_7_dm                = gpio2_7_pull_enable ? {gpio2_7_one, gpio2_7_one, gpio2_7_one} : // weak
                                       fabric_io_config_bit3[23] ? {gpio2_7_one, gpio2_7_zero, gpio2_7_zero} : // open-drain
                                       {gpio2_7_one, gpio2_7_one, gpio2_7_zero}; // strong
    assign gpio2_7_enable_vddio      = gpio2_7_one;
    assign gpio2_7_enable_inp_h      = gpio2_7_tie_lo_esd;
    assign gpio2_7_enable_h          = porb_h; // TODO
    assign gpio2_7_hld_h_n           = gpio2_7_tie_hi_esd;
    assign gpio2_7_enable_vswitch_h  = gpio2_7_tie_lo_esd;
    assign gpio2_7_enable_vdda_h     = porb_h; // TODO
    assign gpio2_7_ib_mode_sel       = gpio2_7_zero; // VDDIO


    // Fabric GPIO fabric_io[24]
            
    wire gpio3_0_pull_enable;
    assign gpio3_0_pull_enable = (fabric_io_config_bit0[24] ^ fabric_io_config_bit1[24]) && !fabric_io_oe[24];
            
    assign fabric_io_in[24]    = gpio3_0_in;
    assign gpio3_0_out               = gpio3_0_pull_enable ? fabric_io_config_bit0[24] : fabric_io_out[24];
    assign gpio3_0_oe_n              = !(gpio3_0_pull_enable || fabric_io_oe[24]);
    assign gpio3_0_inp_dis           = gpio3_0_zero;
    assign gpio3_0_vtrip_sel         = gpio3_0_zero;
    assign gpio3_0_slow              = fabric_io_config_bit2[24];
    assign gpio3_0_hld_ovr           = gpio3_0_zero;
    assign gpio3_0_analog_en         = gpio3_0_zero;
    assign gpio3_0_analog_sel        = gpio3_0_zero;
    assign gpio3_0_analog_pol        = gpio3_0_zero;
    assign gpio3_0_dm                = gpio3_0_pull_enable ? {gpio3_0_one, gpio3_0_one, gpio3_0_one} : // weak
                                       fabric_io_config_bit3[24] ? {gpio3_0_one, gpio3_0_zero, gpio3_0_zero} : // open-drain
                                       {gpio3_0_one, gpio3_0_one, gpio3_0_zero}; // strong
    assign gpio3_0_enable_vddio      = gpio3_0_one;
    assign gpio3_0_enable_inp_h      = gpio3_0_tie_lo_esd;
    assign gpio3_0_enable_h          = porb_h; // TODO
    assign gpio3_0_hld_h_n           = gpio3_0_tie_hi_esd;
    assign gpio3_0_enable_vswitch_h  = gpio3_0_tie_lo_esd;
    assign gpio3_0_enable_vdda_h     = porb_h; // TODO
    assign gpio3_0_ib_mode_sel       = gpio3_0_zero; // VDDIO


    // Fabric GPIO fabric_io[25]
            
    wire gpio3_1_pull_enable;
    assign gpio3_1_pull_enable = (fabric_io_config_bit0[25] ^ fabric_io_config_bit1[25]) && !fabric_io_oe[25];
            
    assign fabric_io_in[25]    = gpio3_1_in;
    assign gpio3_1_out               = gpio3_1_pull_enable ? fabric_io_config_bit0[25] : fabric_io_out[25];
    assign gpio3_1_oe_n              = !(gpio3_1_pull_enable || fabric_io_oe[25]);
    assign gpio3_1_inp_dis           = gpio3_1_zero;
    assign gpio3_1_vtrip_sel         = gpio3_1_zero;
    assign gpio3_1_slow              = fabric_io_config_bit2[25];
    assign gpio3_1_hld_ovr           = gpio3_1_zero;
    assign gpio3_1_analog_en         = gpio3_1_zero;
    assign gpio3_1_analog_sel        = gpio3_1_zero;
    assign gpio3_1_analog_pol        = gpio3_1_zero;
    assign gpio3_1_dm                = gpio3_1_pull_enable ? {gpio3_1_one, gpio3_1_one, gpio3_1_one} : // weak
                                       fabric_io_config_bit3[25] ? {gpio3_1_one, gpio3_1_zero, gpio3_1_zero} : // open-drain
                                       {gpio3_1_one, gpio3_1_one, gpio3_1_zero}; // strong
    assign gpio3_1_enable_vddio      = gpio3_1_one;
    assign gpio3_1_enable_inp_h      = gpio3_1_tie_lo_esd;
    assign gpio3_1_enable_h          = porb_h; // TODO
    assign gpio3_1_hld_h_n           = gpio3_1_tie_hi_esd;
    assign gpio3_1_enable_vswitch_h  = gpio3_1_tie_lo_esd;
    assign gpio3_1_enable_vdda_h     = porb_h; // TODO
    assign gpio3_1_ib_mode_sel       = gpio3_1_zero; // VDDIO


    // Fabric GPIO fabric_io[26]
            
    wire gpio3_2_pull_enable;
    assign gpio3_2_pull_enable = (fabric_io_config_bit0[26] ^ fabric_io_config_bit1[26]) && !fabric_io_oe[26];
            
    assign fabric_io_in[26]    = gpio3_2_in;
    assign gpio3_2_out               = gpio3_2_pull_enable ? fabric_io_config_bit0[26] : fabric_io_out[26];
    assign gpio3_2_oe_n              = !(gpio3_2_pull_enable || fabric_io_oe[26]);
    assign gpio3_2_inp_dis           = gpio3_2_zero;
    assign gpio3_2_vtrip_sel         = gpio3_2_zero;
    assign gpio3_2_slow              = fabric_io_config_bit2[26];
    assign gpio3_2_hld_ovr           = gpio3_2_zero;
    assign gpio3_2_analog_en         = gpio3_2_zero;
    assign gpio3_2_analog_sel        = gpio3_2_zero;
    assign gpio3_2_analog_pol        = gpio3_2_zero;
    assign gpio3_2_dm                = gpio3_2_pull_enable ? {gpio3_2_one, gpio3_2_one, gpio3_2_one} : // weak
                                       fabric_io_config_bit3[26] ? {gpio3_2_one, gpio3_2_zero, gpio3_2_zero} : // open-drain
                                       {gpio3_2_one, gpio3_2_one, gpio3_2_zero}; // strong
    assign gpio3_2_enable_vddio      = gpio3_2_one;
    assign gpio3_2_enable_inp_h      = gpio3_2_tie_lo_esd;
    assign gpio3_2_enable_h          = porb_h; // TODO
    assign gpio3_2_hld_h_n           = gpio3_2_tie_hi_esd;
    assign gpio3_2_enable_vswitch_h  = gpio3_2_tie_lo_esd;
    assign gpio3_2_enable_vdda_h     = porb_h; // TODO
    assign gpio3_2_ib_mode_sel       = gpio3_2_zero; // VDDIO


    // Fabric GPIO fabric_io[27]
            
    wire gpio3_3_pull_enable;
    assign gpio3_3_pull_enable = (fabric_io_config_bit0[27] ^ fabric_io_config_bit1[27]) && !fabric_io_oe[27];
            
    assign fabric_io_in[27]    = gpio3_3_in;
    assign gpio3_3_out               = gpio3_3_pull_enable ? fabric_io_config_bit0[27] : fabric_io_out[27];
    assign gpio3_3_oe_n              = !(gpio3_3_pull_enable || fabric_io_oe[27]);
    assign gpio3_3_inp_dis           = gpio3_3_zero;
    assign gpio3_3_vtrip_sel         = gpio3_3_zero;
    assign gpio3_3_slow              = fabric_io_config_bit2[27];
    assign gpio3_3_hld_ovr           = gpio3_3_zero;
    assign gpio3_3_analog_en         = gpio3_3_zero;
    assign gpio3_3_analog_sel        = gpio3_3_zero;
    assign gpio3_3_analog_pol        = gpio3_3_zero;
    assign gpio3_3_dm                = gpio3_3_pull_enable ? {gpio3_3_one, gpio3_3_one, gpio3_3_one} : // weak
                                       fabric_io_config_bit3[27] ? {gpio3_3_one, gpio3_3_zero, gpio3_3_zero} : // open-drain
                                       {gpio3_3_one, gpio3_3_one, gpio3_3_zero}; // strong
    assign gpio3_3_enable_vddio      = gpio3_3_one;
    assign gpio3_3_enable_inp_h      = gpio3_3_tie_lo_esd;
    assign gpio3_3_enable_h          = porb_h; // TODO
    assign gpio3_3_hld_h_n           = gpio3_3_tie_hi_esd;
    assign gpio3_3_enable_vswitch_h  = gpio3_3_tie_lo_esd;
    assign gpio3_3_enable_vdda_h     = porb_h; // TODO
    assign gpio3_3_ib_mode_sel       = gpio3_3_zero; // VDDIO


    // Fabric GPIO fabric_io[28]
            
    wire gpio3_4_pull_enable;
    assign gpio3_4_pull_enable = (fabric_io_config_bit0[28] ^ fabric_io_config_bit1[28]) && !fabric_io_oe[28];
            
    assign fabric_io_in[28]    = gpio3_4_in;
    assign gpio3_4_out               = gpio3_4_pull_enable ? fabric_io_config_bit0[28] : fabric_io_out[28];
    assign gpio3_4_oe_n              = !(gpio3_4_pull_enable || fabric_io_oe[28]);
    assign gpio3_4_inp_dis           = gpio3_4_zero;
    assign gpio3_4_vtrip_sel         = gpio3_4_zero;
    assign gpio3_4_slow              = fabric_io_config_bit2[28];
    assign gpio3_4_hld_ovr           = gpio3_4_zero;
    assign gpio3_4_analog_en         = gpio3_4_zero;
    assign gpio3_4_analog_sel        = gpio3_4_zero;
    assign gpio3_4_analog_pol        = gpio3_4_zero;
    assign gpio3_4_dm                = gpio3_4_pull_enable ? {gpio3_4_one, gpio3_4_one, gpio3_4_one} : // weak
                                       fabric_io_config_bit3[28] ? {gpio3_4_one, gpio3_4_zero, gpio3_4_zero} : // open-drain
                                       {gpio3_4_one, gpio3_4_one, gpio3_4_zero}; // strong
    assign gpio3_4_enable_vddio      = gpio3_4_one;
    assign gpio3_4_enable_inp_h      = gpio3_4_tie_lo_esd;
    assign gpio3_4_enable_h          = porb_h; // TODO
    assign gpio3_4_hld_h_n           = gpio3_4_tie_hi_esd;
    assign gpio3_4_enable_vswitch_h  = gpio3_4_tie_lo_esd;
    assign gpio3_4_enable_vdda_h     = porb_h; // TODO
    assign gpio3_4_ib_mode_sel       = gpio3_4_zero; // VDDIO


    // Fabric GPIO fabric_io[29]
            
    wire gpio3_5_pull_enable;
    assign gpio3_5_pull_enable = (fabric_io_config_bit0[29] ^ fabric_io_config_bit1[29]) && !fabric_io_oe[29];
            
    assign fabric_io_in[29]    = gpio3_5_in;
    assign gpio3_5_out               = gpio3_5_pull_enable ? fabric_io_config_bit0[29] : fabric_io_out[29];
    assign gpio3_5_oe_n              = !(gpio3_5_pull_enable || fabric_io_oe[29]);
    assign gpio3_5_inp_dis           = gpio3_5_zero;
    assign gpio3_5_vtrip_sel         = gpio3_5_zero;
    assign gpio3_5_slow              = fabric_io_config_bit2[29];
    assign gpio3_5_hld_ovr           = gpio3_5_zero;
    assign gpio3_5_analog_en         = gpio3_5_zero;
    assign gpio3_5_analog_sel        = gpio3_5_zero;
    assign gpio3_5_analog_pol        = gpio3_5_zero;
    assign gpio3_5_dm                = gpio3_5_pull_enable ? {gpio3_5_one, gpio3_5_one, gpio3_5_one} : // weak
                                       fabric_io_config_bit3[29] ? {gpio3_5_one, gpio3_5_zero, gpio3_5_zero} : // open-drain
                                       {gpio3_5_one, gpio3_5_one, gpio3_5_zero}; // strong
    assign gpio3_5_enable_vddio      = gpio3_5_one;
    assign gpio3_5_enable_inp_h      = gpio3_5_tie_lo_esd;
    assign gpio3_5_enable_h          = porb_h; // TODO
    assign gpio3_5_hld_h_n           = gpio3_5_tie_hi_esd;
    assign gpio3_5_enable_vswitch_h  = gpio3_5_tie_lo_esd;
    assign gpio3_5_enable_vdda_h     = porb_h; // TODO
    assign gpio3_5_ib_mode_sel       = gpio3_5_zero; // VDDIO


    // Fabric GPIO fabric_io[30]
            
    wire gpio3_6_pull_enable;
    assign gpio3_6_pull_enable = (fabric_io_config_bit0[30] ^ fabric_io_config_bit1[30]) && !fabric_io_oe[30];
            
    assign fabric_io_in[30]    = gpio3_6_in;
    assign gpio3_6_out               = gpio3_6_pull_enable ? fabric_io_config_bit0[30] : fabric_io_out[30];
    assign gpio3_6_oe_n              = !(gpio3_6_pull_enable || fabric_io_oe[30]);
    assign gpio3_6_inp_dis           = gpio3_6_zero;
    assign gpio3_6_vtrip_sel         = gpio3_6_zero;
    assign gpio3_6_slow              = fabric_io_config_bit2[30];
    assign gpio3_6_hld_ovr           = gpio3_6_zero;
    assign gpio3_6_analog_en         = gpio3_6_zero;
    assign gpio3_6_analog_sel        = gpio3_6_zero;
    assign gpio3_6_analog_pol        = gpio3_6_zero;
    assign gpio3_6_dm                = gpio3_6_pull_enable ? {gpio3_6_one, gpio3_6_one, gpio3_6_one} : // weak
                                       fabric_io_config_bit3[30] ? {gpio3_6_one, gpio3_6_zero, gpio3_6_zero} : // open-drain
                                       {gpio3_6_one, gpio3_6_one, gpio3_6_zero}; // strong
    assign gpio3_6_enable_vddio      = gpio3_6_one;
    assign gpio3_6_enable_inp_h      = gpio3_6_tie_lo_esd;
    assign gpio3_6_enable_h          = porb_h; // TODO
    assign gpio3_6_hld_h_n           = gpio3_6_tie_hi_esd;
    assign gpio3_6_enable_vswitch_h  = gpio3_6_tie_lo_esd;
    assign gpio3_6_enable_vdda_h     = porb_h; // TODO
    assign gpio3_6_ib_mode_sel       = gpio3_6_zero; // VDDIO


    // Fabric GPIO fabric_io[31]
            
    wire gpio3_7_pull_enable;
    assign gpio3_7_pull_enable = (fabric_io_config_bit0[31] ^ fabric_io_config_bit1[31]) && !fabric_io_oe[31];
            
    assign fabric_io_in[31]    = gpio3_7_in;
    assign gpio3_7_out               = gpio3_7_pull_enable ? fabric_io_config_bit0[31] : fabric_io_out[31];
    assign gpio3_7_oe_n              = !(gpio3_7_pull_enable || fabric_io_oe[31]);
    assign gpio3_7_inp_dis           = gpio3_7_zero;
    assign gpio3_7_vtrip_sel         = gpio3_7_zero;
    assign gpio3_7_slow              = fabric_io_config_bit2[31];
    assign gpio3_7_hld_ovr           = gpio3_7_zero;
    assign gpio3_7_analog_en         = gpio3_7_zero;
    assign gpio3_7_analog_sel        = gpio3_7_zero;
    assign gpio3_7_analog_pol        = gpio3_7_zero;
    assign gpio3_7_dm                = gpio3_7_pull_enable ? {gpio3_7_one, gpio3_7_one, gpio3_7_one} : // weak
                                       fabric_io_config_bit3[31] ? {gpio3_7_one, gpio3_7_zero, gpio3_7_zero} : // open-drain
                                       {gpio3_7_one, gpio3_7_one, gpio3_7_zero}; // strong
    assign gpio3_7_enable_vddio      = gpio3_7_one;
    assign gpio3_7_enable_inp_h      = gpio3_7_tie_lo_esd;
    assign gpio3_7_enable_h          = porb_h; // TODO
    assign gpio3_7_hld_h_n           = gpio3_7_tie_hi_esd;
    assign gpio3_7_enable_vswitch_h  = gpio3_7_tie_lo_esd;
    assign gpio3_7_enable_vdda_h     = porb_h; // TODO
    assign gpio3_7_ib_mode_sel       = gpio3_7_zero; // VDDIO


    // Fabric GPIO fabric_io[32]
            
    wire gpio4_0_pull_enable;
    assign gpio4_0_pull_enable = (fabric_io_config_bit0[32] ^ fabric_io_config_bit1[32]) && !fabric_io_oe[32];
            
    assign fabric_io_in[32]    = gpio4_0_in;
    assign gpio4_0_out               = gpio4_0_pull_enable ? fabric_io_config_bit0[32] : fabric_io_out[32];
    assign gpio4_0_oe_n              = !(gpio4_0_pull_enable || fabric_io_oe[32]);
    assign gpio4_0_inp_dis           = gpio4_0_zero;
    assign gpio4_0_vtrip_sel         = gpio4_0_zero;
    assign gpio4_0_slow              = fabric_io_config_bit2[32];
    assign gpio4_0_hld_ovr           = gpio4_0_zero;
    assign gpio4_0_analog_en         = gpio4_0_zero;
    assign gpio4_0_analog_sel        = gpio4_0_zero;
    assign gpio4_0_analog_pol        = gpio4_0_zero;
    assign gpio4_0_dm                = gpio4_0_pull_enable ? {gpio4_0_one, gpio4_0_one, gpio4_0_one} : // weak
                                       fabric_io_config_bit3[32] ? {gpio4_0_one, gpio4_0_zero, gpio4_0_zero} : // open-drain
                                       {gpio4_0_one, gpio4_0_one, gpio4_0_zero}; // strong
    assign gpio4_0_enable_vddio      = gpio4_0_one;
    assign gpio4_0_enable_inp_h      = gpio4_0_tie_lo_esd;
    assign gpio4_0_enable_h          = porb_h; // TODO
    assign gpio4_0_hld_h_n           = gpio4_0_tie_hi_esd;
    assign gpio4_0_enable_vswitch_h  = gpio4_0_tie_lo_esd;
    assign gpio4_0_enable_vdda_h     = porb_h; // TODO
    assign gpio4_0_ib_mode_sel       = gpio4_0_zero; // VDDIO


    // Fabric GPIO fabric_io[33]
            
    wire gpio4_1_pull_enable;
    assign gpio4_1_pull_enable = (fabric_io_config_bit0[33] ^ fabric_io_config_bit1[33]) && !fabric_io_oe[33];
            
    assign fabric_io_in[33]    = gpio4_1_in;
    assign gpio4_1_out               = gpio4_1_pull_enable ? fabric_io_config_bit0[33] : fabric_io_out[33];
    assign gpio4_1_oe_n              = !(gpio4_1_pull_enable || fabric_io_oe[33]);
    assign gpio4_1_inp_dis           = gpio4_1_zero;
    assign gpio4_1_vtrip_sel         = gpio4_1_zero;
    assign gpio4_1_slow              = fabric_io_config_bit2[33];
    assign gpio4_1_hld_ovr           = gpio4_1_zero;
    assign gpio4_1_analog_en         = gpio4_1_zero;
    assign gpio4_1_analog_sel        = gpio4_1_zero;
    assign gpio4_1_analog_pol        = gpio4_1_zero;
    assign gpio4_1_dm                = gpio4_1_pull_enable ? {gpio4_1_one, gpio4_1_one, gpio4_1_one} : // weak
                                       fabric_io_config_bit3[33] ? {gpio4_1_one, gpio4_1_zero, gpio4_1_zero} : // open-drain
                                       {gpio4_1_one, gpio4_1_one, gpio4_1_zero}; // strong
    assign gpio4_1_enable_vddio      = gpio4_1_one;
    assign gpio4_1_enable_inp_h      = gpio4_1_tie_lo_esd;
    assign gpio4_1_enable_h          = porb_h; // TODO
    assign gpio4_1_hld_h_n           = gpio4_1_tie_hi_esd;
    assign gpio4_1_enable_vswitch_h  = gpio4_1_tie_lo_esd;
    assign gpio4_1_enable_vdda_h     = porb_h; // TODO
    assign gpio4_1_ib_mode_sel       = gpio4_1_zero; // VDDIO


    // Fabric GPIO fabric_io[34]
            
    wire gpio4_2_pull_enable;
    assign gpio4_2_pull_enable = (fabric_io_config_bit0[34] ^ fabric_io_config_bit1[34]) && !fabric_io_oe[34];
            
    assign fabric_io_in[34]    = gpio4_2_in;
    assign gpio4_2_out               = gpio4_2_pull_enable ? fabric_io_config_bit0[34] : fabric_io_out[34];
    assign gpio4_2_oe_n              = !(gpio4_2_pull_enable || fabric_io_oe[34]);
    assign gpio4_2_inp_dis           = gpio4_2_zero;
    assign gpio4_2_vtrip_sel         = gpio4_2_zero;
    assign gpio4_2_slow              = fabric_io_config_bit2[34];
    assign gpio4_2_hld_ovr           = gpio4_2_zero;
    assign gpio4_2_analog_en         = gpio4_2_zero;
    assign gpio4_2_analog_sel        = gpio4_2_zero;
    assign gpio4_2_analog_pol        = gpio4_2_zero;
    assign gpio4_2_dm                = gpio4_2_pull_enable ? {gpio4_2_one, gpio4_2_one, gpio4_2_one} : // weak
                                       fabric_io_config_bit3[34] ? {gpio4_2_one, gpio4_2_zero, gpio4_2_zero} : // open-drain
                                       {gpio4_2_one, gpio4_2_one, gpio4_2_zero}; // strong
    assign gpio4_2_enable_vddio      = gpio4_2_one;
    assign gpio4_2_enable_inp_h      = gpio4_2_tie_lo_esd;
    assign gpio4_2_enable_h          = porb_h; // TODO
    assign gpio4_2_hld_h_n           = gpio4_2_tie_hi_esd;
    assign gpio4_2_enable_vswitch_h  = gpio4_2_tie_lo_esd;
    assign gpio4_2_enable_vdda_h     = porb_h; // TODO
    assign gpio4_2_ib_mode_sel       = gpio4_2_zero; // VDDIO


    // Fabric GPIO fabric_io[35]
            
    wire gpio4_3_pull_enable;
    assign gpio4_3_pull_enable = (fabric_io_config_bit0[35] ^ fabric_io_config_bit1[35]) && !fabric_io_oe[35];
            
    assign fabric_io_in[35]    = gpio4_3_in;
    assign gpio4_3_out               = gpio4_3_pull_enable ? fabric_io_config_bit0[35] : fabric_io_out[35];
    assign gpio4_3_oe_n              = !(gpio4_3_pull_enable || fabric_io_oe[35]);
    assign gpio4_3_inp_dis           = gpio4_3_zero;
    assign gpio4_3_vtrip_sel         = gpio4_3_zero;
    assign gpio4_3_slow              = fabric_io_config_bit2[35];
    assign gpio4_3_hld_ovr           = gpio4_3_zero;
    assign gpio4_3_analog_en         = gpio4_3_zero;
    assign gpio4_3_analog_sel        = gpio4_3_zero;
    assign gpio4_3_analog_pol        = gpio4_3_zero;
    assign gpio4_3_dm                = gpio4_3_pull_enable ? {gpio4_3_one, gpio4_3_one, gpio4_3_one} : // weak
                                       fabric_io_config_bit3[35] ? {gpio4_3_one, gpio4_3_zero, gpio4_3_zero} : // open-drain
                                       {gpio4_3_one, gpio4_3_one, gpio4_3_zero}; // strong
    assign gpio4_3_enable_vddio      = gpio4_3_one;
    assign gpio4_3_enable_inp_h      = gpio4_3_tie_lo_esd;
    assign gpio4_3_enable_h          = porb_h; // TODO
    assign gpio4_3_hld_h_n           = gpio4_3_tie_hi_esd;
    assign gpio4_3_enable_vswitch_h  = gpio4_3_tie_lo_esd;
    assign gpio4_3_enable_vdda_h     = porb_h; // TODO
    assign gpio4_3_ib_mode_sel       = gpio4_3_zero; // VDDIO


    // Fabric GPIO fabric_io[36]
            
    wire gpio4_4_pull_enable;
    assign gpio4_4_pull_enable = (fabric_io_config_bit0[36] ^ fabric_io_config_bit1[36]) && !fabric_io_oe[36];
            
    assign fabric_io_in[36]    = gpio4_4_in;
    assign gpio4_4_out               = gpio4_4_pull_enable ? fabric_io_config_bit0[36] : fabric_io_out[36];
    assign gpio4_4_oe_n              = !(gpio4_4_pull_enable || fabric_io_oe[36]);
    assign gpio4_4_inp_dis           = gpio4_4_zero;
    assign gpio4_4_vtrip_sel         = gpio4_4_zero;
    assign gpio4_4_slow              = fabric_io_config_bit2[36];
    assign gpio4_4_hld_ovr           = gpio4_4_zero;
    assign gpio4_4_analog_en         = gpio4_4_zero;
    assign gpio4_4_analog_sel        = gpio4_4_zero;
    assign gpio4_4_analog_pol        = gpio4_4_zero;
    assign gpio4_4_dm                = gpio4_4_pull_enable ? {gpio4_4_one, gpio4_4_one, gpio4_4_one} : // weak
                                       fabric_io_config_bit3[36] ? {gpio4_4_one, gpio4_4_zero, gpio4_4_zero} : // open-drain
                                       {gpio4_4_one, gpio4_4_one, gpio4_4_zero}; // strong
    assign gpio4_4_enable_vddio      = gpio4_4_one;
    assign gpio4_4_enable_inp_h      = gpio4_4_tie_lo_esd;
    assign gpio4_4_enable_h          = porb_h; // TODO
    assign gpio4_4_hld_h_n           = gpio4_4_tie_hi_esd;
    assign gpio4_4_enable_vswitch_h  = gpio4_4_tie_lo_esd;
    assign gpio4_4_enable_vdda_h     = porb_h; // TODO
    assign gpio4_4_ib_mode_sel       = gpio4_4_zero; // VDDIO


    // Fabric GPIO fabric_io[37]
            
    wire gpio4_5_pull_enable;
    assign gpio4_5_pull_enable = (fabric_io_config_bit0[37] ^ fabric_io_config_bit1[37]) && !fabric_io_oe[37];
            
    assign fabric_io_in[37]    = gpio4_5_in;
    assign gpio4_5_out               = gpio4_5_pull_enable ? fabric_io_config_bit0[37] : fabric_io_out[37];
    assign gpio4_5_oe_n              = !(gpio4_5_pull_enable || fabric_io_oe[37]);
    assign gpio4_5_inp_dis           = gpio4_5_zero;
    assign gpio4_5_vtrip_sel         = gpio4_5_zero;
    assign gpio4_5_slow              = fabric_io_config_bit2[37];
    assign gpio4_5_hld_ovr           = gpio4_5_zero;
    assign gpio4_5_analog_en         = gpio4_5_zero;
    assign gpio4_5_analog_sel        = gpio4_5_zero;
    assign gpio4_5_analog_pol        = gpio4_5_zero;
    assign gpio4_5_dm                = gpio4_5_pull_enable ? {gpio4_5_one, gpio4_5_one, gpio4_5_one} : // weak
                                       fabric_io_config_bit3[37] ? {gpio4_5_one, gpio4_5_zero, gpio4_5_zero} : // open-drain
                                       {gpio4_5_one, gpio4_5_one, gpio4_5_zero}; // strong
    assign gpio4_5_enable_vddio      = gpio4_5_one;
    assign gpio4_5_enable_inp_h      = gpio4_5_tie_lo_esd;
    assign gpio4_5_enable_h          = porb_h; // TODO
    assign gpio4_5_hld_h_n           = gpio4_5_tie_hi_esd;
    assign gpio4_5_enable_vswitch_h  = gpio4_5_tie_lo_esd;
    assign gpio4_5_enable_vdda_h     = porb_h; // TODO
    assign gpio4_5_ib_mode_sel       = gpio4_5_zero; // VDDIO


    // Fabric GPIO fabric_io[38]
            
    wire gpio4_6_pull_enable;
    assign gpio4_6_pull_enable = (fabric_io_config_bit0[38] ^ fabric_io_config_bit1[38]) && !fabric_io_oe[38];
            
    assign fabric_io_in[38]    = gpio4_6_in;
    assign gpio4_6_out               = gpio4_6_pull_enable ? fabric_io_config_bit0[38] : fabric_io_out[38];
    assign gpio4_6_oe_n              = !(gpio4_6_pull_enable || fabric_io_oe[38]);
    assign gpio4_6_inp_dis           = gpio4_6_zero;
    assign gpio4_6_vtrip_sel         = gpio4_6_zero;
    assign gpio4_6_slow              = fabric_io_config_bit2[38];
    assign gpio4_6_hld_ovr           = gpio4_6_zero;
    assign gpio4_6_analog_en         = gpio4_6_zero;
    assign gpio4_6_analog_sel        = gpio4_6_zero;
    assign gpio4_6_analog_pol        = gpio4_6_zero;
    assign gpio4_6_dm                = gpio4_6_pull_enable ? {gpio4_6_one, gpio4_6_one, gpio4_6_one} : // weak
                                       fabric_io_config_bit3[38] ? {gpio4_6_one, gpio4_6_zero, gpio4_6_zero} : // open-drain
                                       {gpio4_6_one, gpio4_6_one, gpio4_6_zero}; // strong
    assign gpio4_6_enable_vddio      = gpio4_6_one;
    assign gpio4_6_enable_inp_h      = gpio4_6_tie_lo_esd;
    assign gpio4_6_enable_h          = porb_h; // TODO
    assign gpio4_6_hld_h_n           = gpio4_6_tie_hi_esd;
    assign gpio4_6_enable_vswitch_h  = gpio4_6_tie_lo_esd;
    assign gpio4_6_enable_vdda_h     = porb_h; // TODO
    assign gpio4_6_ib_mode_sel       = gpio4_6_zero; // VDDIO


    // Fabric GPIO fabric_io[39]
            
    wire gpio4_7_pull_enable;
    assign gpio4_7_pull_enable = (fabric_io_config_bit0[39] ^ fabric_io_config_bit1[39]) && !fabric_io_oe[39];
            
    assign fabric_io_in[39]    = gpio4_7_in;
    assign gpio4_7_out               = gpio4_7_pull_enable ? fabric_io_config_bit0[39] : fabric_io_out[39];
    assign gpio4_7_oe_n              = !(gpio4_7_pull_enable || fabric_io_oe[39]);
    assign gpio4_7_inp_dis           = gpio4_7_zero;
    assign gpio4_7_vtrip_sel         = gpio4_7_zero;
    assign gpio4_7_slow              = fabric_io_config_bit2[39];
    assign gpio4_7_hld_ovr           = gpio4_7_zero;
    assign gpio4_7_analog_en         = gpio4_7_zero;
    assign gpio4_7_analog_sel        = gpio4_7_zero;
    assign gpio4_7_analog_pol        = gpio4_7_zero;
    assign gpio4_7_dm                = gpio4_7_pull_enable ? {gpio4_7_one, gpio4_7_one, gpio4_7_one} : // weak
                                       fabric_io_config_bit3[39] ? {gpio4_7_one, gpio4_7_zero, gpio4_7_zero} : // open-drain
                                       {gpio4_7_one, gpio4_7_one, gpio4_7_zero}; // strong
    assign gpio4_7_enable_vddio      = gpio4_7_one;
    assign gpio4_7_enable_inp_h      = gpio4_7_tie_lo_esd;
    assign gpio4_7_enable_h          = porb_h; // TODO
    assign gpio4_7_hld_h_n           = gpio4_7_tie_hi_esd;
    assign gpio4_7_enable_vswitch_h  = gpio4_7_tie_lo_esd;
    assign gpio4_7_enable_vdda_h     = porb_h; // TODO
    assign gpio4_7_ib_mode_sel       = gpio4_7_zero; // VDDIO


    // Fabric GPIO fabric_io[40]
            
    wire gpio5_0_pull_enable;
    assign gpio5_0_pull_enable = (fabric_io_config_bit0[40] ^ fabric_io_config_bit1[40]) && !fabric_io_oe[40];
            
    assign fabric_io_in[40]    = gpio5_0_in;
    assign gpio5_0_out               = gpio5_0_pull_enable ? fabric_io_config_bit0[40] : fabric_io_out[40];
    assign gpio5_0_oe_n              = !(gpio5_0_pull_enable || fabric_io_oe[40]);
    assign gpio5_0_inp_dis           = gpio5_0_zero;
    assign gpio5_0_vtrip_sel         = gpio5_0_zero;
    assign gpio5_0_slow              = fabric_io_config_bit2[40];
    assign gpio5_0_hld_ovr           = gpio5_0_zero;
    assign gpio5_0_analog_en         = gpio5_0_zero;
    assign gpio5_0_analog_sel        = gpio5_0_zero;
    assign gpio5_0_analog_pol        = gpio5_0_zero;
    assign gpio5_0_dm                = gpio5_0_pull_enable ? {gpio5_0_one, gpio5_0_one, gpio5_0_one} : // weak
                                       fabric_io_config_bit3[40] ? {gpio5_0_one, gpio5_0_zero, gpio5_0_zero} : // open-drain
                                       {gpio5_0_one, gpio5_0_one, gpio5_0_zero}; // strong
    assign gpio5_0_enable_vddio      = gpio5_0_one;
    assign gpio5_0_enable_inp_h      = gpio5_0_tie_lo_esd;
    assign gpio5_0_enable_h          = porb_h; // TODO
    assign gpio5_0_hld_h_n           = gpio5_0_tie_hi_esd;
    assign gpio5_0_enable_vswitch_h  = gpio5_0_tie_lo_esd;
    assign gpio5_0_enable_vdda_h     = porb_h; // TODO
    assign gpio5_0_ib_mode_sel       = gpio5_0_zero; // VDDIO


    // Fabric GPIO fabric_io[41]
            
    wire gpio5_1_pull_enable;
    assign gpio5_1_pull_enable = (fabric_io_config_bit0[41] ^ fabric_io_config_bit1[41]) && !fabric_io_oe[41];
            
    assign fabric_io_in[41]    = gpio5_1_in;
    assign gpio5_1_out               = gpio5_1_pull_enable ? fabric_io_config_bit0[41] : fabric_io_out[41];
    assign gpio5_1_oe_n              = !(gpio5_1_pull_enable || fabric_io_oe[41]);
    assign gpio5_1_inp_dis           = gpio5_1_zero;
    assign gpio5_1_vtrip_sel         = gpio5_1_zero;
    assign gpio5_1_slow              = fabric_io_config_bit2[41];
    assign gpio5_1_hld_ovr           = gpio5_1_zero;
    assign gpio5_1_analog_en         = gpio5_1_zero;
    assign gpio5_1_analog_sel        = gpio5_1_zero;
    assign gpio5_1_analog_pol        = gpio5_1_zero;
    assign gpio5_1_dm                = gpio5_1_pull_enable ? {gpio5_1_one, gpio5_1_one, gpio5_1_one} : // weak
                                       fabric_io_config_bit3[41] ? {gpio5_1_one, gpio5_1_zero, gpio5_1_zero} : // open-drain
                                       {gpio5_1_one, gpio5_1_one, gpio5_1_zero}; // strong
    assign gpio5_1_enable_vddio      = gpio5_1_one;
    assign gpio5_1_enable_inp_h      = gpio5_1_tie_lo_esd;
    assign gpio5_1_enable_h          = porb_h; // TODO
    assign gpio5_1_hld_h_n           = gpio5_1_tie_hi_esd;
    assign gpio5_1_enable_vswitch_h  = gpio5_1_tie_lo_esd;
    assign gpio5_1_enable_vdda_h     = porb_h; // TODO
    assign gpio5_1_ib_mode_sel       = gpio5_1_zero; // VDDIO


    // Fabric GPIO fabric_io[42]
            
    wire gpio5_2_pull_enable;
    assign gpio5_2_pull_enable = (fabric_io_config_bit0[42] ^ fabric_io_config_bit1[42]) && !fabric_io_oe[42];
            
    assign fabric_io_in[42]    = gpio5_2_in;
    assign gpio5_2_out               = gpio5_2_pull_enable ? fabric_io_config_bit0[42] : fabric_io_out[42];
    assign gpio5_2_oe_n              = !(gpio5_2_pull_enable || fabric_io_oe[42]);
    assign gpio5_2_inp_dis           = gpio5_2_zero;
    assign gpio5_2_vtrip_sel         = gpio5_2_zero;
    assign gpio5_2_slow              = fabric_io_config_bit2[42];
    assign gpio5_2_hld_ovr           = gpio5_2_zero;
    assign gpio5_2_analog_en         = gpio5_2_zero;
    assign gpio5_2_analog_sel        = gpio5_2_zero;
    assign gpio5_2_analog_pol        = gpio5_2_zero;
    assign gpio5_2_dm                = gpio5_2_pull_enable ? {gpio5_2_one, gpio5_2_one, gpio5_2_one} : // weak
                                       fabric_io_config_bit3[42] ? {gpio5_2_one, gpio5_2_zero, gpio5_2_zero} : // open-drain
                                       {gpio5_2_one, gpio5_2_one, gpio5_2_zero}; // strong
    assign gpio5_2_enable_vddio      = gpio5_2_one;
    assign gpio5_2_enable_inp_h      = gpio5_2_tie_lo_esd;
    assign gpio5_2_enable_h          = porb_h; // TODO
    assign gpio5_2_hld_h_n           = gpio5_2_tie_hi_esd;
    assign gpio5_2_enable_vswitch_h  = gpio5_2_tie_lo_esd;
    assign gpio5_2_enable_vdda_h     = porb_h; // TODO
    assign gpio5_2_ib_mode_sel       = gpio5_2_zero; // VDDIO


    // Fabric GPIO fabric_io[43]
            
    wire gpio5_3_pull_enable;
    assign gpio5_3_pull_enable = (fabric_io_config_bit0[43] ^ fabric_io_config_bit1[43]) && !fabric_io_oe[43];
            
    assign fabric_io_in[43]    = gpio5_3_in;
    assign gpio5_3_out               = gpio5_3_pull_enable ? fabric_io_config_bit0[43] : fabric_io_out[43];
    assign gpio5_3_oe_n              = !(gpio5_3_pull_enable || fabric_io_oe[43]);
    assign gpio5_3_inp_dis           = gpio5_3_zero;
    assign gpio5_3_vtrip_sel         = gpio5_3_zero;
    assign gpio5_3_slow              = fabric_io_config_bit2[43];
    assign gpio5_3_hld_ovr           = gpio5_3_zero;
    assign gpio5_3_analog_en         = gpio5_3_zero;
    assign gpio5_3_analog_sel        = gpio5_3_zero;
    assign gpio5_3_analog_pol        = gpio5_3_zero;
    assign gpio5_3_dm                = gpio5_3_pull_enable ? {gpio5_3_one, gpio5_3_one, gpio5_3_one} : // weak
                                       fabric_io_config_bit3[43] ? {gpio5_3_one, gpio5_3_zero, gpio5_3_zero} : // open-drain
                                       {gpio5_3_one, gpio5_3_one, gpio5_3_zero}; // strong
    assign gpio5_3_enable_vddio      = gpio5_3_one;
    assign gpio5_3_enable_inp_h      = gpio5_3_tie_lo_esd;
    assign gpio5_3_enable_h          = porb_h; // TODO
    assign gpio5_3_hld_h_n           = gpio5_3_tie_hi_esd;
    assign gpio5_3_enable_vswitch_h  = gpio5_3_tie_lo_esd;
    assign gpio5_3_enable_vdda_h     = porb_h; // TODO
    assign gpio5_3_ib_mode_sel       = gpio5_3_zero; // VDDIO


    // Fabric GPIO fabric_io[44]
            
    wire gpio5_4_pull_enable;
    assign gpio5_4_pull_enable = (fabric_io_config_bit0[44] ^ fabric_io_config_bit1[44]) && !fabric_io_oe[44];
            
    assign fabric_io_in[44]    = gpio5_4_in;
    assign gpio5_4_out               = gpio5_4_pull_enable ? fabric_io_config_bit0[44] : fabric_io_out[44];
    assign gpio5_4_oe_n              = !(gpio5_4_pull_enable || fabric_io_oe[44]);
    assign gpio5_4_inp_dis           = gpio5_4_zero;
    assign gpio5_4_vtrip_sel         = gpio5_4_zero;
    assign gpio5_4_slow              = fabric_io_config_bit2[44];
    assign gpio5_4_hld_ovr           = gpio5_4_zero;
    assign gpio5_4_analog_en         = gpio5_4_zero;
    assign gpio5_4_analog_sel        = gpio5_4_zero;
    assign gpio5_4_analog_pol        = gpio5_4_zero;
    assign gpio5_4_dm                = gpio5_4_pull_enable ? {gpio5_4_one, gpio5_4_one, gpio5_4_one} : // weak
                                       fabric_io_config_bit3[44] ? {gpio5_4_one, gpio5_4_zero, gpio5_4_zero} : // open-drain
                                       {gpio5_4_one, gpio5_4_one, gpio5_4_zero}; // strong
    assign gpio5_4_enable_vddio      = gpio5_4_one;
    assign gpio5_4_enable_inp_h      = gpio5_4_tie_lo_esd;
    assign gpio5_4_enable_h          = porb_h; // TODO
    assign gpio5_4_hld_h_n           = gpio5_4_tie_hi_esd;
    assign gpio5_4_enable_vswitch_h  = gpio5_4_tie_lo_esd;
    assign gpio5_4_enable_vdda_h     = porb_h; // TODO
    assign gpio5_4_ib_mode_sel       = gpio5_4_zero; // VDDIO


    // Fabric GPIO fabric_io[45]
            
    wire gpio5_5_pull_enable;
    assign gpio5_5_pull_enable = (fabric_io_config_bit0[45] ^ fabric_io_config_bit1[45]) && !fabric_io_oe[45];
            
    assign fabric_io_in[45]    = gpio5_5_in;
    assign gpio5_5_out               = gpio5_5_pull_enable ? fabric_io_config_bit0[45] : fabric_io_out[45];
    assign gpio5_5_oe_n              = !(gpio5_5_pull_enable || fabric_io_oe[45]);
    assign gpio5_5_inp_dis           = gpio5_5_zero;
    assign gpio5_5_vtrip_sel         = gpio5_5_zero;
    assign gpio5_5_slow              = fabric_io_config_bit2[45];
    assign gpio5_5_hld_ovr           = gpio5_5_zero;
    assign gpio5_5_analog_en         = gpio5_5_zero;
    assign gpio5_5_analog_sel        = gpio5_5_zero;
    assign gpio5_5_analog_pol        = gpio5_5_zero;
    assign gpio5_5_dm                = gpio5_5_pull_enable ? {gpio5_5_one, gpio5_5_one, gpio5_5_one} : // weak
                                       fabric_io_config_bit3[45] ? {gpio5_5_one, gpio5_5_zero, gpio5_5_zero} : // open-drain
                                       {gpio5_5_one, gpio5_5_one, gpio5_5_zero}; // strong
    assign gpio5_5_enable_vddio      = gpio5_5_one;
    assign gpio5_5_enable_inp_h      = gpio5_5_tie_lo_esd;
    assign gpio5_5_enable_h          = porb_h; // TODO
    assign gpio5_5_hld_h_n           = gpio5_5_tie_hi_esd;
    assign gpio5_5_enable_vswitch_h  = gpio5_5_tie_lo_esd;
    assign gpio5_5_enable_vdda_h     = porb_h; // TODO
    assign gpio5_5_ib_mode_sel       = gpio5_5_zero; // VDDIO


    // Fabric GPIO fabric_io[46]
            
    wire gpio5_6_pull_enable;
    assign gpio5_6_pull_enable = (fabric_io_config_bit0[46] ^ fabric_io_config_bit1[46]) && !fabric_io_oe[46];
            
    assign fabric_io_in[46]    = gpio5_6_in;
    assign gpio5_6_out               = gpio5_6_pull_enable ? fabric_io_config_bit0[46] : fabric_io_out[46];
    assign gpio5_6_oe_n              = !(gpio5_6_pull_enable || fabric_io_oe[46]);
    assign gpio5_6_inp_dis           = gpio5_6_zero;
    assign gpio5_6_vtrip_sel         = gpio5_6_zero;
    assign gpio5_6_slow              = fabric_io_config_bit2[46];
    assign gpio5_6_hld_ovr           = gpio5_6_zero;
    assign gpio5_6_analog_en         = gpio5_6_zero;
    assign gpio5_6_analog_sel        = gpio5_6_zero;
    assign gpio5_6_analog_pol        = gpio5_6_zero;
    assign gpio5_6_dm                = gpio5_6_pull_enable ? {gpio5_6_one, gpio5_6_one, gpio5_6_one} : // weak
                                       fabric_io_config_bit3[46] ? {gpio5_6_one, gpio5_6_zero, gpio5_6_zero} : // open-drain
                                       {gpio5_6_one, gpio5_6_one, gpio5_6_zero}; // strong
    assign gpio5_6_enable_vddio      = gpio5_6_one;
    assign gpio5_6_enable_inp_h      = gpio5_6_tie_lo_esd;
    assign gpio5_6_enable_h          = porb_h; // TODO
    assign gpio5_6_hld_h_n           = gpio5_6_tie_hi_esd;
    assign gpio5_6_enable_vswitch_h  = gpio5_6_tie_lo_esd;
    assign gpio5_6_enable_vdda_h     = porb_h; // TODO
    assign gpio5_6_ib_mode_sel       = gpio5_6_zero; // VDDIO


    // Fabric GPIO fabric_io[47]
            
    wire gpio5_7_pull_enable;
    assign gpio5_7_pull_enable = (fabric_io_config_bit0[47] ^ fabric_io_config_bit1[47]) && !fabric_io_oe[47];
            
    assign fabric_io_in[47]    = gpio5_7_in;
    assign gpio5_7_out               = gpio5_7_pull_enable ? fabric_io_config_bit0[47] : fabric_io_out[47];
    assign gpio5_7_oe_n              = !(gpio5_7_pull_enable || fabric_io_oe[47]);
    assign gpio5_7_inp_dis           = gpio5_7_zero;
    assign gpio5_7_vtrip_sel         = gpio5_7_zero;
    assign gpio5_7_slow              = fabric_io_config_bit2[47];
    assign gpio5_7_hld_ovr           = gpio5_7_zero;
    assign gpio5_7_analog_en         = gpio5_7_zero;
    assign gpio5_7_analog_sel        = gpio5_7_zero;
    assign gpio5_7_analog_pol        = gpio5_7_zero;
    assign gpio5_7_dm                = gpio5_7_pull_enable ? {gpio5_7_one, gpio5_7_one, gpio5_7_one} : // weak
                                       fabric_io_config_bit3[47] ? {gpio5_7_one, gpio5_7_zero, gpio5_7_zero} : // open-drain
                                       {gpio5_7_one, gpio5_7_one, gpio5_7_zero}; // strong
    assign gpio5_7_enable_vddio      = gpio5_7_one;
    assign gpio5_7_enable_inp_h      = gpio5_7_tie_lo_esd;
    assign gpio5_7_enable_h          = porb_h; // TODO
    assign gpio5_7_hld_h_n           = gpio5_7_tie_hi_esd;
    assign gpio5_7_enable_vswitch_h  = gpio5_7_tie_lo_esd;
    assign gpio5_7_enable_vdda_h     = porb_h; // TODO
    assign gpio5_7_ib_mode_sel       = gpio5_7_zero; // VDDIO


    // Fabric GPIO fabric_io[48]
            
    wire gpio6_0_pull_enable;
    assign gpio6_0_pull_enable = (fabric_io_config_bit0[48] ^ fabric_io_config_bit1[48]) && !fabric_io_oe[48];
            
    assign fabric_io_in[48]    = gpio6_0_in;
    assign gpio6_0_out               = gpio6_0_pull_enable ? fabric_io_config_bit0[48] : fabric_io_out[48];
    assign gpio6_0_oe_n              = !(gpio6_0_pull_enable || fabric_io_oe[48]);
    assign gpio6_0_inp_dis           = gpio6_0_zero;
    assign gpio6_0_vtrip_sel         = gpio6_0_zero;
    assign gpio6_0_slow              = fabric_io_config_bit2[48];
    assign gpio6_0_hld_ovr           = gpio6_0_zero;
    assign gpio6_0_analog_en         = gpio6_0_zero;
    assign gpio6_0_analog_sel        = gpio6_0_zero;
    assign gpio6_0_analog_pol        = gpio6_0_zero;
    assign gpio6_0_dm                = gpio6_0_pull_enable ? {gpio6_0_one, gpio6_0_one, gpio6_0_one} : // weak
                                       fabric_io_config_bit3[48] ? {gpio6_0_one, gpio6_0_zero, gpio6_0_zero} : // open-drain
                                       {gpio6_0_one, gpio6_0_one, gpio6_0_zero}; // strong
    assign gpio6_0_enable_vddio      = gpio6_0_one;
    assign gpio6_0_enable_inp_h      = gpio6_0_tie_lo_esd;
    assign gpio6_0_enable_h          = porb_h; // TODO
    assign gpio6_0_hld_h_n           = gpio6_0_tie_hi_esd;
    assign gpio6_0_enable_vswitch_h  = gpio6_0_tie_lo_esd;
    assign gpio6_0_enable_vdda_h     = porb_h; // TODO
    assign gpio6_0_slew_ctl          = {gpio6_0_zero, gpio6_0_zero}; // slew rate in I2C mode
    assign gpio6_0_hys_trim          = gpio6_0_one; // 1 for input signaling voltage > 2.2V 
    assign gpio6_0_ib_mode_sel       = {gpio6_0_zero, gpio6_0_zero}; // CMOS input buffer, VDDIO


    // Fabric GPIO fabric_io[49]
            
    wire gpio6_1_pull_enable;
    assign gpio6_1_pull_enable = (fabric_io_config_bit0[49] ^ fabric_io_config_bit1[49]) && !fabric_io_oe[49];
            
    assign fabric_io_in[49]    = gpio6_1_in;
    assign gpio6_1_out               = gpio6_1_pull_enable ? fabric_io_config_bit0[49] : fabric_io_out[49];
    assign gpio6_1_oe_n              = !(gpio6_1_pull_enable || fabric_io_oe[49]);
    assign gpio6_1_inp_dis           = gpio6_1_zero;
    assign gpio6_1_vtrip_sel         = gpio6_1_zero;
    assign gpio6_1_slow              = fabric_io_config_bit2[49];
    assign gpio6_1_hld_ovr           = gpio6_1_zero;
    assign gpio6_1_analog_en         = gpio6_1_zero;
    assign gpio6_1_analog_sel        = gpio6_1_zero;
    assign gpio6_1_analog_pol        = gpio6_1_zero;
    assign gpio6_1_dm                = gpio6_1_pull_enable ? {gpio6_1_one, gpio6_1_one, gpio6_1_one} : // weak
                                       fabric_io_config_bit3[49] ? {gpio6_1_one, gpio6_1_zero, gpio6_1_zero} : // open-drain
                                       {gpio6_1_one, gpio6_1_one, gpio6_1_zero}; // strong
    assign gpio6_1_enable_vddio      = gpio6_1_one;
    assign gpio6_1_enable_inp_h      = gpio6_1_tie_lo_esd;
    assign gpio6_1_enable_h          = porb_h; // TODO
    assign gpio6_1_hld_h_n           = gpio6_1_tie_hi_esd;
    assign gpio6_1_enable_vswitch_h  = gpio6_1_tie_lo_esd;
    assign gpio6_1_enable_vdda_h     = porb_h; // TODO
    assign gpio6_1_slew_ctl          = {gpio6_1_zero, gpio6_1_zero}; // slew rate in I2C mode
    assign gpio6_1_hys_trim          = gpio6_1_one; // 1 for input signaling voltage > 2.2V 
    assign gpio6_1_ib_mode_sel       = {gpio6_1_zero, gpio6_1_zero}; // CMOS input buffer, VDDIO


    // Fabric GPIO fabric_io[50]
            
    wire gpio6_2_pull_enable;
    assign gpio6_2_pull_enable = (fabric_io_config_bit0[50] ^ fabric_io_config_bit1[50]) && !fabric_io_oe[50];
            
    assign fabric_io_in[50]    = gpio6_2_in;
    assign gpio6_2_out               = gpio6_2_pull_enable ? fabric_io_config_bit0[50] : fabric_io_out[50];
    assign gpio6_2_oe_n              = !(gpio6_2_pull_enable || fabric_io_oe[50]);
    assign gpio6_2_inp_dis           = gpio6_2_zero;
    assign gpio6_2_vtrip_sel         = gpio6_2_zero;
    assign gpio6_2_slow              = fabric_io_config_bit2[50];
    assign gpio6_2_hld_ovr           = gpio6_2_zero;
    assign gpio6_2_analog_en         = gpio6_2_zero;
    assign gpio6_2_analog_sel        = gpio6_2_zero;
    assign gpio6_2_analog_pol        = gpio6_2_zero;
    assign gpio6_2_dm                = gpio6_2_pull_enable ? {gpio6_2_one, gpio6_2_one, gpio6_2_one} : // weak
                                       fabric_io_config_bit3[50] ? {gpio6_2_one, gpio6_2_zero, gpio6_2_zero} : // open-drain
                                       {gpio6_2_one, gpio6_2_one, gpio6_2_zero}; // strong
    assign gpio6_2_enable_vddio      = gpio6_2_one;
    assign gpio6_2_enable_inp_h      = gpio6_2_tie_lo_esd;
    assign gpio6_2_enable_h          = porb_h; // TODO
    assign gpio6_2_hld_h_n           = gpio6_2_tie_hi_esd;
    assign gpio6_2_enable_vswitch_h  = gpio6_2_tie_lo_esd;
    assign gpio6_2_enable_vdda_h     = porb_h; // TODO
    assign gpio6_2_slew_ctl          = {gpio6_2_zero, gpio6_2_zero}; // slew rate in I2C mode
    assign gpio6_2_hys_trim          = gpio6_2_one; // 1 for input signaling voltage > 2.2V 
    assign gpio6_2_ib_mode_sel       = {gpio6_2_zero, gpio6_2_zero}; // CMOS input buffer, VDDIO


    // Fabric GPIO fabric_io[51]
            
    wire gpio6_3_pull_enable;
    assign gpio6_3_pull_enable = (fabric_io_config_bit0[51] ^ fabric_io_config_bit1[51]) && !fabric_io_oe[51];
            
    assign fabric_io_in[51]    = gpio6_3_in;
    assign gpio6_3_out               = gpio6_3_pull_enable ? fabric_io_config_bit0[51] : fabric_io_out[51];
    assign gpio6_3_oe_n              = !(gpio6_3_pull_enable || fabric_io_oe[51]);
    assign gpio6_3_inp_dis           = gpio6_3_zero;
    assign gpio6_3_vtrip_sel         = gpio6_3_zero;
    assign gpio6_3_slow              = fabric_io_config_bit2[51];
    assign gpio6_3_hld_ovr           = gpio6_3_zero;
    assign gpio6_3_analog_en         = gpio6_3_zero;
    assign gpio6_3_analog_sel        = gpio6_3_zero;
    assign gpio6_3_analog_pol        = gpio6_3_zero;
    assign gpio6_3_dm                = gpio6_3_pull_enable ? {gpio6_3_one, gpio6_3_one, gpio6_3_one} : // weak
                                       fabric_io_config_bit3[51] ? {gpio6_3_one, gpio6_3_zero, gpio6_3_zero} : // open-drain
                                       {gpio6_3_one, gpio6_3_one, gpio6_3_zero}; // strong
    assign gpio6_3_enable_vddio      = gpio6_3_one;
    assign gpio6_3_enable_inp_h      = gpio6_3_tie_lo_esd;
    assign gpio6_3_enable_h          = porb_h; // TODO
    assign gpio6_3_hld_h_n           = gpio6_3_tie_hi_esd;
    assign gpio6_3_enable_vswitch_h  = gpio6_3_tie_lo_esd;
    assign gpio6_3_enable_vdda_h     = porb_h; // TODO
    assign gpio6_3_slew_ctl          = {gpio6_3_zero, gpio6_3_zero}; // slew rate in I2C mode
    assign gpio6_3_hys_trim          = gpio6_3_one; // 1 for input signaling voltage > 2.2V 
    assign gpio6_3_ib_mode_sel       = {gpio6_3_zero, gpio6_3_zero}; // CMOS input buffer, VDDIO


    // Fabric GPIO fabric_io[52]
            
    wire gpio6_4_pull_enable;
    assign gpio6_4_pull_enable = (fabric_io_config_bit0[52] ^ fabric_io_config_bit1[52]) && !fabric_io_oe[52];
            
    assign fabric_io_in[52]    = gpio6_4_in;
    assign gpio6_4_out               = gpio6_4_pull_enable ? fabric_io_config_bit0[52] : fabric_io_out[52];
    assign gpio6_4_oe_n              = !(gpio6_4_pull_enable || fabric_io_oe[52]);
    assign gpio6_4_inp_dis           = gpio6_4_zero;
    assign gpio6_4_vtrip_sel         = gpio6_4_zero;
    assign gpio6_4_slow              = fabric_io_config_bit2[52];
    assign gpio6_4_hld_ovr           = gpio6_4_zero;
    assign gpio6_4_analog_en         = gpio6_4_zero;
    assign gpio6_4_analog_sel        = gpio6_4_zero;
    assign gpio6_4_analog_pol        = gpio6_4_zero;
    assign gpio6_4_dm                = gpio6_4_pull_enable ? {gpio6_4_one, gpio6_4_one, gpio6_4_one} : // weak
                                       fabric_io_config_bit3[52] ? {gpio6_4_one, gpio6_4_zero, gpio6_4_zero} : // open-drain
                                       {gpio6_4_one, gpio6_4_one, gpio6_4_zero}; // strong
    assign gpio6_4_enable_vddio      = gpio6_4_one;
    assign gpio6_4_enable_inp_h      = gpio6_4_tie_lo_esd;
    assign gpio6_4_enable_h          = porb_h; // TODO
    assign gpio6_4_hld_h_n           = gpio6_4_tie_hi_esd;
    assign gpio6_4_enable_vswitch_h  = gpio6_4_tie_lo_esd;
    assign gpio6_4_enable_vdda_h     = porb_h; // TODO
    assign gpio6_4_slew_ctl          = {gpio6_4_zero, gpio6_4_zero}; // slew rate in I2C mode
    assign gpio6_4_hys_trim          = gpio6_4_one; // 1 for input signaling voltage > 2.2V 
    assign gpio6_4_ib_mode_sel       = {gpio6_4_zero, gpio6_4_zero}; // CMOS input buffer, VDDIO


    // Fabric GPIO fabric_io[53]
            
    wire gpio6_5_pull_enable;
    assign gpio6_5_pull_enable = (fabric_io_config_bit0[53] ^ fabric_io_config_bit1[53]) && !fabric_io_oe[53];
            
    assign fabric_io_in[53]    = gpio6_5_in;
    assign gpio6_5_out               = gpio6_5_pull_enable ? fabric_io_config_bit0[53] : fabric_io_out[53];
    assign gpio6_5_oe_n              = !(gpio6_5_pull_enable || fabric_io_oe[53]);
    assign gpio6_5_inp_dis           = gpio6_5_zero;
    assign gpio6_5_vtrip_sel         = gpio6_5_zero;
    assign gpio6_5_slow              = fabric_io_config_bit2[53];
    assign gpio6_5_hld_ovr           = gpio6_5_zero;
    assign gpio6_5_analog_en         = gpio6_5_zero;
    assign gpio6_5_analog_sel        = gpio6_5_zero;
    assign gpio6_5_analog_pol        = gpio6_5_zero;
    assign gpio6_5_dm                = gpio6_5_pull_enable ? {gpio6_5_one, gpio6_5_one, gpio6_5_one} : // weak
                                       fabric_io_config_bit3[53] ? {gpio6_5_one, gpio6_5_zero, gpio6_5_zero} : // open-drain
                                       {gpio6_5_one, gpio6_5_one, gpio6_5_zero}; // strong
    assign gpio6_5_enable_vddio      = gpio6_5_one;
    assign gpio6_5_enable_inp_h      = gpio6_5_tie_lo_esd;
    assign gpio6_5_enable_h          = porb_h; // TODO
    assign gpio6_5_hld_h_n           = gpio6_5_tie_hi_esd;
    assign gpio6_5_enable_vswitch_h  = gpio6_5_tie_lo_esd;
    assign gpio6_5_enable_vdda_h     = porb_h; // TODO
    assign gpio6_5_slew_ctl          = {gpio6_5_zero, gpio6_5_zero}; // slew rate in I2C mode
    assign gpio6_5_hys_trim          = gpio6_5_one; // 1 for input signaling voltage > 2.2V 
    assign gpio6_5_ib_mode_sel       = {gpio6_5_zero, gpio6_5_zero}; // CMOS input buffer, VDDIO


    // Fabric GPIO fabric_io[54]
            
    wire gpio6_6_pull_enable;
    assign gpio6_6_pull_enable = (fabric_io_config_bit0[54] ^ fabric_io_config_bit1[54]) && !fabric_io_oe[54];
            
    assign fabric_io_in[54]    = gpio6_6_in;
    assign gpio6_6_out               = gpio6_6_pull_enable ? fabric_io_config_bit0[54] : fabric_io_out[54];
    assign gpio6_6_oe_n              = !(gpio6_6_pull_enable || fabric_io_oe[54]);
    assign gpio6_6_inp_dis           = gpio6_6_zero;
    assign gpio6_6_vtrip_sel         = gpio6_6_zero;
    assign gpio6_6_slow              = fabric_io_config_bit2[54];
    assign gpio6_6_hld_ovr           = gpio6_6_zero;
    assign gpio6_6_analog_en         = gpio6_6_zero;
    assign gpio6_6_analog_sel        = gpio6_6_zero;
    assign gpio6_6_analog_pol        = gpio6_6_zero;
    assign gpio6_6_dm                = gpio6_6_pull_enable ? {gpio6_6_one, gpio6_6_one, gpio6_6_one} : // weak
                                       fabric_io_config_bit3[54] ? {gpio6_6_one, gpio6_6_zero, gpio6_6_zero} : // open-drain
                                       {gpio6_6_one, gpio6_6_one, gpio6_6_zero}; // strong
    assign gpio6_6_enable_vddio      = gpio6_6_one;
    assign gpio6_6_enable_inp_h      = gpio6_6_tie_lo_esd;
    assign gpio6_6_enable_h          = porb_h; // TODO
    assign gpio6_6_hld_h_n           = gpio6_6_tie_hi_esd;
    assign gpio6_6_enable_vswitch_h  = gpio6_6_tie_lo_esd;
    assign gpio6_6_enable_vdda_h     = porb_h; // TODO
    assign gpio6_6_slew_ctl          = {gpio6_6_zero, gpio6_6_zero}; // slew rate in I2C mode
    assign gpio6_6_hys_trim          = gpio6_6_one; // 1 for input signaling voltage > 2.2V 
    assign gpio6_6_ib_mode_sel       = {gpio6_6_zero, gpio6_6_zero}; // CMOS input buffer, VDDIO


    // Fabric GPIO fabric_io[55]
            
    wire gpio6_7_pull_enable;
    assign gpio6_7_pull_enable = (fabric_io_config_bit0[55] ^ fabric_io_config_bit1[55]) && !fabric_io_oe[55];
            
    assign fabric_io_in[55]    = gpio6_7_in;
    assign gpio6_7_out               = gpio6_7_pull_enable ? fabric_io_config_bit0[55] : fabric_io_out[55];
    assign gpio6_7_oe_n              = !(gpio6_7_pull_enable || fabric_io_oe[55]);
    assign gpio6_7_inp_dis           = gpio6_7_zero;
    assign gpio6_7_vtrip_sel         = gpio6_7_zero;
    assign gpio6_7_slow              = fabric_io_config_bit2[55];
    assign gpio6_7_hld_ovr           = gpio6_7_zero;
    assign gpio6_7_analog_en         = gpio6_7_zero;
    assign gpio6_7_analog_sel        = gpio6_7_zero;
    assign gpio6_7_analog_pol        = gpio6_7_zero;
    assign gpio6_7_dm                = gpio6_7_pull_enable ? {gpio6_7_one, gpio6_7_one, gpio6_7_one} : // weak
                                       fabric_io_config_bit3[55] ? {gpio6_7_one, gpio6_7_zero, gpio6_7_zero} : // open-drain
                                       {gpio6_7_one, gpio6_7_one, gpio6_7_zero}; // strong
    assign gpio6_7_enable_vddio      = gpio6_7_one;
    assign gpio6_7_enable_inp_h      = gpio6_7_tie_lo_esd;
    assign gpio6_7_enable_h          = porb_h; // TODO
    assign gpio6_7_hld_h_n           = gpio6_7_tie_hi_esd;
    assign gpio6_7_enable_vswitch_h  = gpio6_7_tie_lo_esd;
    assign gpio6_7_enable_vdda_h     = porb_h; // TODO
    assign gpio6_7_slew_ctl          = {gpio6_7_zero, gpio6_7_zero}; // slew rate in I2C mode
    assign gpio6_7_hys_trim          = gpio6_7_one; // 1 for input signaling voltage > 2.2V 
    assign gpio6_7_ib_mode_sel       = {gpio6_7_zero, gpio6_7_zero}; // CMOS input buffer, VDDIO


    // Fabric GPIO fabric_io[56]
            
    wire gpio7_0_pull_enable;
    assign gpio7_0_pull_enable = (fabric_io_config_bit0[56] ^ fabric_io_config_bit1[56]) && !fabric_io_oe[56];
            
    assign fabric_io_in[56]    = gpio7_0_in;
    assign gpio7_0_out               = gpio7_0_pull_enable ? fabric_io_config_bit0[56] : fabric_io_out[56];
    assign gpio7_0_oe_n              = !(gpio7_0_pull_enable || fabric_io_oe[56]);
    assign gpio7_0_inp_dis           = gpio7_0_zero;
    assign gpio7_0_vtrip_sel         = gpio7_0_zero;
    assign gpio7_0_slow              = fabric_io_config_bit2[56];
    assign gpio7_0_hld_ovr           = gpio7_0_zero;
    assign gpio7_0_analog_en         = gpio7_0_zero;
    assign gpio7_0_analog_sel        = gpio7_0_zero;
    assign gpio7_0_analog_pol        = gpio7_0_zero;
    assign gpio7_0_dm                = gpio7_0_pull_enable ? {gpio7_0_one, gpio7_0_one, gpio7_0_one} : // weak
                                       fabric_io_config_bit3[56] ? {gpio7_0_one, gpio7_0_zero, gpio7_0_zero} : // open-drain
                                       {gpio7_0_one, gpio7_0_one, gpio7_0_zero}; // strong
    assign gpio7_0_enable_vddio      = gpio7_0_one;
    assign gpio7_0_enable_inp_h      = gpio7_0_tie_lo_esd;
    assign gpio7_0_enable_h          = porb_h; // TODO
    assign gpio7_0_hld_h_n           = gpio7_0_tie_hi_esd;
    assign gpio7_0_enable_vswitch_h  = gpio7_0_tie_lo_esd;
    assign gpio7_0_enable_vdda_h     = porb_h; // TODO
    assign gpio7_0_ib_mode_sel       = gpio7_0_zero; // VDDIO


    // Fabric GPIO fabric_io[57]
            
    wire gpio7_1_pull_enable;
    assign gpio7_1_pull_enable = (fabric_io_config_bit0[57] ^ fabric_io_config_bit1[57]) && !fabric_io_oe[57];
            
    assign fabric_io_in[57]    = gpio7_1_in;
    assign gpio7_1_out               = gpio7_1_pull_enable ? fabric_io_config_bit0[57] : fabric_io_out[57];
    assign gpio7_1_oe_n              = !(gpio7_1_pull_enable || fabric_io_oe[57]);
    assign gpio7_1_inp_dis           = gpio7_1_zero;
    assign gpio7_1_vtrip_sel         = gpio7_1_zero;
    assign gpio7_1_slow              = fabric_io_config_bit2[57];
    assign gpio7_1_hld_ovr           = gpio7_1_zero;
    assign gpio7_1_analog_en         = gpio7_1_zero;
    assign gpio7_1_analog_sel        = gpio7_1_zero;
    assign gpio7_1_analog_pol        = gpio7_1_zero;
    assign gpio7_1_dm                = gpio7_1_pull_enable ? {gpio7_1_one, gpio7_1_one, gpio7_1_one} : // weak
                                       fabric_io_config_bit3[57] ? {gpio7_1_one, gpio7_1_zero, gpio7_1_zero} : // open-drain
                                       {gpio7_1_one, gpio7_1_one, gpio7_1_zero}; // strong
    assign gpio7_1_enable_vddio      = gpio7_1_one;
    assign gpio7_1_enable_inp_h      = gpio7_1_tie_lo_esd;
    assign gpio7_1_enable_h          = porb_h; // TODO
    assign gpio7_1_hld_h_n           = gpio7_1_tie_hi_esd;
    assign gpio7_1_enable_vswitch_h  = gpio7_1_tie_lo_esd;
    assign gpio7_1_enable_vdda_h     = porb_h; // TODO
    assign gpio7_1_ib_mode_sel       = gpio7_1_zero; // VDDIO


    // Fabric GPIO fabric_io[58]
            
    wire gpio7_2_pull_enable;
    assign gpio7_2_pull_enable = (fabric_io_config_bit0[58] ^ fabric_io_config_bit1[58]) && !fabric_io_oe[58];
            
    assign fabric_io_in[58]    = gpio7_2_in;
    assign gpio7_2_out               = gpio7_2_pull_enable ? fabric_io_config_bit0[58] : fabric_io_out[58];
    assign gpio7_2_oe_n              = !(gpio7_2_pull_enable || fabric_io_oe[58]);
    assign gpio7_2_inp_dis           = gpio7_2_zero;
    assign gpio7_2_vtrip_sel         = gpio7_2_zero;
    assign gpio7_2_slow              = fabric_io_config_bit2[58];
    assign gpio7_2_hld_ovr           = gpio7_2_zero;
    assign gpio7_2_analog_en         = gpio7_2_zero;
    assign gpio7_2_analog_sel        = gpio7_2_zero;
    assign gpio7_2_analog_pol        = gpio7_2_zero;
    assign gpio7_2_dm                = gpio7_2_pull_enable ? {gpio7_2_one, gpio7_2_one, gpio7_2_one} : // weak
                                       fabric_io_config_bit3[58] ? {gpio7_2_one, gpio7_2_zero, gpio7_2_zero} : // open-drain
                                       {gpio7_2_one, gpio7_2_one, gpio7_2_zero}; // strong
    assign gpio7_2_enable_vddio      = gpio7_2_one;
    assign gpio7_2_enable_inp_h      = gpio7_2_tie_lo_esd;
    assign gpio7_2_enable_h          = porb_h; // TODO
    assign gpio7_2_hld_h_n           = gpio7_2_tie_hi_esd;
    assign gpio7_2_enable_vswitch_h  = gpio7_2_tie_lo_esd;
    assign gpio7_2_enable_vdda_h     = porb_h; // TODO
    assign gpio7_2_ib_mode_sel       = gpio7_2_zero; // VDDIO


    // Fabric GPIO fabric_io[59]
            
    wire gpio7_3_pull_enable;
    assign gpio7_3_pull_enable = (fabric_io_config_bit0[59] ^ fabric_io_config_bit1[59]) && !fabric_io_oe[59];
            
    assign fabric_io_in[59]    = gpio7_3_in;
    assign gpio7_3_out               = gpio7_3_pull_enable ? fabric_io_config_bit0[59] : fabric_io_out[59];
    assign gpio7_3_oe_n              = !(gpio7_3_pull_enable || fabric_io_oe[59]);
    assign gpio7_3_inp_dis           = gpio7_3_zero;
    assign gpio7_3_vtrip_sel         = gpio7_3_zero;
    assign gpio7_3_slow              = fabric_io_config_bit2[59];
    assign gpio7_3_hld_ovr           = gpio7_3_zero;
    assign gpio7_3_analog_en         = gpio7_3_zero;
    assign gpio7_3_analog_sel        = gpio7_3_zero;
    assign gpio7_3_analog_pol        = gpio7_3_zero;
    assign gpio7_3_dm                = gpio7_3_pull_enable ? {gpio7_3_one, gpio7_3_one, gpio7_3_one} : // weak
                                       fabric_io_config_bit3[59] ? {gpio7_3_one, gpio7_3_zero, gpio7_3_zero} : // open-drain
                                       {gpio7_3_one, gpio7_3_one, gpio7_3_zero}; // strong
    assign gpio7_3_enable_vddio      = gpio7_3_one;
    assign gpio7_3_enable_inp_h      = gpio7_3_tie_lo_esd;
    assign gpio7_3_enable_h          = porb_h; // TODO
    assign gpio7_3_hld_h_n           = gpio7_3_tie_hi_esd;
    assign gpio7_3_enable_vswitch_h  = gpio7_3_tie_lo_esd;
    assign gpio7_3_enable_vdda_h     = porb_h; // TODO
    assign gpio7_3_ib_mode_sel       = gpio7_3_zero; // VDDIO


    // Fabric GPIO fabric_io[60]
            
    wire gpio7_4_pull_enable;
    assign gpio7_4_pull_enable = (fabric_io_config_bit0[60] ^ fabric_io_config_bit1[60]) && !fabric_io_oe[60];
            
    assign fabric_io_in[60]    = gpio7_4_in;
    assign gpio7_4_out               = gpio7_4_pull_enable ? fabric_io_config_bit0[60] : fabric_io_out[60];
    assign gpio7_4_oe_n              = !(gpio7_4_pull_enable || fabric_io_oe[60]);
    assign gpio7_4_inp_dis           = gpio7_4_zero;
    assign gpio7_4_vtrip_sel         = gpio7_4_zero;
    assign gpio7_4_slow              = fabric_io_config_bit2[60];
    assign gpio7_4_hld_ovr           = gpio7_4_zero;
    assign gpio7_4_analog_en         = gpio7_4_zero;
    assign gpio7_4_analog_sel        = gpio7_4_zero;
    assign gpio7_4_analog_pol        = gpio7_4_zero;
    assign gpio7_4_dm                = gpio7_4_pull_enable ? {gpio7_4_one, gpio7_4_one, gpio7_4_one} : // weak
                                       fabric_io_config_bit3[60] ? {gpio7_4_one, gpio7_4_zero, gpio7_4_zero} : // open-drain
                                       {gpio7_4_one, gpio7_4_one, gpio7_4_zero}; // strong
    assign gpio7_4_enable_vddio      = gpio7_4_one;
    assign gpio7_4_enable_inp_h      = gpio7_4_tie_lo_esd;
    assign gpio7_4_enable_h          = porb_h; // TODO
    assign gpio7_4_hld_h_n           = gpio7_4_tie_hi_esd;
    assign gpio7_4_enable_vswitch_h  = gpio7_4_tie_lo_esd;
    assign gpio7_4_enable_vdda_h     = porb_h; // TODO
    assign gpio7_4_ib_mode_sel       = gpio7_4_zero; // VDDIO


    // Fabric GPIO fabric_io[61]
            
    wire gpio7_5_pull_enable;
    assign gpio7_5_pull_enable = (fabric_io_config_bit0[61] ^ fabric_io_config_bit1[61]) && !fabric_io_oe[61];
            
    assign fabric_io_in[61]    = gpio7_5_in;
    assign gpio7_5_out               = gpio7_5_pull_enable ? fabric_io_config_bit0[61] : fabric_io_out[61];
    assign gpio7_5_oe_n              = !(gpio7_5_pull_enable || fabric_io_oe[61]);
    assign gpio7_5_inp_dis           = gpio7_5_zero;
    assign gpio7_5_vtrip_sel         = gpio7_5_zero;
    assign gpio7_5_slow              = fabric_io_config_bit2[61];
    assign gpio7_5_hld_ovr           = gpio7_5_zero;
    assign gpio7_5_analog_en         = gpio7_5_zero;
    assign gpio7_5_analog_sel        = gpio7_5_zero;
    assign gpio7_5_analog_pol        = gpio7_5_zero;
    assign gpio7_5_dm                = gpio7_5_pull_enable ? {gpio7_5_one, gpio7_5_one, gpio7_5_one} : // weak
                                       fabric_io_config_bit3[61] ? {gpio7_5_one, gpio7_5_zero, gpio7_5_zero} : // open-drain
                                       {gpio7_5_one, gpio7_5_one, gpio7_5_zero}; // strong
    assign gpio7_5_enable_vddio      = gpio7_5_one;
    assign gpio7_5_enable_inp_h      = gpio7_5_tie_lo_esd;
    assign gpio7_5_enable_h          = porb_h; // TODO
    assign gpio7_5_hld_h_n           = gpio7_5_tie_hi_esd;
    assign gpio7_5_enable_vswitch_h  = gpio7_5_tie_lo_esd;
    assign gpio7_5_enable_vdda_h     = porb_h; // TODO
    assign gpio7_5_ib_mode_sel       = gpio7_5_zero; // VDDIO


    // Fabric GPIO fabric_io[62]
            
    wire gpio7_6_pull_enable;
    assign gpio7_6_pull_enable = (fabric_io_config_bit0[62] ^ fabric_io_config_bit1[62]) && !fabric_io_oe[62];
            
    assign fabric_io_in[62]    = gpio7_6_in;
    assign gpio7_6_out               = gpio7_6_pull_enable ? fabric_io_config_bit0[62] : fabric_io_out[62];
    assign gpio7_6_oe_n              = !(gpio7_6_pull_enable || fabric_io_oe[62]);
    assign gpio7_6_inp_dis           = gpio7_6_zero;
    assign gpio7_6_vtrip_sel         = gpio7_6_zero;
    assign gpio7_6_slow              = fabric_io_config_bit2[62];
    assign gpio7_6_hld_ovr           = gpio7_6_zero;
    assign gpio7_6_analog_en         = gpio7_6_zero;
    assign gpio7_6_analog_sel        = gpio7_6_zero;
    assign gpio7_6_analog_pol        = gpio7_6_zero;
    assign gpio7_6_dm                = gpio7_6_pull_enable ? {gpio7_6_one, gpio7_6_one, gpio7_6_one} : // weak
                                       fabric_io_config_bit3[62] ? {gpio7_6_one, gpio7_6_zero, gpio7_6_zero} : // open-drain
                                       {gpio7_6_one, gpio7_6_one, gpio7_6_zero}; // strong
    assign gpio7_6_enable_vddio      = gpio7_6_one;
    assign gpio7_6_enable_inp_h      = gpio7_6_tie_lo_esd;
    assign gpio7_6_enable_h          = porb_h; // TODO
    assign gpio7_6_hld_h_n           = gpio7_6_tie_hi_esd;
    assign gpio7_6_enable_vswitch_h  = gpio7_6_tie_lo_esd;
    assign gpio7_6_enable_vdda_h     = porb_h; // TODO
    assign gpio7_6_ib_mode_sel       = gpio7_6_zero; // VDDIO


    // Fabric GPIO fabric_io[63]
            
    wire gpio7_7_pull_enable;
    assign gpio7_7_pull_enable = (fabric_io_config_bit0[63] ^ fabric_io_config_bit1[63]) && !fabric_io_oe[63];
            
    assign fabric_io_in[63]    = gpio7_7_in;
    assign gpio7_7_out               = gpio7_7_pull_enable ? fabric_io_config_bit0[63] : fabric_io_out[63];
    assign gpio7_7_oe_n              = !(gpio7_7_pull_enable || fabric_io_oe[63]);
    assign gpio7_7_inp_dis           = gpio7_7_zero;
    assign gpio7_7_vtrip_sel         = gpio7_7_zero;
    assign gpio7_7_slow              = fabric_io_config_bit2[63];
    assign gpio7_7_hld_ovr           = gpio7_7_zero;
    assign gpio7_7_analog_en         = gpio7_7_zero;
    assign gpio7_7_analog_sel        = gpio7_7_zero;
    assign gpio7_7_analog_pol        = gpio7_7_zero;
    assign gpio7_7_dm                = gpio7_7_pull_enable ? {gpio7_7_one, gpio7_7_one, gpio7_7_one} : // weak
                                       fabric_io_config_bit3[63] ? {gpio7_7_one, gpio7_7_zero, gpio7_7_zero} : // open-drain
                                       {gpio7_7_one, gpio7_7_one, gpio7_7_zero}; // strong
    assign gpio7_7_enable_vddio      = gpio7_7_one;
    assign gpio7_7_enable_inp_h      = gpio7_7_tie_lo_esd;
    assign gpio7_7_enable_h          = porb_h; // TODO
    assign gpio7_7_hld_h_n           = gpio7_7_tie_hi_esd;
    assign gpio7_7_enable_vswitch_h  = gpio7_7_tie_lo_esd;
    assign gpio7_7_enable_vdda_h     = porb_h; // TODO
    assign gpio7_7_ib_mode_sel       = gpio7_7_zero; // VDDIO


    // Input xclk
            
    assign xclk = gpio8_0_in;
    assign gpio8_0_out               = gpio8_0_zero;
    assign gpio8_0_oe_n              = gpio8_0_one;
    assign gpio8_0_inp_dis           = gpio8_0_zero;
    assign gpio8_0_vtrip_sel         = gpio8_0_zero;
    assign gpio8_0_slow              = gpio8_0_zero;
    assign gpio8_0_hld_ovr           = gpio8_0_zero;
    assign gpio8_0_analog_en         = gpio8_0_zero;
    assign gpio8_0_analog_sel        = gpio8_0_zero;
    assign gpio8_0_analog_pol        = gpio8_0_zero;
    assign gpio8_0_dm                = {gpio8_0_one, gpio8_0_one, gpio8_0_zero};
    assign gpio8_0_enable_vddio      = gpio8_0_one;
    assign gpio8_0_enable_inp_h      = gpio8_0_tie_lo_esd;
    assign gpio8_0_enable_h          = porb_h;
    assign gpio8_0_hld_h_n           = gpio8_0_tie_hi_esd;
    assign gpio8_0_enable_vswitch_h  = gpio8_0_tie_lo_esd;
    assign gpio8_0_enable_vdda_h     = porb_h;
    assign gpio8_0_ib_mode_sel       = gpio8_0_zero; // VDDIO


    // Inout fpga_sclk
            
    assign fpga_sclk_in = gpio8_1_in;
    assign gpio8_1_out               = fpga_sclk_out;
    assign gpio8_1_oe_n              = fpga_sclk_oeb;
    assign gpio8_1_inp_dis           = gpio8_1_zero;
    assign gpio8_1_vtrip_sel         = gpio8_1_zero;
    assign gpio8_1_slow              = gpio8_1_zero;
    assign gpio8_1_hld_ovr           = gpio8_1_zero;
    assign gpio8_1_analog_en         = gpio8_1_zero;
    assign gpio8_1_analog_sel        = gpio8_1_zero;
    assign gpio8_1_analog_pol        = gpio8_1_zero;
    assign gpio8_1_dm                = {gpio8_1_one, gpio8_1_one, gpio8_1_zero};
    assign gpio8_1_enable_vddio      = gpio8_1_one;
    assign gpio8_1_enable_inp_h      = gpio8_1_tie_lo_esd;
    assign gpio8_1_enable_h          = porb_h;
    assign gpio8_1_hld_h_n           = gpio8_1_tie_hi_esd;
    assign gpio8_1_enable_vswitch_h  = gpio8_1_tie_lo_esd;
    assign gpio8_1_enable_vdda_h     = porb_h;
    assign gpio8_1_ib_mode_sel       = gpio8_1_zero; // VDDIO


    // Inout fpga_cs_n
            
    assign fpga_cs_n_in = gpio8_2_in;
    assign gpio8_2_out               = fpga_cs_n_out;
    assign gpio8_2_oe_n              = fpga_cs_n_oeb;
    assign gpio8_2_inp_dis           = gpio8_2_zero;
    assign gpio8_2_vtrip_sel         = gpio8_2_zero;
    assign gpio8_2_slow              = gpio8_2_zero;
    assign gpio8_2_hld_ovr           = gpio8_2_zero;
    assign gpio8_2_analog_en         = gpio8_2_zero;
    assign gpio8_2_analog_sel        = gpio8_2_zero;
    assign gpio8_2_analog_pol        = gpio8_2_zero;
    assign gpio8_2_dm                = {gpio8_2_one, gpio8_2_one, gpio8_2_zero};
    assign gpio8_2_enable_vddio      = gpio8_2_one;
    assign gpio8_2_enable_inp_h      = gpio8_2_tie_lo_esd;
    assign gpio8_2_enable_h          = porb_h;
    assign gpio8_2_hld_h_n           = gpio8_2_tie_hi_esd;
    assign gpio8_2_enable_vswitch_h  = gpio8_2_tie_lo_esd;
    assign gpio8_2_enable_vdda_h     = porb_h;
    assign gpio8_2_ib_mode_sel       = gpio8_2_zero; // VDDIO


    // Inout fpga_mosi
            
    assign fpga_mosi_in = gpio8_3_in;
    assign gpio8_3_out               = fpga_mosi_out;
    assign gpio8_3_oe_n              = fpga_mosi_oeb;
    assign gpio8_3_inp_dis           = gpio8_3_zero;
    assign gpio8_3_vtrip_sel         = gpio8_3_zero;
    assign gpio8_3_slow              = gpio8_3_zero;
    assign gpio8_3_hld_ovr           = gpio8_3_zero;
    assign gpio8_3_analog_en         = gpio8_3_zero;
    assign gpio8_3_analog_sel        = gpio8_3_zero;
    assign gpio8_3_analog_pol        = gpio8_3_zero;
    assign gpio8_3_dm                = {gpio8_3_one, gpio8_3_one, gpio8_3_zero};
    assign gpio8_3_enable_vddio      = gpio8_3_one;
    assign gpio8_3_enable_inp_h      = gpio8_3_tie_lo_esd;
    assign gpio8_3_enable_h          = porb_h;
    assign gpio8_3_hld_h_n           = gpio8_3_tie_hi_esd;
    assign gpio8_3_enable_vswitch_h  = gpio8_3_tie_lo_esd;
    assign gpio8_3_enable_vdda_h     = porb_h;
    assign gpio8_3_ib_mode_sel       = gpio8_3_zero; // VDDIO


    // Inout fpga_miso
            
    assign fpga_miso_in = gpio8_4_in;
    assign gpio8_4_out               = fpga_miso_out;
    assign gpio8_4_oe_n              = fpga_miso_oeb;
    assign gpio8_4_inp_dis           = gpio8_4_zero;
    assign gpio8_4_vtrip_sel         = gpio8_4_zero;
    assign gpio8_4_slow              = gpio8_4_zero;
    assign gpio8_4_hld_ovr           = gpio8_4_zero;
    assign gpio8_4_analog_en         = gpio8_4_zero;
    assign gpio8_4_analog_sel        = gpio8_4_zero;
    assign gpio8_4_analog_pol        = gpio8_4_zero;
    assign gpio8_4_dm                = {gpio8_4_one, gpio8_4_one, gpio8_4_zero};
    assign gpio8_4_enable_vddio      = gpio8_4_one;
    assign gpio8_4_enable_inp_h      = gpio8_4_tie_lo_esd;
    assign gpio8_4_enable_h          = porb_h;
    assign gpio8_4_hld_h_n           = gpio8_4_tie_hi_esd;
    assign gpio8_4_enable_vswitch_h  = gpio8_4_tie_lo_esd;
    assign gpio8_4_enable_vdda_h     = porb_h;
    assign gpio8_4_ib_mode_sel       = gpio8_4_zero; // VDDIO


    // Input fpga_mode_i
            
    assign fpga_mode_i = gpio8_5_in;
    assign gpio8_5_out               = gpio8_5_zero;
    assign gpio8_5_oe_n              = gpio8_5_one;
    assign gpio8_5_inp_dis           = gpio8_5_zero;
    assign gpio8_5_vtrip_sel         = gpio8_5_zero;
    assign gpio8_5_slow              = gpio8_5_zero;
    assign gpio8_5_hld_ovr           = gpio8_5_zero;
    assign gpio8_5_analog_en         = gpio8_5_zero;
    assign gpio8_5_analog_sel        = gpio8_5_zero;
    assign gpio8_5_analog_pol        = gpio8_5_zero;
    assign gpio8_5_dm                = {gpio8_5_one, gpio8_5_one, gpio8_5_zero};
    assign gpio8_5_enable_vddio      = gpio8_5_one;
    assign gpio8_5_enable_inp_h      = gpio8_5_tie_lo_esd;
    assign gpio8_5_enable_h          = porb_h;
    assign gpio8_5_hld_h_n           = gpio8_5_tie_hi_esd;
    assign gpio8_5_enable_vswitch_h  = gpio8_5_tie_lo_esd;
    assign gpio8_5_enable_vdda_h     = porb_h;
    assign gpio8_5_ib_mode_sel       = gpio8_5_zero; // VDDIO


    // Output config_busy_o
            
    assign gpio8_6_out               = config_busy_o;
    assign gpio8_6_oe_n              = gpio8_6_zero;
    assign gpio8_6_inp_dis           = gpio8_6_one;
    assign gpio8_6_vtrip_sel         = gpio8_6_zero;
    assign gpio8_6_slow              = gpio8_6_zero;
    assign gpio8_6_hld_ovr           = gpio8_6_zero;
    assign gpio8_6_analog_en         = gpio8_6_zero;
    assign gpio8_6_analog_sel        = gpio8_6_zero;
    assign gpio8_6_analog_pol        = gpio8_6_zero;
    assign gpio8_6_dm                = {gpio8_6_one, gpio8_6_one, gpio8_6_zero};
    assign gpio8_6_enable_vddio      = gpio8_6_one;
    assign gpio8_6_enable_inp_h      = gpio8_6_tie_lo_esd;
    assign gpio8_6_enable_h          = porb_h;
    assign gpio8_6_hld_h_n           = gpio8_6_tie_hi_esd;
    assign gpio8_6_enable_vswitch_h  = gpio8_6_tie_lo_esd;
    assign gpio8_6_enable_vdda_h     = porb_h;
    assign gpio8_6_ib_mode_sel       = gpio8_6_zero; // VDDIO


    // Input unused[0]
            
    assign unused[0] = gpio8_7_in;
    assign gpio8_7_out               = gpio8_7_zero;
    assign gpio8_7_oe_n              = gpio8_7_one;
    assign gpio8_7_inp_dis           = gpio8_7_zero;
    assign gpio8_7_vtrip_sel         = gpio8_7_zero;
    assign gpio8_7_slow              = gpio8_7_zero;
    assign gpio8_7_hld_ovr           = gpio8_7_zero;
    assign gpio8_7_analog_en         = gpio8_7_zero;
    assign gpio8_7_analog_sel        = gpio8_7_zero;
    assign gpio8_7_analog_pol        = gpio8_7_zero;
    assign gpio8_7_dm                = {gpio8_7_one, gpio8_7_one, gpio8_7_zero};
    assign gpio8_7_enable_vddio      = gpio8_7_one;
    assign gpio8_7_enable_inp_h      = gpio8_7_tie_lo_esd;
    assign gpio8_7_enable_h          = porb_h;
    assign gpio8_7_hld_h_n           = gpio8_7_tie_hi_esd;
    assign gpio8_7_enable_vswitch_h  = gpio8_7_tie_lo_esd;
    assign gpio8_7_enable_vdda_h     = porb_h;
    assign gpio8_7_ib_mode_sel       = gpio8_7_zero; // VDDIO


