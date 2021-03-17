# ============================================================================
# Name        : tb.do
# Author      : Let�cia de Oliveira Nunes
# Version     : 0.1
# Copyright   : Renan, Departamento de Eletr�nica, Florian�polis, IFSC
# Description : Shifter
# ============================================================================


#Cria biblioteca do projeto
vlib work

#compila projeto: todos os aquivos. Ordem é importante
vcom shifter.vhd 
vcom testbench.vhd

#Simula (work é o diretorio, testbench é o nome da entity)
#toplevel
vsim -t ns work.testbench 

#Mostra forma de onda
view wave

#Adiciona ondas específicas
# -radix: binary, hex, dec
# -label: nome da forma de onda
add wave -radix dec  /inputT
add wave -radix dec  /shift_cntrlT
add wave -radix dec  /shift_outT

#Como mostrar sinais internos do processo


#Simula até um 100ns
run 100ns

wave zoomfull
#write wave wave.ps