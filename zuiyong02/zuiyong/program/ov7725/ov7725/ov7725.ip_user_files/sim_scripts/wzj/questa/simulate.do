onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib wzj_opt

do {wave.do}

view wave
view structure
view signals

do {wzj.udo}

run -all

quit -force
