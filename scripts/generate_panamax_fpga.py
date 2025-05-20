import pya

ly_new = pya.Layout()
top = ly_new.create_cell("panamax_fpga")

cells = [
    {'layout': "../macro/gds/panamax_fpga_top.gds.gz",                          'offset': (208.85, 208.5)},                 # Core
    {'layout': "../ip/panamax/gds/panamax.gds.gz",                              'offset': (0, 0)},                          # Padring
    {'layout': "../ip/logo/gds/logo.gds.gz",                                    'offset': (208.85+2665+5, 208.5+120+5)},    # Logo
    {'layout': "../ip/panamax_core_pins/gds/panamax_core_connections.gds.gz",   'offset': (208.85, 208.5)},                 # Connections
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

ly_new.write("../final/gds/panamax_fpga.gds.gz")
