import sys
import os

skip_modules = [
    'res_div ',
    'follower_amp ',
    'sky130_ef_ip__adc3v_12bit ',
    'sky130_ef_ip__rdac3v_8bit ',
    'sky130_ef_ip__simple_por4x ',
]

in_module = False

append_text = r"""
    wire AVPWR;
    wire AVGND;
    wire adc0_vref;
    wire adc0_vref_buf;
    wire adc1_vref;
    wire adc1_vref_buf;

    sky130_ef_ip__simple_por4x simple_por4x (
        .vdd3v3 (DVPWR),
        .vdd1v8 (AVPWR),
        .vss3v3 (DVGND),
        .vss1v8 (AVGND),
        .porb_h (gpio0_0_enable_h),
        .porb_l (),
        .por_l  ()
    );
    
    sky130_ef_ip__rdac3v_8bit dac0 (
        .vdd    (AVPWR),
        .vss    (AVGND),
        .dvdd   (DVPWR),
        .dvss   (DVGND),

        .Vhigh  (AVPWR),
        .Vlow   (AVGND),

        .out    (xi1_core),

       .b   ({\fabric_dac0_value_o[7] ,
            \fabric_dac0_value_o[6] ,
            \fabric_dac0_value_o[5] ,
            \fabric_dac0_value_o[4] ,
            \fabric_dac0_value_o[3] ,
            \fabric_dac0_value_o[2] ,
            \fabric_dac0_value_o[1] ,
            \fabric_dac0_value_o[0] }),
       .ena (fabric_dac0_enable_o)
    );
    
    sky130_ef_ip__rdac3v_8bit dac1 (
        .vdd    (AVPWR),
        .vss    (AVGND),
        .dvdd   (DVPWR),
        .dvss   (DVGND),

        .Vhigh  (AVPWR),
        .Vlow   (AVGND),

        .out    (xo1_core),

       .b   ({\fabric_dac1_value_o[7] ,
            \fabric_dac1_value_o[6] ,
            \fabric_dac1_value_o[5] ,
            \fabric_dac1_value_o[4] ,
            \fabric_dac1_value_o[3] ,
            \fabric_dac1_value_o[2] ,
            \fabric_dac1_value_o[1] ,
            \fabric_dac1_value_o[0] }),
       .ena (fabric_dac1_enable_o)
    );
    
    res_div res_div0 (
        .vdda  (AVPWR),
        .vssa  (AVGND),
        .vsub  (DVGND),
        .vref  (adc0_vref)
    );
    
    res_div res_div1 (
        .vdda  (AVPWR),
        .vssa  (AVGND),
        .vsub  (DVGND),
        .vref  (adc1_vref)
    );
    
    follower_amp follower_amp0 (
        .vdd  (AVPWR),
        .vss  (AVGND),
        .vsub (DVGND),
        .in   (adc0_vref),
        .out  (adc0_vref_buf),

        .ena  (net833)
    );
    
    follower_amp follower_amp1 (
        .vdd  (AVPWR),
        .vss  (AVGND),
        .vsub (DVGND),
        .in   (adc1_vref),
        .out  (adc1_vref_buf),

        .ena  (net834)
    );
    
    sky130_ef_ip__adc3v_12bit adc0 (
        .vccd0  (DVPWR),
        .vssd0  (DVGND),
        .vdda0  (AVPWR),
        .vssa0  (AVGND),
       
        .adc_trim   (AVGND),
        .adc_vCM    (adc0_vref_buf),
        .adc_vrefL  (AVGND),
        .adc_vrefH  (AVPWR),
        .adc_in     (xi0_core),

       .adc_ena        (net831),
       .adc_reset      (fabric_adc0_reset_o),
       .adc_hold       (fabric_adc0_hold_o),
       .adc_dac_val    ({\fabric_adc0_value_o[11] ,
                        \fabric_adc0_value_o[10] ,
                        \fabric_adc0_value_o[9] ,
                        \fabric_adc0_value_o[8] ,
                        \fabric_adc0_value_o[7] ,
                        \fabric_adc0_value_o[6] ,
                        \fabric_adc0_value_o[5] ,
                        \fabric_adc0_value_o[4] ,
                        \fabric_adc0_value_o[3] ,
                        \fabric_adc0_value_o[2] ,
                        \fabric_adc0_value_o[1] ,
                        \fabric_adc0_value_o[0] }),
       .adc_comp_out   (fabric_adc0_cmp_i)
    );
    
    sky130_ef_ip__adc3v_12bit adc1 (
        .vccd0  (DVPWR),
        .vssd0  (DVGND),
        .vdda0  (AVPWR),
        .vssa0  (AVGND),
       
        .adc_trim   (AVGND),
        .adc_vCM    (adc1_vref_buf),
        .adc_vrefL  (AVGND),
        .adc_vrefH  (AVPWR),
        .adc_in     (xo0_core),

       .adc_ena        (net832),
       .adc_reset      (fabric_adc1_reset_o),
       .adc_hold       (fabric_adc1_hold_o),
       .adc_dac_val    ({\fabric_adc1_value_o[11] ,
                        \fabric_adc1_value_o[10] ,
                        \fabric_adc1_value_o[9] ,
                        \fabric_adc1_value_o[8] ,
                        \fabric_adc1_value_o[7] ,
                        \fabric_adc1_value_o[6] ,
                        \fabric_adc1_value_o[5] ,
                        \fabric_adc1_value_o[4] ,
                        \fabric_adc1_value_o[3] ,
                        \fabric_adc1_value_o[2] ,
                        \fabric_adc1_value_o[1] ,
                        \fabric_adc1_value_o[0] }),
       .adc_comp_out   (fabric_adc1_cmp_i)
    );
"""

size = os.path.getsize("../macro/pnl/panamax_fpga_top.pnl.v")

with open("../macro/pnl_edit/panamax_fpga_top.pnl.v", "w") as out_file:
    with open("../macro/pnl/panamax_fpga_top.pnl.v", "r") as in_file:
        for line in in_file:
        
            size -= len(line)
            
            # Append text at end of file before endmodule
            #if not size:
            #    out_file.write(append_text)
        
            for module in skip_modules:
                if module in line:
                    in_module = True
            
            if in_module:
                print(line, end='')
            else:
                out_file.write(line)
            
            if in_module and ');' in line:
                in_module = False
