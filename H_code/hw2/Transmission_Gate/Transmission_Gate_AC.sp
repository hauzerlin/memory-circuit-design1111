**Transmission Gate AC**

.inc "C:\synopsys\65nm_bulk.pm"

Xenable enable enable_bar vdd gnd inv

MP1 vout1 enable_bar vin_x vdd   pmos W=2.5u L=0.065u
MN1 vin_x enable vout1 gnd   nmos W= 1u  L=0.065u

vdd vdd gnd DC 1V
venable enable gnd pulse( 0 1 10n 0.5n 0.5n 10n  20n)
vin_x   vin_x gnd pulse ( 0 1  5n 0.5n 0.5n    10n   20n)

.subckt inv in out vdd GND
	Mp1 out in vdd vdd pmos w=2.5u l=0.065u
	Mn1 out in GND GND nmos w=  1u l=0.065u
.ends

.tran 0.1ns 50ns
.option post

.probe v1(vout1)
.end

**end**
