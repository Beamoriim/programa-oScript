#!/bin/bash

function arqConfig {
	#ip
	echo "Digite o IP da máquina: "
	read ip
	echo "IP de exibição: $ip"

	#pasta
	echo "Digite a pasta que deve receber o backup: "
	read pasta
	echo "Pasta de exibição: $pasta"

	#usuario
	echo "Digite o usuário: "
	read usuario
	echo "Usuário de exibição: $usuario"

	#senha
	echo "Digite a senha: "
	read -s senha

	#maquina
	

	echo "Arquivos de configurações criados com sucesso! "
	echo "$ip $pasta $usuario $senha backup$pastaBackup"
 	pastaBackup=$ip$user
	mkdir $pastaBackup
	p=$(pwd)
	
	
	scp -r $usuario@$ip:$pasta $p/$pastaBackup

	data=$(date "+%d-%m-%y")

	finish=$pastaBackup-$data

	zip -r $finish.zip $pastaBackup
	mv $finish.zip backup

	rm -rf $pastaBackup

}

function instalar {
	
	echo "Removendo as pastas duplicadas"
	rm -rf backup
	rm -f configuracao.txt
	echo "Instalação dos arquivos: "
	mkdir backup
	touch configuracao.txt
	sleep 5
	echo "Instalação concluída com sucesso! "

}



function sair {

	return 0

}

echo "Digite a função que vocẽ deseja executar: 
Opção 1 -> executar
Opção 2 -> instalar
Opção 3 -> sair"

read go

case $go in 
	"1")
		arqConfig
		;;

	"2") 
		instalar
		;;

	"3") 
		sair
		;;

esac


