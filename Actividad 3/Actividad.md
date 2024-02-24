# Saludo Fecha Service - Actividad 3 - José Galdámez González

Este servicio imprime un saludo junto con la fecha actual cada segundo.

## Crear el Unit de Systemd

Crea un archivo de unit de systemd llamado saludo_fecha.service en /etc/systemd/system/:

   sudo nano /etc/systemd/system/saludo_fecha.service

Agrega la siguiente configuración al archivo:
   
   [Unit]
   Description=Saludo y Fecha Service

   [Service]
   ExecStart=/usr/local/bin/saludo_fecha.sh
   Restart=always

   [Install]
   WantedBy=multi-user.target

Recarga los daemons de systemd para que reconozca tu nuevo servicio:
   
   sudo systemctl daemon-reload

Habilita el servicio para que se inicie con el sistema:
   
   sudo systemctl enable saludo_fecha.service

Inicia el servicio:
   
   sudo systemctl start saludo_fecha.service


## Instalación

1. Copia el script `saludo_fecha.sh` a `/usr/local/bin/` y asegúrate de que sea ejecutable:

   ```bash
   sudo chmod +x /usr/local/bin/saludo_fecha.sh

2. Copia el archivo de unit saludo_fecha.service a /etc/systemd/system/.

3. Recarga los daemons de systemd para reconocer el nuevo servicio:
   
   sudo systemctl daemon-reload

4. Habilita el servicio para iniciar con el sistema:
   
   sudo systemctl enable saludo_fecha.service

5. Inicia el servicio:

   sudo systemctl start saludo_fecha.service

## Verificación de Logs

Para chequear los logs del servicio, utiliza el siguiente comando:
   
   sudo journalctl -u saludo_fecha.service

