#!/bin/bash

function executando {
	./config.sh

} 

function cansei {
	a=$(ls -a ./backup)
	echo "Os arquivos em exibição são: $a"
} 

echo "Digite a função que você deseja executar: 
Opção 1 -> executando
Opção 2 -> cansei
Opção 3 -> sair" 

read concluindo

case $concluindo in 
	"1") 
		executando
		;;

	"2")
		cansei
		;;

	"3") 
		return 0
		;;
esac


