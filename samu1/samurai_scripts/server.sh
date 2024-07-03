#!/bin/bash

PASS=$(cat /etc/samurai_pass/samurai4)

# Función para manejar la conexión entrante
verifica_pass() {
    # Leer datos enviados por el cliente
    read sending

    # Verificar si la cadena recibida está en la lista de cadenas esperadas
    if [[ $PASS == $sending ]]; then
        echo "¡Correcto!"
	echo "La contraseña es: $(cat /etc/samurai_pass/samurai5)"

    else
        echo "Incorrecto. Prueba otra vez"
    fi
}

# Configurar el servidor para escuchar en el puerto 30000
mkfifo /etc/samurai_scripts/fifo
nc -lp 30000 -k < /etc/samurai_scripts/fifo | while true; do
    echo "Bienvenido samurai. Introduce la password"
    verifica_pass
done > /etc/samurai_scripts/fifo
