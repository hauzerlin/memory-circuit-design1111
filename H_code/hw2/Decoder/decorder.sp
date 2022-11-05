**4 to 1 mux ac**

.inc "C:\synopsys\65nm_bulk.pm"

$ circuit describe

Xain	va net1   en_s0  en_s0b vdd gnd tran_gate
Xbin 	vb net1  en_s0b   en_s0 vdd gnd tran_gate
Xcin	vc net2   en_s0  en_s0b vdd gnd tran_gate
Xdin	vd net2  en_s0b   en_s0 vdd gnd tran_gate

Xs1_1	net1 vout1   en_s1  en_s1b vdd gnd tran_gate
Xs1_2	net2 vout1  en_s1b   en_s1 vdd gnd tran_gate

Xinv_s0  en_s0 en_s0b vdd gnd inv
Xinv_s1  en_s1 en_s1b vdd gnd inv

$ voltage soure and other setting
vdd vdd gnd DC 1V
ven_s0 en_s0 gnd pulse( 0 1    2n 0.5n 0.5n    1n 4n)
ven_s1 en_s1 gnd pulse( 0 1 3.55n 0.5n 0.5n 3.45n 8n)
va	  va gnd dc 0.25v
vb	  vb gnd dc 0.5v
vc	  vc gnd dc 0.75v
vd	  vd gnd dc 1v

$ inverter module 
.subckt inv in out vdd GND
	Mp1 out in vdd vdd pmos w=2.5u l=0.065u
	Mn1 out in GND GND nmos w=  1u l=0.065u
.ends

$ transmission gate module
.subckt tran_gate in out en_p en_n vdd gnd
	Mp out en_p  in  vdd pmos W=2.5u L=0.065u
	Mn in  en_n out  gnd nmos W=  1u L=0.065u
	
	Xinv en en_b vdd gnd inv
.ends

.tran 0.1ns 15ns
.option post

.probe v1(vout1)
.end

**end**
