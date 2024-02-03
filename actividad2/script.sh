#!/bin/bash
#para parsear el json debemos de tener instalado jq
#para instalar jq sudo apt-get install jq
# Leer la variable GITHUB_USER
read -p "Ingresa tu nombre de usuario de GitHub: " GITHUB_USER

# Consultar la API de GitHub
API_URL="https://api.github.com/users/$GITHUB_USER"
JSON_RESPONSE=$(curl -s $API_URL)

# Extraer los datos del JSON
USER_ID=$(echo $JSON_RESPONSE | jq -r '.id')
CREATED_AT=$(echo $JSON_RESPONSE | jq -r '.created_at')

# Imprimir el mensaje
echo "Hola $GITHUB_USER. User ID: $USER_ID. Cuenta fue creada el: $CREATED_AT."

# Crear un directorio con la fecha actual
LOG_DIR="/tmp/$(date +'%Y%m%d')"
mkdir -p $LOG_DIR

# Crear el archivo de log
LOG_FILE="$LOG_DIR/saludos.log"
echo "Hola $GITHUB_USER. User ID: $USER_ID. Cuenta fue creada el: $CREATED_AT." > $LOG_FILE

# Imprimir mensaje de confirmación
echo "Los datos se han guardado en $LOG_FILE."

# Configurar el cronjob para que se ejecute cada 5 minutos
CRON_CMD="*/5 * * * * $(pwd)/script.sh"
(crontab -l 2>/dev/null; echo "$CRON_CMD") | crontab -

echo "Cronjob configurado para ejecutarse cada 5 minutos."
