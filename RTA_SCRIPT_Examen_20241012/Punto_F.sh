#!/bin/bash

#uso el comando pedido por el parcial para obtener la IP publica, lo pongo dentro de $() para ejecutar el comando dentro de alli, imprimiendo el resultado, por comodidad. Luego con > creo el archivo dentro de la carpeta senialada.
echo "Mi IP Publica es: $(curl -s ifconfig.me)" > "RTA_ARCHIVOS_Examen_$(date +%Y%m%d)/Filtro_Avanzado.txt"

#hago lo mismo, solo que con >> para que no sobreescriba al archivo ya creado, si no que se agregue a lo que ya habia"
echo "Mi usuario es: $(whoami)" >> "RTA_ARCHIVOS_Examen_$(date +%Y%m%d)/Filtro_Avanzado.txt"

#con grep "^$(whoami):" /etc/shadow busco el archivo con mi nombre de usuario dentro de shadow. COn cut -d: -f2 selecciono solo la segunda linea que tiene el hash de la contrasenia. Luego hago lo mismo que el punto anterior, >> para agregar a lo escrito
echo "El hash de mi Usuario es: $(sudo grep "^$(whoami):" /etc/shadow | cut -d: -f2)" >> "RTA_ARCHIVOS_Examen_$(date +%Y%m%d)/Filtro_Avanzado.txt"

#aca hago basicamente lo mismo que antes, uso el comando que pide la consigna y lo mando al archivo pedido
echo "La URL de mi repositorio es: $(git remote get-url origin)" >> "RTA_ARCHIVOS_Examen_$(date +%Y%m%d)/Filtro_Avanzado.txt"
