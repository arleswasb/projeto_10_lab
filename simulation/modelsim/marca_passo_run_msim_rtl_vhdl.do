transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {G:/UFRN2023.2/CIRCUITOS DIGITAIS/LABORATORIO/PROJETO 10/Marca_Passo/Marca_Passo.vhd}
vcom -93 -work work {G:/UFRN2023.2/CIRCUITOS DIGITAIS/LABORATORIO/PROJETO 10/Marca_Passo/FFJK.vhd}
vcom -93 -work work {G:/UFRN2023.2/CIRCUITOS DIGITAIS/LABORATORIO/PROJETO 10/Marca_Passo/Contador_20Bits.vhd}

