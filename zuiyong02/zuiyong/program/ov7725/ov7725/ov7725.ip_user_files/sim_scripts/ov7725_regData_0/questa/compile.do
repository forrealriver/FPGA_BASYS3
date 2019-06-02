vlib work
vlib msim

vlib msim/xil_defaultlib

vmap xil_defaultlib msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../../ov7725.srcs/sources_1/ip/ov7725_regData_0/ov7725_regData.v" \
"../../../../ov7725.srcs/sources_1/ip/ov7725_regData_0/sim/ov7725_regData_0.v" \


vlog -work xil_defaultlib "glbl.v"

