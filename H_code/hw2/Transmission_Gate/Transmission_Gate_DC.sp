**2-to1 XOR DC**

.inc "C:\synopsys\65nm_bulk.pm"

Xenable enable enable_bar vdd gnd inv

MP1 vout1 enable_bar vin_x vin_x pmos W=2.5u L=0.065u
MN1 vin_x     enable vout1 vout1 nmos W=  1u L=0.065u

vdd vdd gnd DC 1V
venable enable gnd DC 1V
vin_x vin_x gnd DC 1V   

.subckt inv in out vdd GND
	Mp1 out in vdd vdd pmos w=2.5u l=0.065u
	Mn1 out in GND GND nmos w=  1u l=0.065u
.ends

.OP
.dc vin_x 0V 1V 0.01V
.option post

.probe v1(vout1)
.end

**end**
