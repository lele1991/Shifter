# ============================================================================
# Name        : tb.do
# Author      : Letícia de Oliveira Nunes
# Version     : 0.1
# Copyright   : Renan, Departamento de Eletrônica, Florianópolis, IFSC
# Description : Shifter
# ============================================================================


#Cria biblioteca do projeto
vlib work

#compila projeto: todos os aquivos. Ordem Ã© importante
vcom shifter.vhd 
vcom testbench.vhd

#Simula (work Ã© o diretorio, testbench Ã© o nome da entity)
#toplevel
vsim -t ns work.testbench 

#Mostra forma de onda
view wave

#Adiciona ondas especÃ­ficas
# -radix: binary, hex, dec
# -label: nome da forma de onda
add wave -radix dec  /inputT
add wave -radix dec  /shift_cntrlT
add wave -radix dec  /shift_outT

#Como mostrar sinais internos do processo


#Simula atÃ© um 100ns
run 100ns

wave zoomfull
#write wave wave.ps