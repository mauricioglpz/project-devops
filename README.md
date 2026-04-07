# actividad DevOps AWS

## Descripción
Automatización de EC2 y backups en S3 usando Python y Bash.

## Uso

./deploy.sh iniciar
./deploy.sh detener

## Flujo Git
feature → develop → main

## Tecnologías
- AWS EC2
- AWS S3
- Python (boto3)
- Bash

- 
## Pruebas realizadas

### 1. Gestión de EC2
Se ejecutó el script:

./deploy.sh iniciar

Resultado:
- La instancia EC2 cambió a estado `running`.
---
### 2. Compresión de archivos
Se verificó la creación del archivo comprimido:

ls

Resultado:
- Archivo `backup_fecha.tar.gz` generado correctamente.
---
### 3. Logs del sistema
Se revisaron los logs:

cat logs/deploy.log
cat logs/backup.log

Resultado:
- Se registraron correctamente las ejecuciones.
---
