set ::env(SYNTH_MAX_FANOUT) 4
set ::env(CLOCK_PERIOD) "10"
set ::env(CLOCK_PORT) "sys_clk"
#set ::env(SYNTH_DRIVING_CELL) "sky130_fd_sc_hd__inv_8"
set ::env(SYNTH_DRIVING_CELL) "sky130_fd_sc_hd__buf_8"
set ::env(SYNTH_DRIVING_CELL_PIN) X
set ::env(IO_PCT) 0.2
set ::env(SYNTH_CAP_LOAD) 6.5810000
#replace_cell clkbuf_0_sys_clk sky130_fd_sc_hd__clkbuf_8

#replace_cell _404_ sky130_fd_sc_hd__buf_16
#replace_cell _516_ sky130_fd_sc_hd__or4_4
#replace_cell _578_ sky130_fd_sc_hd__or4b_4
#replace_cell _407_ sky130_fd_sc_hd__or4_4
#replace_cell _372_ sky130_fd_sc_hd__or4_4
#replace_cell _473_ sky130_fd_sc_hd__or3_4
#replace_cell _378_ sky130_fd_sc_hd__or3_4
#replace_cell _375_ sky130_fd_sc_hd__or3_4
#replace_cell _657_ sky130_fd_sc_hd__or4_4
#replace_cell _371_ sky130_fd_sc_hd__or3_4


#replace_cell clkbuf_1_0_0_sys_clk sky130_fd_sc_hd__clkbuf_4
#replace_cell clkbuf_2_0_0_sys_clk sky130_fd_sc_hd__clkbuf_4
#replace_cell _819_ sky130_fd_sc_hd__dfxtp_4





#replace_cell _378_ sky130_fd_sc_hd__buf_16
#replace_cell _473_ sky130_fd_sc_hd__buf_16
#replace_cell _516_ sky130_fd_sc_hd__buf_16

create_clock [get_ports $::env(CLOCK_PORT)]  -name $::env(CLOCK_PORT)  -period $::env(CLOCK_PERIOD)
set input_delay_value [expr $::env(CLOCK_PERIOD) * $::env(IO_PCT)]
set output_delay_value [expr $::env(CLOCK_PERIOD) * $::env(IO_PCT)]
puts "\[INFO\]: Setting output delay to: $output_delay_value"
puts "\[INFO\]: Setting input delay to: $input_delay_value"

set_max_fanout $::env(SYNTH_MAX_FANOUT) [current_design]

set clk_indx [lsearch [all_inputs] [get_port $::env(CLOCK_PORT)]]
#set rst_indx [lsearch [all_inputs] [get_port resetn]]
set all_inputs_wo_clk [lreplace [all_inputs] $clk_indx $clk_indx]
#set all_inputs_wo_clk_rst [lreplace $all_inputs_wo_clk $rst_indx $rst_indx]
set all_inputs_wo_clk_rst $all_inputs_wo_clk


# correct resetn
set_input_delay $input_delay_value  -clock [get_clocks $::env(CLOCK_PORT)] $all_inputs_wo_clk_rst
#set_input_delay 0.0 -clock [get_clocks $::env(CLOCK_PORT)] {resetn}
set_output_delay $output_delay_value  -clock [get_clocks $::env(CLOCK_PORT)] [all_outputs]

# TODO set this as parameter
set_driving_cell -lib_cell $::env(SYNTH_DRIVING_CELL) -pin $::env(SYNTH_DRIVING_CELL_PIN) [all_inputs]
set cap_load [expr $::env(SYNTH_CAP_LOAD) / 1000.0]
puts "\[INFO\]: Setting load to: $cap_load"
set_load  $cap_load [all_outputs]
