lef read $::env(PDK_ROOT)/$::env(PDK)/libs.ref/sky130_fd_sc_hd/techlef/sky130_fd_sc_hd__nom.tlef
gds read gds/panamax_core_pins.gds.gz
load panamax_core_pins
select top cell

#extract do local
#extract no all
#extract all

port VPWR use power
port VGND use ground

def write def/panamax_core_pins
quit -noprompt
