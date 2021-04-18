# User config
set ::env(DESIGN_NAME) uart

# Change if needed
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]
#set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/runs/fourth_run/results/synthesis/uart.synthesis_optimized.v]
set ::env(SYNTH_MAX_FANOUT) 4
set ::env(SYNTH_STRATEGY) "DELAY 0"
#read_verilog "designs/uart/runs/fourth_run/results/synthesis/uart.synthesis_optimized.v "
#set ::env(SYNTH_SIZING) 1
# Fill this
set ::env(CLOCK_PERIOD) "10"
set ::env(CLOCK_PORT) "sys_clk"
set ::env(FP_CORE_UTIL) 47
set filename $::env(DESIGN_DIR)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl
if { [file exists $filename] == 1} {
	source $filename
}

