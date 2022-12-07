**6TSRAM**

.inc "C:\synopsys\65nm_bulk.pm"

MP1 Qb  Q vdd vdd  pmos  W=2u  L=0.065u
MN2 Qb  Q gnd gnd  nmos  W=10u  L=0.065u
MP3  Q Qb vdd vdd  pmos  W=2u  L=0.065u
MN4  Q Qb gnd gnd  nmos  W=10u  L=0.065u

MN5 Qb WL BLB gnd  nmos  W=6u  L=0.065u
MN6  Q WL  BL gnd  nmos  W=6u  L=0.065u


Vvdd   vdd gnd dc 0.8
$VvQ      Q gnd dc 0 //read
$VvQb     Qb gnd dc 0.8 //read


VWL     WL  gnd pulse(0 0.8 2n 0.5n  0.5n  2n 5n)
VBL    BL  gnd pulse(0 0.8 2n 0.5n  0.5n  2n 5n)
VBLB  BLB  gnd pulse(0.8 0 2n 0.5n  0.5n  2n 5n)


.ic v(BL)=0.8v
.ic v(BLB)=0.8v



*.dc vQb 0v 1v 0.01v //noise margin

.tran 0.1ns 6ns
.option post
.temp 25
.probe v(BLB)


.end