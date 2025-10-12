transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/stefa/Documents/GitHub/HDL/Cyclone IV EP4CE6E22C8N/top/clock_generator.vhd}
vcom -93 -work work {C:/Users/stefa/Documents/GitHub/HDL/Cyclone IV EP4CE6E22C8N/top/top.vhd}

