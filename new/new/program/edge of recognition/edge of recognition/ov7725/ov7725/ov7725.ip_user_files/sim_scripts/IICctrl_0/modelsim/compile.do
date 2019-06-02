vlib work
vlib msim

vlib msim/xil_defaultlib

vmap xil_defaultlib msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../ov7725.srcs/sources_1/ip/IICctrl_0/sources_1/imports/src/I2C_Controller.v" \
"../../../../ov7725.srcs/sources_1/ip/IICctrl_0/sources_1/imports/src/IICctrl.v" \
"../../../../ov7725.srcs/sources_1/ip/IICctrl_0/sim/IICctrl_0.v" \


vlog -work xil_defaultlib "glbl.v"

