#!/bin/bash

# Nombre del Named Pipe
pipe=/tmp/chat_alex

# Crear el Named Pipe si no existe
[ -p $pipe ] || mkfifo $pipe

# Bucle de recepción y envío de mensajes
while true; do
    if read line < $pipe; then
        # Mostrar mensaje del cliente
        echo "Cliente: $line"
        
        # Leer mensaje del usuario
        read -p "Server: " res
       

        # Respuesta del servidor
        response="Respuesta del servidor: $res"
        echo "$response" > $pipe
    fi
done
