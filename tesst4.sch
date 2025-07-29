v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N 540 -630 540 -600 {lab=VDD}
N 540 -320 540 -290 {lab=GND}
N 690 -420 720 -420 {lab=out}
N -130 -700 -130 -680 {lab=GND}
N -130 -840 -130 -820 {lab=VDD}
N -240 -760 -190 -760 {lab=#net1}
N -70 -760 10 -760 {lab=#net2}
N 10 -760 510 -760 {lab=#net2}
N 510 -760 510 -600 {lab=#net2}
N 180 -700 180 -670 {lab=GND}
N 80 -700 80 -670 {lab=GND}
N -240 -700 -240 -680 {lab=GND}
N -370 -890 -370 -870 {
lab=VDD}
N -370 -810 -370 -790 {
lab=GND}
N 20 -410 390 -410 {lab=#net3}
N -380 -420 -310 -420 {lab=VDD}
N -310 -430 -310 -420 {lab=VDD}
N -310 -430 -280 -430 {lab=VDD}
N -390 -370 -280 -370 {lab=GND}
N -390 -370 -390 -320 {lab=GND}
N -390 -320 -390 -300 {lab=GND}
N -730 -700 -730 -610 {lab=#net4}
N 220 -530 390 -530 {lab=GND}
N 220 -530 220 -510 {lab=GND}
N 280 -470 390 -470 {lab=GND}
N 280 -470 280 -460 {lab=GND}
N 330 -370 390 -370 {lab=VDD}
N 330 -370 330 -330 {lab=VDD}
N 360 -350 390 -350 {lab=VDD}
N 360 -350 360 -330 {lab=VDD}
N 300 -320 330 -320 {lab=VDD}
N 330 -330 330 -320 {lab=VDD}
N 330 -320 360 -320 {lab=VDD}
N 360 -330 360 -320 {lab=VDD}
N 300 -510 390 -510 {lab=GND}
N 300 -530 300 -510 {lab=GND}
N 300 -490 390 -490 {lab=GND}
N 300 -510 300 -490 {lab=GND}
N 330 -430 390 -430 {lab=VDD}
N 330 -430 330 -370 {lab=VDD}
N 350 -390 390 -390 {lab=GND}
N 350 -470 350 -390 {lab=GND}
N 350 -450 390 -450 {lab=GND}
C {adc_sar_matrix10bit.sym} 160 -80 0 0 {name=x1}
C {devices/code_shown.sym} 250 -1200 0 0 {name=NGSPICE1 only_toplevel=true
value="
.tran 0.1n 2u 0.05n
.save all
"}
C {devices/code_shown.sym} 260 -1050 0 0 {name=MODELS1 only_toplevel=true
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
C {gnd.sym} 540 -290 0 0 {name=l1 lab=GND}
C {vdd.sym} 540 -630 0 0 {name=l2 lab=VDD}
C {adc_sar_vcm_generator.sym} -300 -550 0 0 {name=x2}
C {vdd.sym} -130 -840 0 0 {name=l3 lab=VDD}
C {gnd.sym} -130 -680 0 0 {name=l4 lab=GND}
C {devices/capa.sym} 80 -730 0 0 {name=C1
m=1
value=6p
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 180 -730 0 0 {name=R1
value=100Meg
footprint=1206
device=resistor
m=1}
C {gnd.sym} 180 -670 0 0 {name=l5 lab=GND}
C {gnd.sym} 80 -670 0 0 {name=l6 lab=GND}
C {vsource.sym} -240 -730 0 0 {name=V1 value="0 pulse(0 3.3 15u 10p 10p 15u 30u)" savecurrent=false}
C {gnd.sym} -240 -680 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} -370 -840 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} -370 -790 0 0 {name=l8 lab=GND}
C {devices/vdd.sym} -370 -890 0 0 {name=l9 lab=VDD}
C {adc_sar_sample_and_hole.sym} -130 -410 0 0 {name=x3}
C {ipin.sym} -280 -450 0 0 {name=p1 lab=Vinp}
C {vdd.sym} -380 -420 0 0 {name=l10 lab=VDD}
C {lab_pin.sym} -280 -410 0 0 {name=p2 sig_type=std_logic lab=CLK}
C {lab_pin.sym} -280 -390 0 0 {name=p3 sig_type=std_logic lab=nCLK}
C {gnd.sym} -390 -300 0 0 {name=l11 lab=GND}
C {vsource.sym} -730 -730 0 0 {name=V4 value="SIN(0.9 0.9 10Meg) DC 0" savecurrent=false}
C {ipin.sym} -730 -760 0 0 {name=p8 lab=Vinp}
C {vsource.sym} -730 -580 0 0 {name=V5 value=0 savecurrent=false}
C {gnd.sym} -730 -550 0 0 {name=l12 lab=GND}
C {vsource.sym} -720 -460 0 0 {name=V3 value="PULSE(0 3.3 0 0.5n 0.5n 40n 100n)
" savecurrent=false}
C {lab_pin.sym} -720 -490 0 0 {name=p6 sig_type=std_logic lab=CLK}
C {gnd.sym} -720 -430 0 0 {name=l13 lab=GND}
C {vsource.sym} -720 -320 0 0 {name=V6 value="PULSE(3.3 0 0 0.5n 0.5n 40n 100n)
" savecurrent=false}
C {lab_pin.sym} -720 -350 0 0 {name=p7 sig_type=std_logic lab=nCLK}
C {gnd.sym} -720 -290 0 0 {name=l14 lab=GND}
C {lab_pin.sym} 390 -570 0 0 {name=p4 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 390 -550 0 0 {name=p5 sig_type=std_logic lab=nCLK}
C {gnd.sym} 220 -510 0 0 {name=l15 lab=GND}
C {vdd.sym} 300 -320 0 0 {name=l17 lab=VDD}
C {gnd.sym} 280 -460 0 0 {name=l19 lab=GND}
C {lab_pin.sym} 720 -420 0 1 {name=p9 sig_type=std_logic lab=out}
