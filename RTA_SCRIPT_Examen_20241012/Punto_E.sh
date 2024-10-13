#!/bin/bash
#Utilizo grep para encontrar la cadena "MemTotal" dentro de /proc/meminfo", luego la mando a la carpeta pedido, donde se creara el archivo con la informacion total de la memoria RAM"
grep "MemTotal" /proc/meminfo > osboxes/repogit/UTNFRA_SO_1P2C_2024_Esquivel/RTA_ARCHIVOS_Examen_$(date +%Y%m%d)/Filtro_Basico.txt
#utilizo dmidecode -t chassis, como se indica, para extraer la info del chassis de la pc. Grep -A3 para esa seccion y las tres lineas que le siguen- luego las aÃado al archivo que cree antes
dmidecode -t chassis | grep -A3 "Chassis Information" >> osboxes/repogit/UTNFRA_SO_1P2C_2024_Esquivel/RTA_ARCHIVOS_Examen_$(date +%Y%m%d)/Filtro_Basico.txt
