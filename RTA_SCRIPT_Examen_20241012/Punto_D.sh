#!/bin/bash
#aca creo el directorio principal que contiene las dos carpetas pedidas
mkdir -p Estructura_Asimetrica/correo Estructura_Asimetrica/clientes

#con touch creo archivos vacios en correo. Con las {} indico que se creen cartas desde 1 a 100
touch Estructura_Asimetrica/correo/cartas_{1..100}

#hago lo mismo pero dentro de clientes
touch Estructura_Asimetrica/clientes/cartas_{1..100}
#dentro de correos hago lo anterior pero en lugar de cartas, con carteros
touch Estructura_Asimetrica/correo/carteros_{1..10}
