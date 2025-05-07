import re
from enum import Enum

class GPIOConfig(Enum):
    CONFIG_FABRIC = 1
    CONFIG_IN = 2
    CONFIG_OUT = 3
    CONFIG_INOUT = 4

class GPIOType(Enum):
    GPIOV2 = 1
    GPIO_OVTV2 = 2

gpio_mapping = {
     0: {'panamax_io': 'gpio0_0', 'name': 'fabric_io[0]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
     1: {'panamax_io': 'gpio0_1', 'name': 'fabric_io[1]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
     2: {'panamax_io': 'gpio0_2', 'name': 'fabric_io[2]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
     3: {'panamax_io': 'gpio0_3', 'name': 'fabric_io[3]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
     4: {'panamax_io': 'gpio0_4', 'name': 'fabric_io[4]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
     5: {'panamax_io': 'gpio0_5', 'name': 'fabric_io[5]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
     6: {'panamax_io': 'gpio0_6', 'name': 'fabric_io[6]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
     7: {'panamax_io': 'gpio0_7', 'name': 'fabric_io[7]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
     8: {'panamax_io': 'gpio1_0', 'name': 'fabric_io[8]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIO_OVTV2'], 'description': ''},
     9: {'panamax_io': 'gpio1_1', 'name': 'fabric_io[9]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIO_OVTV2'], 'description': ''},
    10: {'panamax_io': 'gpio1_2', 'name': 'fabric_io[10]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIO_OVTV2'], 'description': ''},
    11: {'panamax_io': 'gpio1_3', 'name': 'fabric_io[11]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIO_OVTV2'], 'description': ''},
    12: {'panamax_io': 'gpio1_4', 'name': 'fabric_io[12]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIO_OVTV2'], 'description': ''},
    13: {'panamax_io': 'gpio1_5', 'name': 'fabric_io[13]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIO_OVTV2'], 'description': ''},
    14: {'panamax_io': 'gpio1_6', 'name': 'fabric_io[14]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIO_OVTV2'], 'description': ''},
    15: {'panamax_io': 'gpio1_7', 'name': 'fabric_io[15]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIO_OVTV2'], 'description': ''},
    16: {'panamax_io': 'gpio2_0', 'name': 'fabric_io[16]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    17: {'panamax_io': 'gpio2_1', 'name': 'fabric_io[17]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    18: {'panamax_io': 'gpio2_2', 'name': 'fabric_io[18]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    19: {'panamax_io': 'gpio2_3', 'name': 'fabric_io[19]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    20: {'panamax_io': 'gpio2_4', 'name': 'fabric_io[20]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    21: {'panamax_io': 'gpio2_5', 'name': 'fabric_io[21]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    22: {'panamax_io': 'gpio2_6', 'name': 'fabric_io[22]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    23: {'panamax_io': 'gpio2_7', 'name': 'fabric_io[23]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    24: {'panamax_io': 'gpio3_0', 'name': 'fabric_io[24]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    25: {'panamax_io': 'gpio3_1', 'name': 'fabric_io[25]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    26: {'panamax_io': 'gpio3_2', 'name': 'fabric_io[26]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    27: {'panamax_io': 'gpio3_3', 'name': 'fabric_io[27]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    28: {'panamax_io': 'gpio3_4', 'name': 'fabric_io[28]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    29: {'panamax_io': 'gpio3_5', 'name': 'fabric_io[29]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    30: {'panamax_io': 'gpio3_6', 'name': 'fabric_io[30]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    31: {'panamax_io': 'gpio3_7', 'name': 'fabric_io[31]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    32: {'panamax_io': 'gpio4_0', 'name': 'fabric_io[32]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    33: {'panamax_io': 'gpio4_1', 'name': 'fabric_io[33]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    34: {'panamax_io': 'gpio4_2', 'name': 'fabric_io[34]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    35: {'panamax_io': 'gpio4_3', 'name': 'fabric_io[35]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    36: {'panamax_io': 'gpio4_4', 'name': 'fabric_io[36]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    37: {'panamax_io': 'gpio4_5', 'name': 'fabric_io[37]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    38: {'panamax_io': 'gpio4_6', 'name': 'fabric_io[38]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    39: {'panamax_io': 'gpio4_7', 'name': 'fabric_io[39]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    40: {'panamax_io': 'gpio5_0', 'name': 'fabric_io[40]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    41: {'panamax_io': 'gpio5_1', 'name': 'fabric_io[41]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    42: {'panamax_io': 'gpio5_2', 'name': 'fabric_io[42]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    43: {'panamax_io': 'gpio5_3', 'name': 'fabric_io[43]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    44: {'panamax_io': 'gpio5_4', 'name': 'fabric_io[44]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    45: {'panamax_io': 'gpio5_5', 'name': 'fabric_io[45]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    46: {'panamax_io': 'gpio5_6', 'name': 'fabric_io[46]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    47: {'panamax_io': 'gpio5_7', 'name': 'fabric_io[47]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    48: {'panamax_io': 'gpio6_0', 'name': 'fabric_io[48]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIO_OVTV2'], 'description': ''},
    49: {'panamax_io': 'gpio6_1', 'name': 'fabric_io[49]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIO_OVTV2'], 'description': ''},
    50: {'panamax_io': 'gpio6_2', 'name': 'fabric_io[50]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIO_OVTV2'], 'description': ''},
    51: {'panamax_io': 'gpio6_3', 'name': 'fabric_io[51]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIO_OVTV2'], 'description': ''},
    52: {'panamax_io': 'gpio6_4', 'name': 'fabric_io[52]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIO_OVTV2'], 'description': ''},
    53: {'panamax_io': 'gpio6_5', 'name': 'fabric_io[53]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIO_OVTV2'], 'description': ''},
    54: {'panamax_io': 'gpio6_6', 'name': 'fabric_io[54]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIO_OVTV2'], 'description': ''},
    55: {'panamax_io': 'gpio6_7', 'name': 'fabric_io[55]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIO_OVTV2'], 'description': ''},
    56: {'panamax_io': 'gpio7_0', 'name': 'fabric_io[56]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    57: {'panamax_io': 'gpio7_1', 'name': 'fabric_io[57]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    58: {'panamax_io': 'gpio7_2', 'name': 'fabric_io[58]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    59: {'panamax_io': 'gpio7_3', 'name': 'fabric_io[59]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    60: {'panamax_io': 'gpio7_4', 'name': 'fabric_io[60]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    61: {'panamax_io': 'gpio7_5', 'name': 'fabric_io[61]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    62: {'panamax_io': 'gpio7_6', 'name': 'fabric_io[62]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    63: {'panamax_io': 'gpio7_7', 'name': 'fabric_io[63]', 'gpio_config': GPIOConfig['CONFIG_FABRIC'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    64: {'panamax_io': 'gpio8_0', 'name': 'xclk', 'gpio_config': GPIOConfig['CONFIG_IN'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    65: {'panamax_io': 'gpio8_1', 'name': 'fpga_sclk', 'gpio_config': GPIOConfig['CONFIG_INOUT'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    66: {'panamax_io': 'gpio8_2', 'name': 'fpga_cs_n', 'gpio_config': GPIOConfig['CONFIG_INOUT'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    67: {'panamax_io': 'gpio8_3', 'name': 'fpga_mosi', 'gpio_config': GPIOConfig['CONFIG_INOUT'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    68: {'panamax_io': 'gpio8_4', 'name': 'fpga_miso', 'gpio_config': GPIOConfig['CONFIG_INOUT'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    69: {'panamax_io': 'gpio8_5', 'name': 'fpga_mode_i', 'gpio_config': GPIOConfig['CONFIG_IN'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    70: {'panamax_io': 'gpio8_6', 'name': 'config_busy_o', 'gpio_config': GPIOConfig['CONFIG_OUT'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''},
    71: {'panamax_io': 'gpio8_7', 'name': 'unused[0]', 'gpio_config': GPIOConfig['CONFIG_IN'], 'gpio_type': GPIOType['GPIOV2'], 'description': ''}
}

def generate_gpio_mapping(gpio_mapping):

    text = ''
    
    for index, values in gpio_mapping.items():
        
        if values['gpio_config'] == GPIOConfig['CONFIG_FABRIC']:

            match = re.search(r'^(?P<prefix>.*)\[(?P<index>.*)]$', values['name'])
            
            prefix = match.group('prefix')
            index = match.group('index')
            
            panamax_io = values['panamax_io']
            
            # Config bit 0: Pull up     (input)
            # Config bit 1: Pull down   (input)
            # Config bit 2: Slow        (output)
            # Config bit 3: Open Drain  (output)
            
            text += f"""    // Fabric GPIO {prefix}[{index}]
            
    wire {panamax_io}_pull_enable;
    assign {panamax_io}_pull_enable = (fabric_io_config_bit0[{index}] ^ fabric_io_config_bit1[{index}]) && !{prefix}_oe[{index}];
            
    assign {prefix}_in[{index}]    = {panamax_io}_in;
    assign {panamax_io}_out               = {panamax_io}_pull_enable ? fabric_io_config_bit0[{index}] : {prefix}_out[{index}];
    assign {panamax_io}_oe_n              = !({panamax_io}_pull_enable || {prefix}_oe[{index}]);
    assign {panamax_io}_inp_dis           = {panamax_io}_zero;
    assign {panamax_io}_vtrip_sel         = {panamax_io}_zero;
    assign {panamax_io}_slow              = fabric_io_config_bit2[{index}];
    assign {panamax_io}_hld_ovr           = {panamax_io}_zero;
    assign {panamax_io}_analog_en         = {panamax_io}_zero;
    assign {panamax_io}_analog_sel        = {panamax_io}_zero;
    assign {panamax_io}_analog_pol        = {panamax_io}_zero;
    assign {panamax_io}_dm                = {panamax_io}_pull_enable ? {{{panamax_io}_one, {panamax_io}_one, {panamax_io}_one}} : // weak
                                       fabric_io_config_bit3[{index}] ? {{{panamax_io}_one, {panamax_io}_zero, {panamax_io}_zero}} : // open-drain
                                       {{{panamax_io}_one, {panamax_io}_one, {panamax_io}_zero}}; // strong
    assign {panamax_io}_enable_vddio      = {panamax_io}_one;
    assign {panamax_io}_enable_inp_h      = {panamax_io}_tie_lo_esd;
    assign {panamax_io}_enable_h          = porb_h; // TODO
    assign {panamax_io}_hld_h_n           = {panamax_io}_tie_hi_esd;
    assign {panamax_io}_enable_vswitch_h  = {panamax_io}_tie_lo_esd;
    assign {panamax_io}_enable_vdda_h     = porb_h; // TODO\n"""
    
            if values['gpio_type'] == GPIOType['GPIO_OVTV2']:
                text += f"""    assign {panamax_io}_slew_ctl          = {{{panamax_io}_zero, {panamax_io}_zero}}; // slew rate in I2C mode
    assign {panamax_io}_hys_trim          = {panamax_io}_one; // 1 for input signaling voltage > 2.2V 
    assign {panamax_io}_ib_mode_sel       = {{{panamax_io}_zero, {panamax_io}_zero}}; // CMOS input buffer, VDDIO\n"""
            else:
                text += f"""    assign {panamax_io}_ib_mode_sel       = {panamax_io}_zero; // VDDIO\n"""
            
            text += "\n\n"
        
        elif values['gpio_config'] == GPIOConfig['CONFIG_IN']:
        
            panamax_io = values['panamax_io']
            name = values['name']
        
            text += f"""    // Input {name}
            
    assign {name} = {panamax_io}_in;
    assign {panamax_io}_out               = {panamax_io}_zero;
    assign {panamax_io}_oe_n              = {panamax_io}_one;
    assign {panamax_io}_inp_dis           = {panamax_io}_zero;
    assign {panamax_io}_vtrip_sel         = {panamax_io}_zero;
    assign {panamax_io}_slow              = {panamax_io}_zero;
    assign {panamax_io}_hld_ovr           = {panamax_io}_zero;
    assign {panamax_io}_analog_en         = {panamax_io}_zero;
    assign {panamax_io}_analog_sel        = {panamax_io}_zero;
    assign {panamax_io}_analog_pol        = {panamax_io}_zero;
    assign {panamax_io}_dm                = {{{panamax_io}_one, {panamax_io}_one, {panamax_io}_zero}};
    assign {panamax_io}_enable_vddio      = {panamax_io}_one;
    assign {panamax_io}_enable_inp_h      = {panamax_io}_tie_lo_esd;
    assign {panamax_io}_enable_h          = porb_h;
    assign {panamax_io}_hld_h_n           = {panamax_io}_tie_hi_esd;
    assign {panamax_io}_enable_vswitch_h  = {panamax_io}_tie_lo_esd;
    assign {panamax_io}_enable_vdda_h     = porb_h;\n"""
    
            if values['gpio_type'] == GPIOType['GPIO_OVTV2']:
                text += f"""    assign {panamax_io}_slew_ctl          = {{{panamax_io}_zero, {panamax_io}_zero}}; // slew rate in I2C mode
    assign {panamax_io}_hys_trim          = {panamax_io}_one; // 1 for input signaling voltage > 2.2V 
    assign {panamax_io}_ib_mode_sel       = {{{panamax_io}_zero, {panamax_io}_zero}}; // CMOS input buffer, VDDIO\n"""
            else:
                text += f"""    assign {panamax_io}_ib_mode_sel       = {panamax_io}_zero; // VDDIO\n"""
    
            text += "\n\n"

        elif values['gpio_config'] == GPIOConfig['CONFIG_OUT']:
            
            panamax_io = values['panamax_io']
            name = values['name']
            
            text += f"""    // Output {name}
            
    assign {panamax_io}_out               = {name};
    assign {panamax_io}_oe_n              = {panamax_io}_zero;
    assign {panamax_io}_inp_dis           = {panamax_io}_one;
    assign {panamax_io}_vtrip_sel         = {panamax_io}_zero;
    assign {panamax_io}_slow              = {panamax_io}_zero;
    assign {panamax_io}_hld_ovr           = {panamax_io}_zero;
    assign {panamax_io}_analog_en         = {panamax_io}_zero;
    assign {panamax_io}_analog_sel        = {panamax_io}_zero;
    assign {panamax_io}_analog_pol        = {panamax_io}_zero;
    assign {panamax_io}_dm                = {{{panamax_io}_one, {panamax_io}_one, {panamax_io}_zero}};
    assign {panamax_io}_enable_vddio      = {panamax_io}_one;
    assign {panamax_io}_enable_inp_h      = {panamax_io}_tie_lo_esd;
    assign {panamax_io}_enable_h          = porb_h;
    assign {panamax_io}_hld_h_n           = {panamax_io}_tie_hi_esd;
    assign {panamax_io}_enable_vswitch_h  = {panamax_io}_tie_lo_esd;
    assign {panamax_io}_enable_vdda_h     = porb_h;\n"""
    
            if values['gpio_type'] == GPIOType['GPIO_OVTV2']:
                text += f"""    assign {panamax_io}_slew_ctl          = {{{panamax_io}_zero, {panamax_io}_zero}}; // slew rate in I2C mode
    assign {panamax_io}_hys_trim          = {panamax_io}_one; // 1 for input signaling voltage > 2.2V 
    assign {panamax_io}_ib_mode_sel       = {{{panamax_io}_zero, {panamax_io}_zero}}; // CMOS input buffer, VDDIO\n"""
            else:
                text += f"""    assign {panamax_io}_ib_mode_sel       = {panamax_io}_zero; // VDDIO\n"""
    
    
            text += "\n\n"
        
        elif values['gpio_config'] == GPIOConfig['CONFIG_INOUT']:
            
            panamax_io = values['panamax_io']
            name = values['name']
            
            text += f"""    // Inout {name}
            
    assign {name}_in = {panamax_io}_in;
    assign {panamax_io}_out               = {name}_out;
    assign {panamax_io}_oe_n              = {name}_oeb;
    assign {panamax_io}_inp_dis           = {panamax_io}_zero;
    assign {panamax_io}_vtrip_sel         = {panamax_io}_zero;
    assign {panamax_io}_slow              = {panamax_io}_zero;
    assign {panamax_io}_hld_ovr           = {panamax_io}_zero;
    assign {panamax_io}_analog_en         = {panamax_io}_zero;
    assign {panamax_io}_analog_sel        = {panamax_io}_zero;
    assign {panamax_io}_analog_pol        = {panamax_io}_zero;
    assign {panamax_io}_dm                = {{{panamax_io}_one, {panamax_io}_one, {panamax_io}_zero}};
    assign {panamax_io}_enable_vddio      = {panamax_io}_one;
    assign {panamax_io}_enable_inp_h      = {panamax_io}_tie_lo_esd;
    assign {panamax_io}_enable_h          = porb_h;
    assign {panamax_io}_hld_h_n           = {panamax_io}_tie_hi_esd;
    assign {panamax_io}_enable_vswitch_h  = {panamax_io}_tie_lo_esd;
    assign {panamax_io}_enable_vdda_h     = porb_h;\n"""
    
            if values['gpio_type'] == GPIOType['GPIO_OVTV2']:
                text += f"""    assign {panamax_io}_slew_ctl          = {{{panamax_io}_zero, {panamax_io}_zero}}; // slew rate in I2C mode
    assign {panamax_io}_hys_trim          = {panamax_io}_one; // 1 for input signaling voltage > 2.2V 
    assign {panamax_io}_ib_mode_sel       = {{{panamax_io}_zero, {panamax_io}_zero}}; // CMOS input buffer, VDDIO\n"""
            else:
                text += f"""    assign {panamax_io}_ib_mode_sel       = {panamax_io}_zero; // VDDIO\n"""
    
            text += "\n\n"
    
    return text

if __name__ == "__main__":

    with open('../src/gpio_mapping.v', 'w') as f:
        mapping =generate_gpio_mapping(gpio_mapping)
        print(mapping)
        f.write(mapping)
    
