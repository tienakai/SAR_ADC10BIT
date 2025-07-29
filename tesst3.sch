v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N 270 -440 270 -420 {lab=in}
N 270 -360 270 -340 {lab=GND}
N 370 -370 370 -350 {lab=GND}
N 370 -460 370 -430 {lab=VDD}
N 640 -460 650 -460 {lab=VDD}
N 640 -460 640 -440 {lab=VDD}
N 640 -340 640 -320 {lab=GND}
N 590 -390 590 -380 {lab=in}
N 570 -380 590 -380 {lab=in}
N 1220 -390 1240 -390 {lab=out}
N 690 -390 730 -390 {lab=#net1}
N 790 -390 830 -390 {lab=#net2}
N 830 -330 830 -310 {lab=GND}
N 830 -390 870 -390 {lab=#net2}
N 920 -480 920 -440 {lab=VDD}
N 920 -340 920 -310 {lab=GND}
N 1070 -390 1110 -390 {lab=#net3}
N 1160 -440 1160 -410 {lab=VDD}
N 1160 -370 1160 -320 {lab=GND}
N 970 -390 1070 -390 {lab=#net3}
C {devices/code_shown.sym} 100 -980 0 0 {name=NGSPICE1 only_toplevel=true
value="
.tran 0.1n 100n
.save all
"}
C {devices/code_shown.sym} 110 -830 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.include /home/tien/conda-gf180mcu-env/envs/gf180mcu-env/share/pdk/gf180mcuC/libs.tech/ngspice/design.ngspice
.lib /home/tien/conda-gf180mcu-env/envs/gf180mcu-env/share/pdk/gf180mcuC/libs.tech/ngspice/smbb000149.ngspice typical
.lib /home/tien/conda-gf180mcu-env/envs/gf180mcu-env/share/pdk/gf180mcuC/libs.tech/ngspice/sm141064.ngspice cap_mim
.lib /home/tien/conda-gf180mcu-env/envs/gf180mcu-env/share/pdk/gf180mcuC/libs.tech/ngspice/sm141064.ngspice mimcap_typical
.lib /home/tien/conda-gf180mcu-env/envs/gf180mcu-env/share/pdk/gf180mcuC/libs.tech/ngspice/sm141064.ngspice res_typical
.lib /home/tien/conda-gf180mcu-env/envs/gf180mcu-env/share/pdk/gf180mcuC/libs.tech/ngspice/sm141064.ngspice moscap_typical
.lib /home/tien/conda-gf180mcu-env/envs/gf180mcu-env/share/pdk/gf180mcuC/libs.tech/ngspice/sm141064.ngspice diode_typical
.lib /home/tien/conda-gf180mcu-env/envs/gf180mcu-env/share/pdk/gf180mcuC/libs.tech/ngspice/sm141064.ngspice typical
"}
C {lab_wire.sym} 570 -380 0 0 {name=p1 sig_type=std_logic lab=in}
C {vdd.sym} 650 -460 0 0 {name=l1 lab=VDD}
C {gnd.sym} 640 -320 0 0 {name=l2 lab=GND}
C {vsource.sym} 370 -400 0 0 {name=V1 value=3.3 savecurrent=false}
C {vdd.sym} 370 -460 0 0 {name=l3 lab=VDD}
C {gnd.sym} 370 -350 0 0 {name=l4 lab=GND}
C {vsource.sym} 270 -390 0 0 {name=V2 value="pulse(0 1.8 10p 10p 10p 10n 20n)" savecurrent=false}
C {lab_wire.sym} 270 -440 0 0 {name=p3 sig_type=std_logic lab=in}
C {gnd.sym} 270 -340 0 0 {name=l5 lab=GND}
C {lab_wire.sym} 1240 -390 0 1 {name=p2 sig_type=std_logic lab=out}
C {adc_sar_comp_buffer.sym} 410 -260 0 0 {name=x1}
C {symbols/cap_mim_1f0fF.sym} 830 -360 0 0 {name=C1
W=10e-6
L=50e-6
model=cap_mim_1f0fF
spiceprefix=X
m=1}
C {symbols/rm1.sym} 760 -390 1 0 {name=R1
W=0.6e-6
L=17.4e-6
model=rm1
spiceprefix=X
m=1}
C {gnd.sym} 830 -310 0 0 {name=l6 lab=GND}
C {adc_sar_comp_buffer.sym} 690 -260 0 0 {name=x2}
C {vdd.sym} 920 -480 0 0 {name=l7 lab=VDD}
C {gnd.sym} 920 -310 0 0 {name=l8 lab=GND}
C {adc_sar_inverter.sym} 770 -210 0 0 {name=x3}
C {vdd.sym} 1160 -440 0 0 {name=l10 lab=VDD}
C {gnd.sym} 1160 -320 0 0 {name=l11 lab=GND}
