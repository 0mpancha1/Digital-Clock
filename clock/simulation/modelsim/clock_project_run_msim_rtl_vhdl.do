transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/AND_2.vhd}
vcom -93 -work work {E:/clock/EE_232.vhd}
vcom -93 -work work {E:/clock/OR_2.vhd}
vcom -93 -work work {E:/clock/NOT_1.vhd}
vcom -93 -work work {E:/clock/D_FF.vhd}
vcom -93 -work work {E:/clock/CLK_DVD.vhd}
vcom -93 -work work {E:/xor_2.vhd}
vcom -93 -work work {E:/clock/CLOCK.vhd}
vcom -93 -work work {E:/clock/MUX_2X1.vhd}
vcom -93 -work work {E:/clock/COUNTER_SYNC_MOD12.vhd}
vcom -93 -work work {E:/clock/COUNTER_SYNC_MOD10.vhd}
vcom -93 -work work {E:/clock/COUNTER_SYNC_MOD6.vhd}
vcom -93 -work work {E:/clock/BCD2SSD.vhd}

