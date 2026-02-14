onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /lcd_example/rw
add wave -noupdate /lcd_example/rs
add wave -noupdate /lcd_example/reset_n
add wave -noupdate /lcd_example/lcd_enable
add wave -noupdate /lcd_example/lcd_busy
add wave -noupdate /lcd_example/lcd_bus
add wave -noupdate /lcd_example/e
add wave -noupdate /lcd_example/clk
add wave -noupdate /lcd_example/dut/state
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {52705779961 ps} 0} {{Cursor 2} {52199251852 ps} 0}
quietly wave cursor active 2
configure wave -namecolwidth 173
configure wave -valuecolwidth 66
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ms
update
WaveRestoreZoom {52142749379 ps} {52661242663 ps}
