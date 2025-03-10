#**************************************************************
# This .sdc file is created by Terasic Tool.
# Users are recommended to modify this file to match users logic.
#**************************************************************

#**************************************************************
# Create Clock
#**************************************************************
create_clock -period "50.0 MHz" [get_ports FPGA_CLK1_50]
#create_clock -period "50.0 MHz" [get_ports FPGA_CLK2_50]
#create_clock -period "50.0 MHz" [get_ports FPGA_CLK3_50]

# for enhancing USB BlasterII to be reliable, 25MHz
create_clock -name {altera_reserved_tck} -period 40 {altera_reserved_tck}
set_input_delay -clock altera_reserved_tck -clock_fall 3 [get_ports altera_reserved_tdi]
set_input_delay -clock altera_reserved_tck -clock_fall 3 [get_ports altera_reserved_tms]
set_output_delay -clock altera_reserved_tck 3 [get_ports altera_reserved_tdo]

#**************************************************************
# Create Generated Clock
#**************************************************************
derive_pll_clocks



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************
set_clock_uncertainty 0.04 -to [get_clocks FPGA_CLK1_50] -setup
set_clock_uncertainty 0.04 -to [get_clocks FPGA_CLK1_50] -hold

# derive for PLL
derive_clock_uncertainty



#**************************************************************
# Set Input Delay
#**************************************************************
# Constrain the input I/O path
# Specifies the data arrival times at the specified input ports 
# relative the clock specified by the -clock option. 
# The clock must refer to a clock name in the design. 
# Input delays can be specified relative to the rising edge 
# (default) or falling edge (-clock_fall) of the clock. 
# The maximum input delay (-max) is used for clock setup checks
# the minimum input delay (-min) is used for clock hold checks.


set_input_delay -clock FPGA_CLK1_50 -max 3 [all_inputs]
set_input_delay -clock FPGA_CLK1_50 -min 2 [all_inputs]



#**************************************************************
# Set Output Delay
#**************************************************************
# Constrain the output I/O path
# Specifies the data arrival times at the specified output ports 
# relative the clock specified by the -clock option. 
# The clock must refer to a clock name in the design. 
# Output delays can be specified relative to the rising edge 
# (default) or falling edge (-clock_fall) of the clock. 
# The maximum output delay (-max) is used for clock setup checks
# the minimum output delay (-min) is used for clock hold checks.

set_output_delay -clock FPGA_CLK1_50 -max 3 [all_outputs]
set_output_delay -clock FPGA_CLK1_50 -min 2 [all_outputs]


#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************



#**************************************************************
# Set Load
#**************************************************************






