# ./data/top.xdc

# create_clock -name clk -period 1000.000 [get_ports clk]

create_clock -period 10.000 -name CLK -waveform {0.000 5.000} [get_ports sysclk]

set_property -dict {PACKAGE_PIN R4 IOSTANDARD LVCMOS33} [get_ports sysclk]
set_property -dict {PACKAGE_PIN V2 IOSTANDARD LVCMOS33} [get_ports LED]
set_property -dict {PACKAGE_PIN B22 IOSTANDARD LVCMOS33} [get_ports KEY1]
set_property -dict {PACKAGE_PIN B21 IOSTANDARD LVCMOS33} [get_ports KEY2]

set_property -dict {PACKAGE_PIN N2 IOSTANDARD LVCMOS33} [get_ports {leds[0]}]
set_property -dict {PACKAGE_PIN P5 IOSTANDARD LVCMOS33} [get_ports {leds[1]}]
set_property -dict {PACKAGE_PIN V5 IOSTANDARD LVCMOS33} [get_ports {leds[2]}]
set_property -dict {PACKAGE_PIN U5 IOSTANDARD LVCMOS33} [get_ports {leds[3]}]
set_property -dict {PACKAGE_PIN T5 IOSTANDARD LVCMOS33} [get_ports {leds[4]}]
set_property -dict {PACKAGE_PIN P1 IOSTANDARD LVCMOS33} [get_ports {leds[5]}]
set_property -dict {PACKAGE_PIN W4 IOSTANDARD LVCMOS33} [get_ports {leds[6]}]
set_property -dict {PACKAGE_PIN V3 IOSTANDARD LVCMOS33} [get_ports {leds[7]}]


set_property -dict {PACKAGE_PIN Y3 IOSTANDARD LVCMOS33} [get_ports {SEL[0]}]
set_property -dict {PACKAGE_PIN R1 IOSTANDARD LVCMOS33} [get_ports {SEL[1]}]
set_property -dict {PACKAGE_PIN P2 IOSTANDARD LVCMOS33} [get_ports {SEL[2]}]
set_property -dict {PACKAGE_PIN M2 IOSTANDARD LVCMOS33} [get_ports {SEL[3]}]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {KEY1}]