v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N 540 -260 590 -260 {lab=inn}
N 550 -230 590 -230 {lab=inp}
N 540 -230 550 -230 {lab=inp}
N -400 -250 -400 -210 {
lab=GND}
N -400 -340 -400 -310 {
lab=inp}
N -60 -260 -60 -220 {
lab=GND}
N -60 -350 -60 -320 {
lab=inn}
N 730 -250 750 -250 {lab=out}
N 180 -160 180 -120 {
lab=GND}
N 180 -250 180 -220 {
lab=VDD}
C {devices/code_shown.sym} 20 -660 0 0 {name=NGSPICE1 only_toplevel=true
value="
.tran 1n 20n
.save all
"}
C {devices/code_shown.sym} 30 -510 0 0 {name=MODELS1 only_toplevel=true
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
C {devices/vsource.sym} -400 -280 0 0 {name=V7 value="0 PULSE(0 1.7 1n 1n 200n 800n)"}
C {devices/gnd.sym} -400 -210 0 0 {name=l8 lab=GND}
C {devices/lab_wire.sym} -400 -340 0 0 {name=l9 sig_type=std_logic lab=inp}
C {devices/vsource.sym} -60 -290 0 0 {name=V8 value="0 PULSE(1.7 0 0 1n 1n 200n 800n)"}
C {devices/gnd.sym} -60 -220 0 0 {name=l10 lab=GND}
C {devices/lab_wire.sym} -60 -350 0 0 {name=l11 sig_type=std_logic lab=inn}
C {devices/lab_wire.sym} 540 -260 0 0 {name=l1 sig_type=std_logic lab=inn}
C {devices/lab_wire.sym} 540 -230 0 0 {name=l2 sig_type=std_logic lab=inp}
C {devices/lab_wire.sym} 750 -250 0 0 {name=l3 sig_type=std_logic lab=out}
C {AND2.sym} 660 -40 0 0 {name=x1}
C {vdd.sym} 180 -250 0 0 {name=l5 lab=VDD}
C {devices/vsource.sym} 180 -190 0 0 {name=V1 value=3.3}
C {devices/gnd.sym} 180 -120 0 0 {name=l4 lab=GND}
C {vdd.sym} 650 -310 0 0 {name=l6 lab=VDD}
