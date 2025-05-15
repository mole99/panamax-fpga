all:
	openlane config.yaml --manual-pdk --pdk sky130A --pdk-root ~/.ciel
.phony: all

hold-violations:
	openlane config.yaml --manual-pdk --pdk sky130A --pdk-root ~/.ciel --last-run --from OpenROAD.CTS --to OpenROAD.STAPostPNR --with-initial-state runs/RUN_2025-05-15_14-07-42/33-openroad-cts/state_in.json
.phony: hold-violations
