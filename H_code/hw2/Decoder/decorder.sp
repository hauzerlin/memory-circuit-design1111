**4 to 1 mux ac**

.inc "C:\synopsys\65nm_bulk.pm"

$ circuit describe

Xinv0 en_s0 en_s0b vdd gnd inv
Xinv1 en_s1 en_s1b vdd gnd inv
Xinv2 en_s2 en_s2b vdd gnd inv

Xand0 en_s0b en_s1b en_s2b vy0 vdd gnd and3
Xand1 en_s0  en_s1b en_s2b vy1 vdd gnd and3
Xand2 en_s0b en_s1  en_s2b vy2 vdd gnd and3
Xand3 en_s0  en_s1  en_s2b vy3 vdd gnd and3
Xand4 en_s0b en_s1b en_s2  vy4 vdd gnd and3
Xand5 en_s0  en_s1b en_s2  vy5 vdd gnd and3
Xand6 en_s0b en_s1  en_s2  vy6 vdd gnd and3
Xand7 en_s0  en_s1  en_s2  vy7 vdd gnd and3


$ voltage soure and other setting
vdd vdd gnd DC 1V
ven_s0 en_s0 gnd pulse( 0 1    2n 0.5n 0.5n     1n     4n)
ven_s1 en_s1 gnd pulse( 0 1  3.5n 0.5n 0.5n   3.5n     8n)
ven_s2 en_s2 gnd pulse( 0 1  7.5n 0.5n 0.5n    30n    30n)
$va	  va gnd dc 0v
$vb	  vb gnd dc 0.5v
$vc	  vc gnd dc 1v

$ 3 to 1 AND gate
.subckt and3 ain bin cin out vdd gnd
	Mpa net1 ain  vdd vdd pmos W=2.5u L=0.065u
	Mpb net2 bin net1 vdd pmos W=2.5u L=0.065u
	Mpc out  cin net2 vdd pmos W=2.5u L=0.065u
	
	Mna out ain gnd gnd nmos W=1u L=0.065u
	Mnb out bin gnd gnd nmos W=1u L=0.065u
	Mnc out cin gnd gnd nmos W=1u L=0.065u
.ends

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

.tran 0.1ns 16ns
.option post

.probe v0(vy0)
.probe v1(vy1)
.probe v2(vy2)
.probe v3(vy3)
.probe v4(vy4)
.probe v5(vy5)
.probe v6(vy6)
.probe v7(vy7)
.end

**end**
