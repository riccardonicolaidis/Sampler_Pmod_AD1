onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+XADC_only_for_template -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.XADC_only_for_template xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {XADC_only_for_template.udo}

run -all

endsim

quit -force
