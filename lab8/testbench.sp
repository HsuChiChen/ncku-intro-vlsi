*testbench*
.INC'circuit.spi'
.GLOBAL gnd
+ vdd

.project
.lib'./VLSI/cic018.l'TT
.unprotect

.op
.options post
.tran 0.05n 160n
.temp 25

******** Testing Voltage ********
	Xinv_test VIN out_1 VDD GND inverter
	XNAD_test A B out_2 VDD GND NAND
	XNOR_test C D out_3 VDD GND NOR
	v1 VDD 0v DC 1.8v
	v2 GND 0v DC 0v
	v3 VIN 0v PULSE(0 1.8 0 0.1n 0.1n 20n 40n)

	v4 A   0v PULSE(0 1.8 0 0.1n 0.1n 20n 40n)
	v5 B   0v PULSE(0 1.8 0 0.1n 0.1n 40n 80n)

	v6 C   0v PULSE(0 1.8 0 0.1n 0.1n 20n 40n)
	v7 D   0v PULSE(0 1.8 0 0.1n 0.1n 40n 80n)
.end
