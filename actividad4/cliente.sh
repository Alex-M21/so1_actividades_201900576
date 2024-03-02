#!/bin/bash

# Nombre del Named Pipe
pipe=/tmp/chat_alex

# Comprobar si el servidor está corriendo
if [ ! -p $pipe ]; then
    echo "Error: El servidor no está activo."
    exit 1
fi

# Bucle de envío y recepción de mensajes
while true; do
    # Leer mensaje del usuario
    read -p "Cliente: " message
    
    # Enviar mensaje al servidor
    echo "$message" > $pipe
    
    # Leer respuesta del servidor
    if read response < $pipe; then
        echo "Servidor: $response"
    fi
done
