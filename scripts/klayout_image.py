# SPDX-FileCopyrightText: © 2025 Leo Moser <leo.moser@pm.me>
# SPDX-License-Identifier: Apache-2.0

import os
import pya
import argparse

w = 4096
aspect_ratio = 36/50
h = w / aspect_ratio
background_white = "#FFFFFF"
background_black = "#000000"
background = background_white

lv = pya.LayoutView()

lv.set_config("grid-visible", "false")
lv.set_config("grid-show-ruler", "false")
lv.set_config("text-visible", "false")
lv.load_layout(input_gds)
lv.max_hier()

pdk = os.environ.get('PDK', 'sky130A')
pdk_root = os.environ.get('PDK_ROOT', None)

if not pdk_root:
    print('Error: PDK_ROOT not defined!')

lv.load_layer_props(os.path.join(pdk_root, pdk, f"libs.tech/klayout/tech/{pdk}.lyp"))

disable_layers = [
    (81, 4), # areaid.standardc
    (81, 14), # areaid.lowTapDensity
    (81, 2), # areaid.core
    
    (22, 22),
    (22, 24),
    
    (33, 43),
    (33, 24),
]

fill_layer = [
    (72, 20) # met5.drawing
]

for lyp in lv.each_layer():
    #lyp.fill_color     = 0
    #lyp.frame_color    = 0
    #lyp.dither_pattern = 0
    #lyp.visible = False
    
    layer_datatype = (lyp.source_layer, lyp.source_datatype) 
    
    if layer_datatype in disable_layers:
        lyp.visible = False
    
    if layer_datatype in fill_layer:
        # Set solid color
        lyp.dither_pattern = 0
        
        # Line
        #lyp.line_style = 0
        #lyp.frame_color = 0
        #lyp.width = 2

lv.update_content()

lv.set_config("background-color", background)
lv.save_image(output_image, w, h)
