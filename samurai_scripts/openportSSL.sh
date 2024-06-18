#!/bin/bash

PASS1=$(cat /etc/samurai_pass/samurai5)
verifica_pass1(){
read sending1
	if [[ $PASS1  == $sending1 ]]; then
		echo "\e[31m ¡Correcto! \e[0m"
		sleep 1
		echo "La contraseña correcta es: $(cat /etc/samurai_pass/samurai6)"
        else
            echo -e "\e[31m Incorrecto, prueba otra vez.\e[0m"
        fi
	sleep 1
}

FIFO_PATH="/etc/samurai_scripts/fifoSSL"
if [[ ! -p $FIFO_PATH ]]; then
	mkfifo $FIFO_PATH
fi

openssl s_server -quiet -accept 30002 -cert /etc/samurai_scripts/serverSSL.crt -key /etc/samurai_scripts/serverSSL.key \
< $FIFO_PATH | while true; do
	echo -e "\e[32m Bienvenido samurai. introduce la contraseña del nivel actual \e[0m"
	verifica_pass1 
done > $FIFO_PATH
