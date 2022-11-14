**2-to-1 NAND AC**

.inc "C:\synopsys\65nm_bulk.pm"

MP_x vout1 vin_x vdd vdd pmos W=2.5u L=0.065u
MP_y vout1 vin_y vdd vdd pmos W=2.5u L=0.065u

MN_x vout1 vin_x net1 net1 nmos W=1u L=0.065u
MN_y net1  vin_y gnd  gnd  nmos W=1u L=0.065u

vdd vdd gnd DC 1V
vin_x vin_x gnd pulse(0 1  21n  0.5n 0.5n 20n 40n) 
vin_y vin_y gnd pulse(0 1  10n  0.5n 0.5n 10n 20n) 
.tran 0.1ns 50ns

$.OP
$.dc vin_x 0V 1V 0.01V
$.dc vin_y 0V 1V 0.01V
.option post 

.probe v1(vout1)
.end

**end**
