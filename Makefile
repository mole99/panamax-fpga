all:
	openlane config.yaml --manual-pdk --pdk sky130A --pdk-root ~/.ciel
.phony: all

drt:
	openlane config.yaml --manual-pdk --pdk sky130A --pdk-root ~/.ciel --last-run --from OpenROAD.DetailedRouting --with-inital-state
.phony: drt

cts:
	openlane config.yaml --manual-pdk --pdk sky130A --pdk-root ~/.ciel --last-run --from OpenROAD.CTS --with-inital-state
.phony: cts
