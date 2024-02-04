#!/bin/bash

# Leer la variable GITHUB_USER
GITHUB_USER=${GITHUB_USER:-"joseggald"}

# Consultar la API de GitHub
USER_DATA=$(curl -s "https://api.github.com/users/${GITHUB_USER}")

# Extraer los datos necesarios del JSON
USER_NAME=$(echo "${USER_DATA}" | jq -r '.login')
USER_ID=$(echo "${USER_DATA}" | jq -r '.id')
CREATED_AT=$(echo "${USER_DATA}" | jq -r '.created_at')

# Imprimir el mensaje
echo "Hola ${USER_NAME}. User ID: ${USER_ID}. Cuenta fue creada el: ${CREATED_AT}."

# Crear el directorio log si no existe
LOG_DIR="/tmp/actividad2/$(date '+%Y-%m-%d')"
mkdir -p "${LOG_DIR}"

# Escribir el mensaje en el archivo de log
echo "Hola ${USER_NAME}. User ID: ${USER_ID}. Cuenta fue creada el: ${CREATED_AT}." >> "${LOG_DIR}/saludos.log"
