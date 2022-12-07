**SRAM 6T AC**

.inc "C:\synopsys\65nm_bulk.pm"

.global gnd vdd

MP1 QB  Q vdd vdd pmos w= 2u l=0.065u
MN2 QB  Q gnd gnd nmos w=10u l=0.065u
MP3  Q QB vdd vdd pmos w= 2u l=0.065u
MN4  Q QB gnd gnd nmos w=10u l=0.065u

MN5 QB WL BLB gnd nmos w=6u l=0.065u
MN6  Q WL  BL gnd nmos w=6u l=0.065u 


vdd vdd gnd DC 0.8V
Vwl WL gnd pulse(0 0.8 2n 0.1n  0.1n  2n 4n)

$ 給予初始值
.ic v(BL)=0.8v
.ic v(BLB)=0.8v
$.ic v(q) = 0.8v
$.ic v(qb) = 0v

$ read section
VQ  Q gnd dc 0 //read
VQb Qb gnd dc 0.8 //read

$ write section
$Vbl BL gnd pwl 4ns 0v 5.99ns 0v 6ns 0.8v 8ns 0.8v 8.01ns 0v 9.99ns 0v 10ns 0.8v
$Vblb blb gnd pwl 4ns 0.8v 5.99ns 0.8v 6ns 0v 8ns 0v 8.01ns 0.8v 9.99ns 0.8v 10ns 0v


$ other section
$Vwl WL gnd pwl 0ns 0v 1.99ns 0v 2ns 0.8v 8ns 0.8v 8.01ns 0v 

**"PAR" is use to declare parameter or expression
.probe bl_POWER = PAR('abs(V(bl)*I(vdd))')
.probe blb_POWER = PAR('abs(V(blb)*I(vdd))')

.tran 0.1ns 8ns
.option post
.temp 25
.probe v(BLB)
$.measure tran BL_Power avg power


.end

**end**
