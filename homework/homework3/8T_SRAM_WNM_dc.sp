**SRAM 8T DC 1v**

.inc "C:\synopsys\65nm_bulk.pm"

.global gnd vdd

$MP1 v2 v1 vdd vdd pmos w=2.5u l=0.065u
$MN2 v2 v1 gnd gnd nmos w=  1u l=0.065u


MP3 v1 v2 vdd vdd pmos w=2.5u l=0.065u
MN4 v1 v2 gnd gnd nmos w=  1u l=0.065u

MN5 vdd vdd v2 gnd nmos w=1u l=0.065u
MN6 v1 vdd gnd gnd nmos w=1u l=0.065u 

MN9 vout v2 gnd gnd nmos w=1u l=0.065u
MN8 vout gnd gnd gnd nmos w=1u l=0.065u

$vdd vdd gnd DC 1V
$vdd vdd gnd DC 0.8V
$vdd vdd gnd DC 0.6V
vdd vdd gnd DC 0.4V
$v1 v1 gnd DC 1v
$v2 v2 gnd DC 1v
$v1 v1 gnd DC 0.8v
$v2 v2 gnd DC 0.8v
$v1 v1 gnd DC 0.6v
$v2 v2 gnd DC 0.6v
$v1 v1 gnd DC 0.4v
v2 v2 gnd DC 0.4v

.OP
$.dc v1 0v 1v 0.01v
$.dc v2 0v 1v 0.01v
$.dc v1 0v 0.8v 0.01v
$.dc v2 0v 0.8v 0.01v
$.dc v1 0v 0.6v 0.01v
$.dc v2 0v 0.6v 0.01v
$.dc v1 0v 0.4v 0.01v
.dc v2 0v 0.4v 0.01v
.option post

.probe v1(v1)
.probe v2(v2)
.print v(v1)
.print v(v2)
.end

**end**
