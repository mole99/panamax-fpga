RUN_TAG = $(shell ls runs/ -1 | tail -n 1)
$(echo $RUN_TAG)

TOP_CORE = panamax_fpga_top
TOP = panamax_fpga

PDK ?= sky130A
PDK_ROOT ?= ~/.ciel

pnr:
	openlane config.yaml --manual-pdk --pdk sky130A --pdk-root ~/.ciel
.phony: pnr

check-hold-violations:
	openlane config.yaml --manual-pdk --pdk sky130A --pdk-root ~/.ciel --last-run --from OpenROAD.CTS --to OpenROAD.STAPostPNR --with-initial-state runs/${RUN_TAG}/33-openroad-cts/state_in.json
.phony: check-hold-violations

lvs:
	@echo "\
	set circuit1 [readnet spice final/spice_edit/${TOP_CORE}.spice]\n\
	set circuit2 [readnet verilog /dev/null]\n\
	readnet spice $(PDK_ROOT)/$(PDK)/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice \$$circuit2\n\
	readnet spice $(PDK_ROOT)/$(PDK)/libs.ref/sg13g2_io/spice/sg13g2_io.spi \$$circuit2\n\
	readnet verilog final/pnl_edit/${TOP_CORE}.pnl.v \$$circuit2\n\
	lvs \"\$$circuit1 ${TOP_CORE}\" \"\$$circuit2 ${TOP_CORE}\" $(PDK_ROOT)/$(PDK)/libs.tech/netgen/ihp-sg13g2_setup.tcl netgen_lvs.rpt -blackbox" > lvs_script.tcl
	
	netgen -batch source lvs_script.tcl
.PHONY: lvs

drc:
	klayout -b -r $(PDK_ROOT)/$(PDK)/libs.tech/klayout/tech/drc/sky130A_mr.drc -rd input=final/gds_fill/${TOP}.gds.gz -rd top_cell=${TOP} -rd report=panamax_fpga.lyrdb -rd thr=$(shell nproc) -rd feol=true -rd beol=true -rd offgrid=true
.PHONY: drc

copy-macro:
	mkdir -p macro/pnl/
	mkdir -p macro/spice/
	mkdir -p macro/nl/
	mkdir -p macro/gds/
	mkdir -p macro/odb/
	mkdir -p macro/def/
	mkdir -p macro/spef/max/
	mkdir -p macro/spef/min/
	mkdir -p macro/spef/nom/

	cp runs/${RUN_TAG}/final/pnl/${TOP_CORE}.pnl.v macro/pnl/${TOP_CORE}.pnl.v
	cp runs/${RUN_TAG}/final/spice/${TOP_CORE}.spice macro/spice/${TOP_CORE}.spice
	cp runs/${RUN_TAG}/final/nl/${TOP_CORE}.nl.v macro/nl/${TOP_CORE}.nl.v
	cp runs/${RUN_TAG}/final/gds/${TOP_CORE}.gds macro/gds/${TOP_CORE}.gds
	cp runs/${RUN_TAG}/final/odb/${TOP_CORE}.odb macro/odb/${TOP_CORE}.odb
	cp runs/${RUN_TAG}/final/def/${TOP_CORE}.def macro/def/${TOP_CORE}.def
	cp runs/${RUN_TAG}/final/spef/max/${TOP_CORE}.max.spef macro/spef/max/${TOP_CORE}.max.spef
	cp runs/${RUN_TAG}/final/spef/min/${TOP_CORE}.min.spef macro/spef/min/${TOP_CORE}.min.spef
	cp runs/${RUN_TAG}/final/spef/nom/${TOP_CORE}.nom.spef macro/spef/nom/${TOP_CORE}.nom.spef
	
	gzip macro/gds/${TOP_CORE}.gds
	gzip macro/odb/${TOP_CORE}.odb

fill:
	PDK_ROOT=$(PDK_ROOT) PDK=$(PDK) $(PDK_ROOT)/$(PDK)/libs.tech/magic/generate_fill.py final/gds/${TOP}.gds.gz -dist
	
	# Move the fill pattern, it's saved under gds/ because of how generate_fill works...
	mkdir -p final/gds_fill/
	mv final/gds/${TOP}_fill_pattern.gds.gz final/gds_fill/${TOP}_fill_pattern.gds.gz
	
	# Merge layout with fill
	#python3 scripts/merge_fill.py final/gds_logo/${TOP}.gds.gz final/gds_fill/${TOP}_fill_pattern.gds.gz final/gds_fill/${TOP}.gds.gz
	
	# Run density check
	#PDK_ROOT=$(PDK_ROOT) PDK=$(PDK) $(PDK_ROOT)/$(PDK)/libs.tech/magic/check_density.py final/gds_fill/${TOP}.gds.gz
.PHONY: fill

create-image:
	PDK_ROOT=$(PDK_ROOT) PDK=$(PDK) klayout -z -r scripts/klayout_image.py -rd input_gds=final/gds_logo/${TOP}.gds.gz -rd output_image=img/${TOP}.png
	convert img/${TOP}.png -resize 25% img/${TOP}_small.png
.PHONY: create-image
