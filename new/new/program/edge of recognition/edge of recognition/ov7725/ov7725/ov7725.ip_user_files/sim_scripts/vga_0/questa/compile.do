vlib work
vlib msim

vlib msim/xil_defaultlib

vmap xil_defaultlib msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../../ov7725.srcs/sources_1/ip/vga_0/src/vga.v" \
"../../../../ov7725.srcs/sources_1/ip/vga_0/sim/vga_0.v" \


vlog -work xil_defaultlib "glbl.v"

