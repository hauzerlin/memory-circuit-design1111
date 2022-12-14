**2-to1 XOR DC**

.inc "C:\synopsys\65nm_bulk.pm"

Xinv_x vin_x vin_xb vdd gnd inv
Xinv_y vin_y vin_yb vdd gnd inv

MP_x1  net1 vin_xb  vdd  vdd pmos W=2.5u L=0.065u
MP_y1  net1 vin_yb  vdd  vdd pmos W=2.5u L=0.065u
MP_x2 vout1  vin_y net1 net1 pmos W=2.5u L=0.065u
MP_y2 vout1  vin_x net1 net1 pmos W=2.5u L=0.065u

MN_x1 vout1  vin_x net2 net2 nmos W= 1u  L=0.065u
MN_y1  net2  vin_y  gnd  gnd nmos W= 1u  L=0.065u
MN_x2 vout1 vin_xb net3 net3 nmos W= 1u  L=0.065u
MN_y2  net3 vin_yb  gnd  gnd nmos W= 1u  L=0.065u

vdd vdd gnd DC 1V
vin_x vin_x gnd pulse(0 1 3.5n 0.5n 0.5n 3.5n 8n)
vin_y vin_y gnd pulse(0 1   2n 0.5n 0.5n   1n 4n)

.subckt inv in out vdd GND
	Mp1 out in vdd vdd pmos w=2.5u l=0.065u
	Mn1 out in GND GND nmos w=1u l=0.065u
.ends

.OP
.dc vin_x 0V 1V 0.01V
.dc vin_y 0V 1V 0.01V
.option post

.probe v1(vout1)
.end

**end**
