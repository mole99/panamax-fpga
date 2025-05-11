import pya

ly_new = pya.Layout()
top = ly_new.create_cell("panamax_fpga")

ly1 = pya.Layout()
ly1.read("../macro/gds/panamax_fpga_top.gds")

ly2 = pya.Layout()
ly2.read("../ip/panamax/gds/panamax.gds.gz")

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

top.insert(pya.DCellInstArray(cell1.cell_index(),
    pya.DTrans(pya.DTrans.R0, pya.DPoint(208.85, 208.5))))

top.insert(pya.DCellInstArray(cell2.cell_index(),
    pya.DTrans(pya.DTrans.R0, pya.DPoint(0, 0))))

ly_new.write("../macro/gds/panamax_fpga.gds")
