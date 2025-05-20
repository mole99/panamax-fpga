import pya

ly_new = pya.Layout()
top = ly_new.create_cell("panamax_fpga")

cells = [
    {'layout': "../final/gds_fill/panamax_fpga.gds.gz",                         'offset': (6, 6)}, # Panamax FPGA with fill
    {'layout': "../ip/sealring/gds/advSeal_6um_gen.gds.gz",                     'offset': (0, 0)},  # Sealring
]

for cell in cells:
    
    print(f'Reading {cell["layout"]}')
    
    # Read the layout
    ly_tmp = pya.Layout()
    ly_tmp.read(cell['layout'])
    
    # Copy the cell
    tmp_cell = ly_new.create_cell(ly_tmp.top_cell().name)
    tmp_cell.copy_tree(ly_tmp.top_cell())
    
    # Insert cell
    top.insert(pya.DCellInstArray(tmp_cell.cell_index(),
    pya.DTrans(pya.DTrans.R0, pya.DPoint(cell['offset'][0], cell['offset'][1]))))

ly_new.write("../final/gds_fill/panamax_fpga.oas")
