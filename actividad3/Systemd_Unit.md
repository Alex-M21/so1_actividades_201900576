# Instalación del Servicio de Saludo

Este explicaremos cómo instalar y configurar el servicio de saludo, el cual imprime un saludo y la fecha actual infinitamente con una pausa de un segundo.

## Paso 1: Preparación del Script

1. Crea un archivo de script llamado `saludo.sh` con el siguiente contenido:

    ```bash
    #!/bin/bash
    while true; do
        echo "Hola, la fecha actual es: $(date)"
        sleep 1
    done
    ```

   ![Script de Saludo](ruta/a/imagen/script.png)

2. Guarda el archivo `saludo.sh` en el directorio `/usr/local/bin/`:

    ```bash
    sudo cp saludo.sh /usr/local/bin/
    sudo chmod +x /usr/local/bin/saludo.sh
    ```

   ![Guardando el Script](ruta/a/imagen/guardar_script.png)

## Paso 2: Creación del Archivo de Unidad Systemd

1. Crea un archivo de unidad systemd llamado `saludo.service` en el directorio `/etc/systemd/system/` con el siguiente contenido:

    ```plaintext
    [Unit]
    Description=Servicio de saludo

    [Service]
    ExecStart=/usr/local/bin/saludo.sh
    Restart=always
    StandardOutput=syslog
    StandardError=syslog
    SyslogIdentifier=saludo

    [Install]
    WantedBy=multi-user.target
    ```

   ![Archivo de Unidad Systemd](ruta/a/imagen/archivo_systemd.png)

2. Habilita el servicio para que se inicie automáticamente con el sistema:

    ```bash
    sudo systemctl enable saludo.service
    ```

   ![Habilitar el Servicio](ruta/a/imagen/habilitar_servicio.png)

## Paso 3: Iniciar el Servicio

Inicia el servicio con el siguiente comando:

```bash
sudo systemctl start saludo.service


## Paso 4: Verificar los logs  

journalctl -u saludo.service



![Habilitar el Servicio](ruta/a/imagen/habilitar_servicio.png)