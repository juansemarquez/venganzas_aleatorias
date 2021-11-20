# venganzas_aleatorias
Script bash que descarga y reproduce un programa al azar de "La venganza será
terrible", de Alejandro Dolina.

La descarga se realiza desde el sitio [Venganzas del
Pasado](https://venganzasdelpasado.com.ar/).

## Prerrequisitos

Tener **GNU/Linux** (o un intérprete de bash en otro sistema operativo) y
**wget** para descargar (y un reproductor de audio para escuchar, ma vale).

## Uso

Descargar el archivo y darle permisos de ejecución con

```bash
chmod 744 /ruta/hacia/venganzas_aleatorias.sh
```

Luego, configurar las primeras líneas del archivo con los datos que correspondan

```bash
# Carpeta de destino:
destino="$HOME/LVST/"
# Año actual:
anio_actual=2022
# Reproductor de audio
player="audacious"
```

Ejecutar el archivo desde una terminal. Y chau.
- ¿Chau qué?
- Nada, estoy saludando al que se va a ejecutar el script.
