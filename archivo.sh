#!/bin/bash

if [ "$1" == "info" ]; then
for i in {1..3}
do
echo "Iteracion $i:"
    echo "Mostrando información del sistema..."
    echo "Hostname: $(hostname)"
    echo "Usuario Actual: $(whoami)"
    echo "Directorio Actual: $(pwd)"
    echo "Información del Sistema: $(uname -a)"
    echo "Uso de Memoria: $(free -h)"
    echo "Uso de Disco: $(df -h)"
    echo "Procesos en Ejecución: $(top -b -n 1 | head -n 12)"
sleep 2
done
elif [ "$1" == "help" ]; then
for i in {1..2}
do
echo "Iteracion $1:"
    echo "Mostrando ayuda..."
    echo "Uso:./script.sh [info|help]"
    echo "info: Muestra información detallada del sistema."
    echo "help: Muestra esta ayuda."
sleep 2
done
else
    echo "Argumento desconocido. Usa 'info' para obtener información del sistema o 'help' para ayuda."
fi

