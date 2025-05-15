import pya

ly_new = pya.Layout()
top = ly_new.create_cell("panamax_fpga")

# Core
ly1 = pya.Layout()
ly1.read("../macro/gds/panamax_fpga_top.gds")

# Padring
ly2 = pya.Layout()
ly2.read("../ip/panamax/gds/panamax.gds.gz")

# Logo
ly3 = pya.Layout()
ly3.read("../ip/logo/gds/logo.gds")

# Core connections
ly4 = pya.Layout()
ly4.read("../ip/gds/panamax_core_connections.gds.gz")

# Use move_tree instead of copy_tree
# -> more memory efficient

# Move cell1
#cell1 = ly_new.create_cell(ly1.top_cell().name)
cell1 = ly_new.create_cell('panamax_fpga_top')
#cell1.copy_tree(ly1.top_cell())
cell1.copy_tree(ly1.cell('panamax_fpga_top'))

# Move cell2
cell2 = ly_new.create_cell(ly2.top_cell().name)
cell2.copy_tree(ly2.top_cell())

# Move cell3
cell3 = ly_new.create_cell(ly3.top_cell().name)
cell3.copy_tree(ly3.top_cell())

# Move cell4
cell4 = ly_new.create_cell(ly4.top_cell().name)
cell4.copy_tree(ly4.top_cell())

top.insert(pya.DCellInstArray(cell1.cell_index(),
    pya.DTrans(pya.DTrans.R0, pya.DPoint(208.85, 208.5))))

top.insert(pya.DCellInstArray(cell2.cell_index(),
    pya.DTrans(pya.DTrans.R0, pya.DPoint(0, 0))))

top.insert(pya.DCellInstArray(cell3.cell_index(),
    pya.DTrans(pya.DTrans.R0, pya.DPoint(0, 0))))

top.insert(pya.DCellInstArray(cell4.cell_index(),
    pya.DTrans(pya.DTrans.R0, pya.DPoint(208.85, 208.5))))

ly_new.write("../final/gds/panamax_fpga.gds.gz")
