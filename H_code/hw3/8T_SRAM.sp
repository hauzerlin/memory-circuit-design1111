**SRAM 8T DC**

.inc "C:\synopsys\65nm_bulk.pm"

.global gnd vdd

MP1 v2 v1 vdd vdd pmos w=2.5u l=0.065u
MN2 v2 v1 gnd gnd nmos w=  1u l=0.065u
MP3 v1 v2 vdd vdd pmos w=2.5u l=0.065u
MN4 v1 v2 gnd gnd nmos w=  1u l=0.065u

MN5 vdd vdd v2 gnd nmos w=  1u l=0.065u
MN6 vdd vdd v1 gnd nmos w=  1u l=0.065u 


vdd vdd gnd DC 1V
$v1 v1 gnd DC 1v
v2 v2 gnd DC 1v


.OP
$.dc v1 0v 1v 0.01v
.dc v2 0v 1v 0.01v
.option post

.probe v1(v1)
.probe v2(v2)
.print v(v1)
.print v(v2)
.end

**end**
