onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ov7725_regData_0_opt

do {wave.do}

view wave
view structure
view signals

do {ov7725_regData_0.udo}

run -all

quit -force
