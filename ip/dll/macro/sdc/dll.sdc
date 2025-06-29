###############################################################################
# Created by write_sdc
###############################################################################
current_design dll
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name pll_control_clock -period 6.6667 [get_pins {ringosc.ibufp01/Y}]
set_clock_transition 0.1500 [get_clocks {pll_control_clock}]
set_clock_uncertainty 0.2500 pll_control_clock
set_propagated_clock [get_clocks {pll_control_clock}]
set_input_delay 0.0000 -add_delay [get_ports {dco}]
set_input_delay 0.0000 -add_delay [get_ports {div[0]}]
set_input_delay 0.0000 -add_delay [get_ports {div[1]}]
set_input_delay 0.0000 -add_delay [get_ports {div[2]}]
set_input_delay 0.0000 -add_delay [get_ports {div[3]}]
set_input_delay 0.0000 -add_delay [get_ports {div[4]}]
set_input_delay 0.0000 -add_delay [get_ports {div[5]}]
set_input_delay 0.0000 -add_delay [get_ports {div[6]}]
set_input_delay 0.0000 -add_delay [get_ports {div[7]}]
set_input_delay 0.0000 -add_delay [get_ports {enable}]
set_input_delay 0.0000 -add_delay [get_ports {ext_trim[0]}]
set_input_delay 0.0000 -add_delay [get_ports {ext_trim[10]}]
set_input_delay 0.0000 -add_delay [get_ports {ext_trim[11]}]
set_input_delay 0.0000 -add_delay [get_ports {ext_trim[12]}]
set_input_delay 0.0000 -add_delay [get_ports {ext_trim[13]}]
set_input_delay 0.0000 -add_delay [get_ports {ext_trim[14]}]
set_input_delay 0.0000 -add_delay [get_ports {ext_trim[15]}]
set_input_delay 0.0000 -add_delay [get_ports {ext_trim[16]}]
set_input_delay 0.0000 -add_delay [get_ports {ext_trim[17]}]
set_input_delay 0.0000 -add_delay [get_ports {ext_trim[18]}]
set_input_delay 0.0000 -add_delay [get_ports {ext_trim[19]}]
set_input_delay 0.0000 -add_delay [get_ports {ext_trim[1]}]
set_input_delay 0.0000 -add_delay [get_ports {ext_trim[20]}]
set_input_delay 0.0000 -add_delay [get_ports {ext_trim[21]}]
set_input_delay 0.0000 -add_delay [get_ports {ext_trim[22]}]
set_input_delay 0.0000 -add_delay [get_ports {ext_trim[23]}]
set_input_delay 0.0000 -add_delay [get_ports {ext_trim[24]}]
set_input_delay 0.0000 -add_delay [get_ports {ext_trim[25]}]
set_input_delay 0.0000 -add_delay [get_ports {ext_trim[2]}]
set_input_delay 0.0000 -add_delay [get_ports {ext_trim[3]}]
set_input_delay 0.0000 -add_delay [get_ports {ext_trim[4]}]
set_input_delay 0.0000 -add_delay [get_ports {ext_trim[5]}]
set_input_delay 0.0000 -add_delay [get_ports {ext_trim[6]}]
set_input_delay 0.0000 -add_delay [get_ports {ext_trim[7]}]
set_input_delay 0.0000 -add_delay [get_ports {ext_trim[8]}]
set_input_delay 0.0000 -add_delay [get_ports {ext_trim[9]}]
set_input_delay 0.0000 -add_delay [get_ports {osc}]
set_input_delay 0.0000 -add_delay [get_ports {resetb}]
set_output_delay 0.0000 -add_delay [get_ports {clockp[0]}]
set_output_delay 0.0000 -add_delay [get_ports {clockp[1]}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {clockp[1]}]
set_load -pin_load 0.0334 [get_ports {clockp[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {dco}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {enable}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {osc}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {resetb}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {div[7]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {div[6]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {div[5]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {div[4]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {div[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {div[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {div[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {div[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ext_trim[25]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ext_trim[24]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ext_trim[23]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ext_trim[22]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ext_trim[21]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ext_trim[20]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ext_trim[19]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ext_trim[18]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ext_trim[17]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ext_trim[16]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ext_trim[15]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ext_trim[14]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ext_trim[13]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ext_trim[12]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ext_trim[11]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ext_trim[10]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ext_trim[9]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ext_trim[8]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ext_trim[7]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ext_trim[6]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ext_trim[5]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ext_trim[4]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ext_trim[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ext_trim[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ext_trim[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ext_trim[0]}]
###############################################################################
# Design Rules
###############################################################################
set_max_fanout 7.0000 [current_design]
