# SPDX-FileCopyrightText: © 2025 Leo Moser <leo.moser@pm.me>
# SPDX-License-Identifier: Apache-2.0

import pya
import argparse

def merge_fill(input_gds, fill_gds, output_gds, offset=(0, 0)):

    # Read greyhound
    layout = pya.Layout()
    layout.read(input_gds)
    top = layout.top_cell()

    # Read fill
    fill_ly = pya.Layout()
    fill_ly.read(fill_gds)
    
    # Move fill
    fill_cell = layout.create_cell(fill_ly.top_cell().name)
    fill_cell.copy_tree(fill_ly.top_cell())

    # Insert fill
    top.insert(pya.DCellInstArray(fill_cell.cell_index(), pya.DTrans(pya.DTrans.R0, pya.DPoint(offset[0], offset[1]))))

    # Write layout
    layout.write(output_gds)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Insert the fill pattern into the layout.')

    parser.add_argument('input_gds')
    parser.add_argument('fill_gds')
    parser.add_argument('output_gds')
    
    args = parser.parse_args()
    
    merge_fill(args.input_gds, args.fill_gds, args.output_gds, offset=(0, 0))
