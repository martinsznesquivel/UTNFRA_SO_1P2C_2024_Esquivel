#!/bin/bash
groupadd p1c2_2024_gAlumno
groupadd p1c2_2024_gProfesores
#creo los usuarios con useradd, con -m creo los directorios y con -G les asigno/creo grupos
useradd -m -G p1c2_2024_gAlumno -s /bin/bash p1c2_2024_A1
echo "p1c2_2024_A1:p1c2_2024_A1" | chpasswd
useradd -m -G p1c2_2024_gAlumno -s /bin/bash p1c2_2024_A2
echo "p1c2_2024_A2:p1c2_2024_A2" | chpasswd
useradd -m -G p1c2_2024_gAlumno -s /bin/bash p1c2_2024_A3
echo "p1c2_2024_A3:p1c2_2024_A3" | chpasswd
useradd -m -G p1c2_2024_gProfesores -s /bin/bash p1c2_2024_P1
echo "p1c2_2024_P1:p1c2_2024_P1" | chpasswd

#hago lo pedido para el alumno 1, con chown lo hago duenio y con chmod le doy los permisos pedidos
sudo chown p1c2_2024_A1:p1c2_2024_A1 Examenes-UTN/alumno_1
sudo chmod 750 Examenes-UTN/alumno_1

#le asigno dueño, grupo y permisos par el segundo  alumno
sudo chown p1c2_2024_A2:p1c2_2024_A2 Examenes-UTN/alumno_2
sudo chmod 760 Examenes-UTN/alumno_2

#hago lo mismo para el tercero
sudo chown p1c2_2024_A3:p1c2_2024_A3 Examenes-UTN/alumno_3
sudo chmod 700 Examenes-UTN/alumno_3

#por ultimo le asigno duenio, grupo y permisos a los profesores
sudo chown p1c2_2024_P1:p1c2_2024_gProfesores Examenes-UTN/profesores
sudo chmod 775 Examenes-UTN/profesores

#creo el archivo validar.txt pedido
sudo su -c "whoami > Examenes-UTN/alumno_1/validar1.txt" p1c2_2024_A1
sudo su -c "whoami > Examenes-UTN/alumno_2/validar2.txt" p1c2_2024_A2
sudo su -c "whoami > Examenes-UTN/alumno_3/validar3.txt" p1c2_2024_A3
sudo su -c "whoami > Examenes-UTN/profesores/validar4.txt" p1c2_2024_P1
