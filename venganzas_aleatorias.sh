#!/bin/bash

# Carpeta de destino:
destino="$HOME/LVST/"
# Año actual:
anio_actual=2022
# Reproductor de audio
player="audacious"


mkdir -p $destino
cd $destino || exit 0
limite_random=$(($anio_actual-2007))
descarga=8

while [ $descarga -gt 0 ]
do
    anio=$((2007+$RANDOM%$limite_random))
    mes=$((1+$RANDOM%12))
    dia=$((1+$RANDOM%31))

    if [ $mes -lt 10 ]
    then
        mes=0$mes
    fi

    if [ $dia -lt 10 ]
    then
        dia=0$dia
    fi


    echo "Intentando descargar el programa del $dia/$mes/$anio"
    wget https://venganzasdelpasado.com.ar/$anio/lavenganza_$anio-$mes-$dia.mp3
    descarga=$?
    if [ $descarga -eq 0 ]
    then
        echo "Descargado!"
    else
        echo "No se encontró programa ese día, reintentando..."
    fi
done

$player lavenganza_$anio-$mes-$dia.mp3 &

cd -

