transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/stefa/Desktop/_QUARTUS PROJECTS/FPGA_project_Molari_Kretinin (LCD funzionante + spi F22F e C0C0)/spi.vhd}
vcom -93 -work work {C:/Users/stefa/Desktop/_QUARTUS PROJECTS/FPGA_project_Molari_Kretinin (LCD funzionante + spi F22F e C0C0)/debounce_fsm.vhd}
vcom -93 -work work {C:/Users/stefa/Desktop/_QUARTUS PROJECTS/FPGA_project_Molari_Kretinin (LCD funzionante + spi F22F e C0C0)/fsm.vhd}
vcom -93 -work work {C:/Users/stefa/Desktop/_QUARTUS PROJECTS/FPGA_project_Molari_Kretinin (LCD funzionante + spi F22F e C0C0)/clock_generator.vhd}
vcom -93 -work work {C:/Users/stefa/Desktop/_QUARTUS PROJECTS/FPGA_project_Molari_Kretinin (LCD funzionante + spi F22F e C0C0)/lcd_controller.vhd}
vcom -93 -work work {C:/Users/stefa/Desktop/_QUARTUS PROJECTS/FPGA_project_Molari_Kretinin (LCD funzionante + spi F22F e C0C0)/spi_fsm.vhd}
vcom -93 -work work {C:/Users/stefa/Desktop/_QUARTUS PROJECTS/FPGA_project_Molari_Kretinin (LCD funzionante + spi F22F e C0C0)/top.vhd}

