onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib cam_ov7670_ov7725_0_opt

do {wave.do}

view wave
view structure
view signals

do {cam_ov7670_ov7725_0.udo}

run -all

quit -force
