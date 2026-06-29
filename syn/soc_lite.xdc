#set_property SEVERITY {Warning} [get_drc_checks RTSTAT-2]
#时钟信号连接
set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property PACKAGE_PIN E3 [get_ports clk]

set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets clk]
create_clock -period 10.000 -name clk -waveform {0.000 5.000} [get_ports clk]

set_property IOSTANDARD LVCMOS33 [get_ports resetn]
set_property PACKAGE_PIN C12 [get_ports resetn]

set_property IOSTANDARD LVCMOS33 [get_ports {seg[0]}]
set_property PACKAGE_PIN L18 [get_ports {seg[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports {seg[1]}]
set_property PACKAGE_PIN T11 [get_ports {seg[1]}]

set_property IOSTANDARD LVCMOS33 [get_ports {seg[2]}]
set_property PACKAGE_PIN P15 [get_ports {seg[2]}]

set_property IOSTANDARD LVCMOS33 [get_ports {seg[3]}]
set_property PACKAGE_PIN K13 [get_ports {seg[3]}]

set_property IOSTANDARD LVCMOS33 [get_ports {seg[4]}]
set_property PACKAGE_PIN K16 [get_ports {seg[4]}]

set_property IOSTANDARD LVCMOS33 [get_ports {seg[5]}]
set_property PACKAGE_PIN R10 [get_ports {seg[5]}]

set_property IOSTANDARD LVCMOS33 [get_ports {seg[6]}]
set_property PACKAGE_PIN T10 [get_ports {seg[6]}]

set_property IOSTANDARD LVCMOS33 [get_ports {ans[0]}]
set_property PACKAGE_PIN J17 [get_ports {ans[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports {ans[1]}]
set_property PACKAGE_PIN J18 [get_ports {ans[1]}]

set_property IOSTANDARD LVCMOS33 [get_ports {ans[2]}]
set_property PACKAGE_PIN T9 [get_ports {ans[2]}]

set_property IOSTANDARD LVCMOS33 [get_ports {ans[3]}]
set_property PACKAGE_PIN J14 [get_ports {ans[3]}]

set_property IOSTANDARD LVCMOS33 [get_ports {ans[4]}]
set_property PACKAGE_PIN P14 [get_ports {ans[4]}]

set_property IOSTANDARD LVCMOS33 [get_ports {ans[5]}]
set_property PACKAGE_PIN T14 [get_ports {ans[5]}]

set_property IOSTANDARD LVCMOS33 [get_ports {ans[6]}]
set_property PACKAGE_PIN K2 [get_ports {ans[6]}]

set_property IOSTANDARD LVCMOS33 [get_ports {ans[7]}]
set_property PACKAGE_PIN U13 [get_ports {ans[7]}]

# set_false_path -from [get_clocks -of_objects [get_pins pll.clk_pll/inst/plle2_adv_inst/CLKOUT1]] -to [get_clocks -of_objects [get_pins pll.clk_pll/inst/plle2_adv_inst/CLKOUT0]]
# set_false_path -from [get_clocks -of_objects [get_pins pll.clk_pll/inst/plle2_adv_inst/CLKOUT0]] -to [get_clocks -of_objects [get_pins pll.clk_pll/inst/plle2_adv_inst/CLKOUT1]]
