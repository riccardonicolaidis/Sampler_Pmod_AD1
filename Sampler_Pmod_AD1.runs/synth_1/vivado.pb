
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:062default:default2
00:00:072default:default2
1419.0002default:default2
0.0002default:defaultZ17-268h px? 
?
Command: %s
1870*	planAhead2?
?read_checkpoint -auto_incremental -incremental C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/utils_1/imports/synth_1/Sampler_top_module.dcp2default:defaultZ12-2866h px? 
?
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2?
|C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/utils_1/imports/synth_1/Sampler_top_module.dcp2default:defaultZ12-5825h px? 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px? 
?
Command: %s
53*	vivadotcl2P
<synth_design -top Sampler_top_module -part xc7a35ticsg324-1L2default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35ti2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35ti2default:defaultZ17-349h px? 
X
Loading part %s157*device2%
xc7a35ticsg324-1L2default:defaultZ21-403h px? 
?
[Reference run did not run incremental synthesis because %s; reverting to default synthesis
2138*designutils2+
the design is too small2default:defaultZ20-4072h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
_
#Helper process launched with PID %s4824*oasys2
31962default:defaultZ8-7075h px? 
?
%s*synth2?
wStarting RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 1419.000 ; gain = 0.000
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2&
Sampler_top_module2default:default2
 2default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/new/Sampler_top_module.sv2default:default2
12default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2

DC_Blocker2default:default2
 2default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/imports/Sources_Muon_telescope/DC_blocker.sv2default:default2
12default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter width bound to: 13 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter Size_log2 bound to: 14 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2+
Module_FrequencyDivider2default:default2
 2default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/imports/Sources_Muon_telescope/Frequency_Divider.sv2default:default2
12default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
Module_FrequencyDivider2default:default2
 2default:default2
12default:default2
12default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/imports/Sources_Muon_telescope/Frequency_Divider.sv2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

DC_Blocker2default:default2
 2default:default2
22default:default2
12default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/imports/Sources_Muon_telescope/DC_blocker.sv2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2+
Module_Time_Measurement2default:default2
 2default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/imports/Sources_Muon_telescope/time_measurement.sv2default:default2
12default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2/
Module_SynchroCounter_4_bit2default:default2
 2default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/imports/Sources_Muon_telescope/SynchroCounter_4_bit.sv2default:default2
12default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2/
Module_SynchroCounter_4_bit2default:default2
 2default:default2
32default:default2
12default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/imports/Sources_Muon_telescope/SynchroCounter_4_bit.sv2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
Module_Time_Measurement2default:default2
 2default:default2
42default:default2
12default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/imports/Sources_Muon_telescope/time_measurement.sv2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
XADC_module2default:default2
 2default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/imports/Sources_Muon_telescope/XADC_module.sv2default:default2
732default:default8@Z8-6157h px? 
Y
%s
*synth2A
-	Parameter N_CH bound to: 2 - type: integer 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter N_P bound to: 12 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
	adc_demux2default:default2
 2default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/imports/Sources_Muon_telescope/adc_demux.sv2default:default2
12default:default8@Z8-6157h px? 
Y
%s
*synth2A
-	Parameter N_P bound to: 12 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	adc_demux2default:default2
 2default:default2
52default:default2
12default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/imports/Sources_Muon_telescope/adc_demux.sv2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2

xadc_wiz_02default:default2
 2default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/imports/Sources_Muon_telescope/xadc__netlist.v2default:default2
532default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
XADC2default:default2
 2default:default2K
5D:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
1101472default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter INIT_40 bound to: 16'b0000000000000000 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter INIT_41 bound to: 16'b0010000110101111 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter INIT_42 bound to: 16'b0000010000000000 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter INIT_43 bound to: 16'b0000000000000000 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter INIT_44 bound to: 16'b0000000000000000 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter INIT_45 bound to: 16'b0000000000000000 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter INIT_46 bound to: 16'b0000000000000000 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter INIT_47 bound to: 16'b0000000000000000 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter INIT_48 bound to: 16'b0000000000000000 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter INIT_49 bound to: 16'b0000000000110000 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter INIT_4A bound to: 16'b0000000000000000 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter INIT_4B bound to: 16'b0000000000000000 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter INIT_4C bound to: 16'b0000000000000000 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter INIT_4D bound to: 16'b0000000000000000 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter INIT_4E bound to: 16'b0000000000000000 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter INIT_4F bound to: 16'b0000000000000000 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter INIT_50 bound to: 16'b1011010111101101 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter INIT_51 bound to: 16'b0101011111100100 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter INIT_52 bound to: 16'b1010000101000111 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter INIT_53 bound to: 16'b1100101000110011 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter INIT_54 bound to: 16'b1010100100111010 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter INIT_55 bound to: 16'b0101001011000110 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter INIT_56 bound to: 16'b1001010101010101 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter INIT_57 bound to: 16'b1010111001001110 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter INIT_58 bound to: 16'b0101100110011001 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter INIT_59 bound to: 16'b0000000000000000 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter INIT_5A bound to: 16'b0000000000000000 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter INIT_5B bound to: 16'b0000000000000000 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter INIT_5C bound to: 16'b0101000100010001 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter INIT_5D bound to: 16'b0000000000000000 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter INIT_5E bound to: 16'b0000000000000000 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter INIT_5F bound to: 16'b0000000000000000 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter IS_CONVSTCLK_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter IS_DCLK_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter SIM_DEVICE bound to: 7SERIES - type: string 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter SIM_MONITOR_FILE bound to: design.txt - type: string 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
XADC2default:default2
 2default:default2
62default:default2
12default:default2K
5D:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
1101472default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

xadc_wiz_02default:default2
 2default:default2
72default:default2
12default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/imports/Sources_Muon_telescope/xadc__netlist.v2default:default2
532default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
vauxn82default:default2

xadc_wiz_02default:default2
	xadc_unit2default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/imports/Sources_Muon_telescope/XADC_module.sv2default:default2
952default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
vauxp92default:default2

xadc_wiz_02default:default2
	xadc_unit2default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/imports/Sources_Muon_telescope/XADC_module.sv2default:default2
952default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
	xadc_unit2default:default2

xadc_wiz_02default:default2
492default:default2
472default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/imports/Sources_Muon_telescope/XADC_module.sv2default:default2
952default:default8@Z8-7023h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
XADC_module2default:default2
 2default:default2
82default:default2
12default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/imports/Sources_Muon_telescope/XADC_module.sv2default:default2
732default:default8@Z8-6155h px? 
?
synthesizing module '%s'638*oasys2$
pmod_adc_ad7476a2default:default2?
lC:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/new/pmod_wrapper.vhd2default:default2
412default:default8@Z8-638h px? 
_
%s
*synth2G
3	Parameter clk_freq bound to: 100 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter spi_clk_div bound to: 3 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter slaves bound to: 1 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter d_width bound to: 16 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2(
spi_master_dual_miso2default:default2?
tC:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/new/SPI_master_dual_miso.vhd2default:default2
282default:default2*
spi_master_dual_miso_02default:default2(
spi_master_dual_miso2default:default2?
lC:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/new/pmod_wrapper.vhd2default:default2
752default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2(
spi_master_dual_miso2default:default2?
tC:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/new/SPI_master_dual_miso.vhd2default:default2
522default:default8@Z8-638h px? 
[
%s
*synth2C
/	Parameter slaves bound to: 1 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter d_width bound to: 16 - type: integer 
2default:defaulth p
x
? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2(
spi_master_dual_miso2default:default2
92default:default2
12default:default2?
tC:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/new/SPI_master_dual_miso.vhd2default:default2
522default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2$
pmod_adc_ad7476a2default:default2
102default:default2
12default:default2?
lC:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/new/pmod_wrapper.vhd2default:default2
412default:default8@Z8-256h px? 
?
synthesizing module '%s'%s4497*oasys2#
Pulse_generator2default:default2
 2default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/new/Pulse_generator.sv2default:default2
12default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
Pulse_generator2default:default2
 2default:default2
112default:default2
12default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/new/Pulse_generator.sv2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2 
Printer_uart2default:default2
 2default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/imports/Sources_Muon_telescope/Printer_uart.sv2default:default2
12default:default8@Z8-6157h px? 
Y
%s
*synth2A
-	Parameter N_T bound to: 32 - type: integer 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter N_P bound to: 13 - type: integer 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter N_CH bound to: 4 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter ADDR_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2$
fifo_generator_02default:default2
 2default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.runs/synth_1/.Xil/Vivado-15516-LAPTOP-LB6J3CUA/realtime/fifo_generator_0_stub.v2default:default2
62default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
fifo_generator_02default:default2
 2default:default2
122default:default2
12default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.runs/synth_1/.Xil/Vivado-15516-LAPTOP-LB6J3CUA/realtime/fifo_generator_0_stub.v2default:default2
62default:default8@Z8-6155h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
132default:default2
din2default:default2
122default:default2$
fifo_generator_02default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/imports/Sources_Muon_telescope/Printer_uart.sv2default:default2
1022default:default8@Z8-689h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
132default:default2
dout2default:default2
122default:default2$
fifo_generator_02default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/imports/Sources_Muon_telescope/Printer_uart.sv2default:default2
1052default:default8@Z8-689h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
132default:default2
din2default:default2
122default:default2$
fifo_generator_02default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/imports/Sources_Muon_telescope/Printer_uart.sv2default:default2
1022default:default8@Z8-689h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
132default:default2
dout2default:default2
122default:default2$
fifo_generator_02default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/imports/Sources_Muon_telescope/Printer_uart.sv2default:default2
1052default:default8@Z8-689h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
132default:default2
din2default:default2
122default:default2$
fifo_generator_02default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/imports/Sources_Muon_telescope/Printer_uart.sv2default:default2
1022default:default8@Z8-689h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
132default:default2
dout2default:default2
122default:default2$
fifo_generator_02default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/imports/Sources_Muon_telescope/Printer_uart.sv2default:default2
1052default:default8@Z8-689h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
132default:default2
din2default:default2
122default:default2$
fifo_generator_02default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/imports/Sources_Muon_telescope/Printer_uart.sv2default:default2
1022default:default8@Z8-689h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
132default:default2
dout2default:default2
122default:default2$
fifo_generator_02default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/imports/Sources_Muon_telescope/Printer_uart.sv2default:default2
1052default:default8@Z8-689h px? 
?
synthesizing module '%s'%s4497*oasys2'
fifo_generator_time2default:default2
 2default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.runs/synth_1/.Xil/Vivado-15516-LAPTOP-LB6J3CUA/realtime/fifo_generator_time_stub.v2default:default2
62default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2'
fifo_generator_time2default:default2
 2default:default2
132default:default2
12default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.runs/synth_1/.Xil/Vivado-15516-LAPTOP-LB6J3CUA/realtime/fifo_generator_time_stub.v2default:default2
62default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2!
Binary_to_BCD2default:default2
 2default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/imports/Sources_Muon_telescope/binary_BCD.v2default:default2
12default:default8@Z8-6157h px? 
a
%s
*synth2I
5	Parameter INPUT_WIDTH bound to: 13 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter DECIMAL_DIGITS bound to: 5 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
Binary_to_BCD2default:default2
 2default:default2
142default:default2
12default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/imports/Sources_Muon_telescope/binary_BCD.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
uart2default:default2
 2default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/imports/Sources_Muon_telescope/uart.sv2default:default2
12default:default8@Z8-6157h px? 
Y
%s
*synth2A
-	Parameter DBIT bound to: 8 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter SB_TICK bound to: 16 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter FIFO_W bound to: 5 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
baud_gen2default:default2
 2default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/imports/Sources_Muon_telescope/baud_gen.sv2default:default2
42default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
baud_gen2default:default2
 2default:default2
152default:default2
12default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/imports/Sources_Muon_telescope/baud_gen.sv2default:default2
42default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
uart_rx2default:default2
 2default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/imports/Sources_Muon_telescope/uart_rx.sv2default:default2
22default:default8@Z8-6157h px? 
Y
%s
*synth2A
-	Parameter DBIT bound to: 8 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter SB_TICK bound to: 16 - type: integer 
2default:defaulth p
x
? 
?
-case statement is not full and has no default155*oasys2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/imports/Sources_Muon_telescope/uart_rx.sv2default:default2
472default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
uart_rx2default:default2
 2default:default2
162default:default2
12default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/imports/Sources_Muon_telescope/uart_rx.sv2default:default2
22default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
uart_tx2default:default2
 2default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/imports/Sources_Muon_telescope/uart_tx.sv2default:default2
22default:default8@Z8-6157h px? 
Y
%s
*synth2A
-	Parameter DBIT bound to: 8 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter SB_TICK bound to: 16 - type: integer 
2default:defaulth p
x
? 
?
-case statement is not full and has no default155*oasys2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/imports/Sources_Muon_telescope/uart_tx.sv2default:default2
522default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
uart_tx2default:default2
 2default:default2
172default:default2
12default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/imports/Sources_Muon_telescope/uart_tx.sv2default:default2
22default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2'
fifo_generator_uart2default:default2
 2default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.runs/synth_1/.Xil/Vivado-15516-LAPTOP-LB6J3CUA/realtime/fifo_generator_uart_stub.v2default:default2
62default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2'
fifo_generator_uart2default:default2
 2default:default2
182default:default2
12default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.runs/synth_1/.Xil/Vivado-15516-LAPTOP-LB6J3CUA/realtime/fifo_generator_uart_stub.v2default:default2
62default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
uart2default:default2
 2default:default2
192default:default2
12default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/imports/Sources_Muon_telescope/uart.sv2default:default2
12default:default8@Z8-6155h px? 
?
?Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2-
start_conversion_peak_reg2default:default2 
Printer_uart2default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/imports/Sources_Muon_telescope/Printer_uart.sv2default:default2
1532default:default8@Z8-7137h px? 
?
?Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2/
Converter_peak_assigned_reg2default:default2 
Printer_uart2default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/imports/Sources_Muon_telescope/Printer_uart.sv2default:default2
1542default:default8@Z8-7137h px? 
?
?Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2%
CONTROL_STATE_reg2default:default2 
Printer_uart2default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/imports/Sources_Muon_telescope/Printer_uart.sv2default:default2
1582default:default8@Z8-7137h px? 
?
?Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2(
A_peak_event_reg_reg2default:default2 
Printer_uart2default:defaultZ8-7137h px? 
?
?Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2(
A_peak_event_BCD_reg2default:default2 
Printer_uart2default:defaultZ8-7137h px? 
?
qTrying to implement RAM '%s' in registers. Block RAM or DRAM implementation is not possible; see log for reasons.3901*oasys2(
A_peak_event_BCD_reg2default:defaultZ8-4767h px? 
U
%s
*synth2=
)Reason is one or more of the following :
2default:defaulth p
x
? 
?
%s
*synth2i
U	1: RAM is sensitive to asynchronous reset signal. this RTL style is not supported. 
2default:defaulth p
x
? 
`
%s
*synth2H
4RAM "A_peak_event_BCD_reg" dissolved into registers
2default:defaulth p
x
? 
?
qTrying to implement RAM '%s' in registers. Block RAM or DRAM implementation is not possible; see log for reasons.3901*oasys2(
A_peak_event_reg_reg2default:defaultZ8-4767h px? 
U
%s
*synth2=
)Reason is one or more of the following :
2default:defaulth p
x
? 
?
%s
*synth2i
U	1: RAM is sensitive to asynchronous reset signal. this RTL style is not supported. 
2default:defaulth p
x
? 
`
%s
*synth2H
4RAM "A_peak_event_reg_reg" dissolved into registers
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
Printer_uart2default:default2
 2default:default2
202default:default2
12default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/imports/Sources_Muon_telescope/Printer_uart.sv2default:default2
12default:default8@Z8-6155h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2
led2default:default2&
Sampler_top_module2default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/new/Sampler_top_module.sv2default:default2
102default:default8@Z8-3848h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
Sampler_top_module2default:default2
 2default:default2
212default:default2
12default:default2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/sources_1/imports/sources_1/new/Sampler_top_module.sv2default:default2
12default:default8@Z8-6155h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2'
A_peak_event[3][12]2default:default2 
Printer_uart2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2'
A_peak_event[2][12]2default:default2 
Printer_uart2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2'
A_peak_event[1][12]2default:default2 
Printer_uart2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2'
A_peak_event[0][12]2default:default2 
Printer_uart2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
adc_data[3]2default:default2
	adc_demux2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
adc_data[2]2default:default2
	adc_demux2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
adc_data[1]2default:default2
	adc_demux2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
adc_data[0]2default:default2
	adc_demux2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[3]2default:default2&
Sampler_top_module2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[2]2default:default2&
Sampler_top_module2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[1]2default:default2&
Sampler_top_module2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[0]2default:default2&
Sampler_top_module2default:defaultZ8-7129h px? 
?
%s*synth2?
wFinished RTL Elaboration : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 1419.000 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 1419.000 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 1419.000 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0512default:default2
1419.0002default:default2
0.0002default:defaultZ17-268h px? 
e
-Analyzing %s Unisim elements for replacement
17*netlist2
12default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.gen/sources_1/ip/fifo_generator_0/fifo_generator_0/fifo_generator_0_in_context.xdc2default:default2D
.UART_DISPLAY/fifo_peak_generation[0].FIFO_PEAK	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.gen/sources_1/ip/fifo_generator_0/fifo_generator_0/fifo_generator_0_in_context.xdc2default:default2D
.UART_DISPLAY/fifo_peak_generation[0].FIFO_PEAK	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.gen/sources_1/ip/fifo_generator_0/fifo_generator_0/fifo_generator_0_in_context.xdc2default:default2D
.UART_DISPLAY/fifo_peak_generation[1].FIFO_PEAK	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.gen/sources_1/ip/fifo_generator_0/fifo_generator_0/fifo_generator_0_in_context.xdc2default:default2D
.UART_DISPLAY/fifo_peak_generation[1].FIFO_PEAK	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.gen/sources_1/ip/fifo_generator_0/fifo_generator_0/fifo_generator_0_in_context.xdc2default:default2D
.UART_DISPLAY/fifo_peak_generation[2].FIFO_PEAK	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.gen/sources_1/ip/fifo_generator_0/fifo_generator_0/fifo_generator_0_in_context.xdc2default:default2D
.UART_DISPLAY/fifo_peak_generation[2].FIFO_PEAK	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.gen/sources_1/ip/fifo_generator_0/fifo_generator_0/fifo_generator_0_in_context.xdc2default:default2D
.UART_DISPLAY/fifo_peak_generation[3].FIFO_PEAK	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.gen/sources_1/ip/fifo_generator_0/fifo_generator_0/fifo_generator_0_in_context.xdc2default:default2D
.UART_DISPLAY/fifo_peak_generation[3].FIFO_PEAK	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.gen/sources_1/ip/fifo_generator_time/fifo_generator_time/fifo_generator_time_in_context.xdc2default:default2,
UART_DISPLAY/FIFO_TIME	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.gen/sources_1/ip/fifo_generator_time/fifo_generator_time/fifo_generator_time_in_context.xdc2default:default2,
UART_DISPLAY/FIFO_TIME	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.gen/sources_1/ip/fifo_generator_uart/fifo_generator_uart/fifo_generator_uart_in_context.xdc2default:default2;
%UART_DISPLAY/UART_MODULE/fifo_rx_unit	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.gen/sources_1/ip/fifo_generator_uart/fifo_generator_uart/fifo_generator_uart_in_context.xdc2default:default2;
%UART_DISPLAY/UART_MODULE/fifo_rx_unit	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.gen/sources_1/ip/fifo_generator_uart/fifo_generator_uart/fifo_generator_uart_in_context.xdc2default:default2;
%UART_DISPLAY/UART_MODULE/fifo_tx_unit	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.gen/sources_1/ip/fifo_generator_uart/fifo_generator_uart/fifo_generator_uart_in_context.xdc2default:default2;
%UART_DISPLAY/UART_MODULE/fifo_tx_unit	2default:default8Z20-847h px? 
?
Parsing XDC File [%s]
179*designutils2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/constrs_1/imports/Sources_Muon_telescope/Arty-A7-35-Master.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/constrs_1/imports/Sources_Muon_telescope/Arty-A7-35-Master.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2?
?C:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.srcs/constrs_1/imports/Sources_Muon_telescope/Arty-A7-35-Master.xdc2default:default28
$.Xil/Sampler_top_module_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1477.9412default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0202default:default2
1477.9412default:default2
0.0002default:defaultZ17-268h px? 
?
[Reference run did not run incremental synthesis because %s; reverting to default synthesis
2138*designutils2+
the design is too small2default:defaultZ20-4072h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
~Finished Constraint Validation : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 1477.941 ; gain = 58.941
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Loading part: xc7a35ticsg324-1L
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 1477.941 ; gain = 58.941
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 1477.941 ; gain = 58.941
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2!
r_SM_Main_reg2default:default2!
Binary_to_BCD2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2!
state_reg_reg2default:default2
uart_rx2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2!
state_reg_reg2default:default2
uart_tx2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2!
state_reg_reg2default:default2 
Printer_uart2default:defaultZ8-802h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                    idle |                               00 | 00000000000000000000000000000000
2default:defaulth p
x
? 
?
%s
*synth2s
_                   start |                               01 | 00000000000000000000000000000001
2default:defaulth p
x
? 
?
%s
*synth2s
_                    data |                               10 | 00000000000000000000000000000010
2default:defaulth p
x
? 
?
%s
*synth2s
_                    stop |                               11 | 00000000000000000000000000000011
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2!
state_reg_reg2default:default2

sequential2default:default2
uart_rx2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                    idle |                               00 | 00000000000000000000000000000000
2default:defaulth p
x
? 
?
%s
*synth2s
_                   start |                               01 | 00000000000000000000000000000001
2default:defaulth p
x
? 
?
%s
*synth2s
_                    data |                               10 | 00000000000000000000000000000010
2default:defaulth p
x
? 
?
%s
*synth2s
_                    stop |                               11 | 00000000000000000000000000000011
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2!
state_reg_reg2default:default2

sequential2default:default2
uart_tx2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                    IDLE |                          0000001 | 00000000000000000000000000000000
2default:defaulth p
x
? 
?
%s
*synth2s
_               FILL_TIME |                          0000010 | 00000000000000000000000000000010
2default:defaulth p
x
? 
?
%s
*synth2s
_              FILL_PEAKS |                          0000100 | 00000000000000000000000000000011
2default:defaulth p
x
? 
?
%s
*synth2s
_               SEND_TIME |                          0001000 | 00000000000000000000000000000001
2default:defaulth p
x
? 
?
%s
*synth2s
_                BCD_PEAK |                          0010000 | 00000000000000000000000000000100
2default:defaulth p
x
? 
?
%s
*synth2s
_               SEND_PEAK |                          0100000 | 00000000000000000000000000000101
2default:defaulth p
x
? 
?
%s
*synth2s
_             FINAL_STATE |                          1000000 | 00000000000000000000000000000110
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2!
state_reg_reg2default:default2
one-hot2default:default2 
Printer_uart2default:defaultZ8-3354h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:20 ; elapsed = 00:00:22 . Memory (MB): peak = 1477.941 ; gain = 58.941
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   30 Bit       Adders := 7     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   15 Bit       Adders := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   13 Bit       Adders := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   11 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit       Adders := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    7 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    6 Bit       Adders := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    5 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit       Adders := 19    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    3 Bit       Adders := 3     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               30 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               27 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               20 Bit    Registers := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               13 Bit    Registers := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               12 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               11 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                6 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                5 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 11    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 52    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input   32 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   20 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input   20 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input   20 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   16 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   15 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input   13 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input   13 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input   12 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   11 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 9     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input    8 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    6 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    5 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 21    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    4 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    3 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    2 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 85    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input    1 Bit        Muxes := 21    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 11    
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2'
A_peak_event[3][12]2default:default2 
Printer_uart2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2'
A_peak_event[2][12]2default:default2 
Printer_uart2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2'
A_peak_event[1][12]2default:default2 
Printer_uart2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2'
A_peak_event[0][12]2default:default2 
Printer_uart2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[3]2default:default2&
Sampler_top_module2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[2]2default:default2&
Sampler_top_module2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[1]2default:default2&
Sampler_top_module2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[0]2default:default2&
Sampler_top_module2default:defaultZ8-7129h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
WRAPPING_CIRCUIT_PMOD_AD1i_102default:default2&
Sampler_top_module2default:defaultZ8-3332h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:26 ; elapsed = 00:00:28 . Memory (MB): peak = 1477.941 ; gain = 58.941
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:33 ; elapsed = 00:00:35 . Memory (MB): peak = 1477.941 ; gain = 58.941
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Timing Optimization : Time (s): cpu = 00:00:37 ; elapsed = 00:00:39 . Memory (MB): peak = 1488.289 ; gain = 69.289
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
{Finished Technology Mapping : Time (s): cpu = 00:00:38 ; elapsed = 00:00:40 . Memory (MB): peak = 1497.543 ; gain = 78.543
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
uFinished IO Insertion : Time (s): cpu = 00:00:44 ; elapsed = 00:00:46 . Memory (MB): peak = 1497.543 ; gain = 78.543
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:44 ; elapsed = 00:00:46 . Memory (MB): peak = 1497.543 ; gain = 78.543
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:45 ; elapsed = 00:00:47 . Memory (MB): peak = 1497.543 ; gain = 78.543
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:45 ; elapsed = 00:00:47 . Memory (MB): peak = 1497.543 ; gain = 78.543
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:45 ; elapsed = 00:00:47 . Memory (MB): peak = 1497.543 ; gain = 78.543
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:45 ; elapsed = 00:00:47 . Memory (MB): peak = 1497.543 ; gain = 78.543
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
U
%s
*synth2=
)+------+--------------------+----------+
2default:defaulth p
x
? 
U
%s
*synth2=
)|      |BlackBox name       |Instances |
2default:defaulth p
x
? 
U
%s
*synth2=
)+------+--------------------+----------+
2default:defaulth p
x
? 
U
%s
*synth2=
)|1     |fifo_generator_0    |         4|
2default:defaulth p
x
? 
U
%s
*synth2=
)|2     |fifo_generator_time |         1|
2default:defaulth p
x
? 
U
%s
*synth2=
)|3     |fifo_generator_uart |         2|
2default:defaulth p
x
? 
U
%s
*synth2=
)+------+--------------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
Q
%s*synth29
%+------+--------------------+------+
2default:defaulth px? 
Q
%s*synth29
%|      |Cell                |Count |
2default:defaulth px? 
Q
%s*synth29
%+------+--------------------+------+
2default:defaulth px? 
Q
%s*synth29
%|1     |fifo_generator      |     1|
2default:defaulth px? 
Q
%s*synth29
%|2     |fifo_generator_0    |     3|
2default:defaulth px? 
Q
%s*synth29
%|5     |fifo_generator_time |     1|
2default:defaulth px? 
Q
%s*synth29
%|6     |fifo_generator_uart |     2|
2default:defaulth px? 
Q
%s*synth29
%|8     |BUFG                |     2|
2default:defaulth px? 
Q
%s*synth29
%|9     |CARRY4              |   165|
2default:defaulth px? 
Q
%s*synth29
%|10    |LUT1                |     8|
2default:defaulth px? 
Q
%s*synth29
%|11    |LUT2                |   730|
2default:defaulth px? 
Q
%s*synth29
%|12    |LUT3                |   125|
2default:defaulth px? 
Q
%s*synth29
%|13    |LUT4                |    83|
2default:defaulth px? 
Q
%s*synth29
%|14    |LUT5                |    86|
2default:defaulth px? 
Q
%s*synth29
%|15    |LUT6                |   153|
2default:defaulth px? 
Q
%s*synth29
%|16    |XADC                |     1|
2default:defaulth px? 
Q
%s*synth29
%|17    |FDCE                |   680|
2default:defaulth px? 
Q
%s*synth29
%|18    |FDPE                |     4|
2default:defaulth px? 
Q
%s*synth29
%|19    |FDRE                |   261|
2default:defaulth px? 
Q
%s*synth29
%|20    |IBUF                |    22|
2default:defaulth px? 
Q
%s*synth29
%|21    |OBUF                |     3|
2default:defaulth px? 
Q
%s*synth29
%|22    |OBUFT               |     4|
2default:defaulth px? 
Q
%s*synth29
%+------+--------------------+------+
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:45 ; elapsed = 00:00:47 . Memory (MB): peak = 1497.543 ; gain = 78.543
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 10 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:32 ; elapsed = 00:00:44 . Memory (MB): peak = 1497.543 ; gain = 19.602
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Complete : Time (s): cpu = 00:00:45 ; elapsed = 00:00:47 . Memory (MB): peak = 1497.543 ; gain = 78.543
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0522default:default2
1497.5432default:default2
0.0002default:defaultZ17-268h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
1662default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
g
1Inserted %s IBUFs to IO ports without IO buffers.100*opt2
22default:defaultZ31-140h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
1504.0512default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
e404d3f32default:defaultZ4-1430h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
742default:default2
432default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:522default:default2
00:00:552default:default2
1504.0512default:default2
85.0512default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
lC:/Users/rikir/Documents/FPGA_projects/Sampler_Pmod_AD1/Sampler_Pmod_AD1.runs/synth_1/Sampler_top_module.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
zExecuting : report_utilization -file Sampler_top_module_utilization_synth.rpt -pb Sampler_top_module_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sat Apr  2 19:17:24 20222default:defaultZ17-206h px? 


End Record