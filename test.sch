v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N 360 -210 400 -210 {lab=clk}
N 450 -190 450 -160 {lab=VSS}
N 510 -210 540 -210 {lab=out}
N 450 -260 450 -230 {lab=VDD}
N 150 -490 150 -460 {
lab=VDD}
N 150 -400 150 -360 {
lab=GND}
N 260 -410 260 -370 {
lab=GND}
N 260 -500 260 -470 {
lab=clk}
C {adc_sar_inverter.sym} 60 -30 0 0 {name=x1}
C {devices/lab_wire.sym} 450 -260 0 0 {name=l5 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 370 -210 0 0 {name=l1 sig_type=std_logic lab=clk}
C {devices/lab_wire.sym} 450 -160 0 0 {name=l2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 540 -210 0 0 {name=l3 sig_type=std_logic lab=out}
C {devices/vsource.sym} 150 -430 0 0 {name=V5 value=3.3}
C {devices/gnd.sym} 150 -360 0 0 {name=l4 lab=GND}
C {devices/vdd.sym} 150 -490 0 0 {name=l6 lab=VDD}
C {devices/vsource.sym} 260 -440 0 0 {name=V6 value="0 PULSE(0 1.8 400n 1f 1f 400n 800n)"}
C {devices/gnd.sym} 260 -370 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} 260 -500 0 0 {name=l8 sig_type=std_logic lab=clk}
C {devices/code_shown.sym} 470 -780 0 0 {name=NGSPICE only_toplevel=true
value="
.tran 1n 8u
.save all
"}
C {devices/code_shown.sym} 480 -630 0 0 {name=MODELS only_toplevel=true
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
