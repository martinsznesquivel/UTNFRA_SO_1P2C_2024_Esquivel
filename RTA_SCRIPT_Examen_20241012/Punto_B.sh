#!/bin/bash
sudo fdisk /dev/sdc << EOF
n
p


+1G
n
p


+1G
n
p


+1G
n
e


n

+1G
n
 
+1G
n

+1G
n

+1G
n

+1G
n

+1G
n

+1G
n

+1G
w
EOF
#formateo las particiones con ext4
sudo mkfs.ext4 /dev/sdc1
sudo mkfs.ext4 /dev/sdc2
sudo mkfs.ext4 /dev/sdc3
sudo mkfs.ext4 /dev/sdc5
sudo mkfs.ext4 /dev/sdc6
sudo mkfs.ext4 /dev/sdc7
sudo mkfs.ext4 /dev/sdc8
sudo mkfs.ext4 /dev/sdc9
sudo mkfs.ext4 /dev/sdc10
sudo mkfs.ext4 /dev/sdc11
#añdo entradas a /etc/fstab para hacer el montaje persistente
echo "/dev/sdc1 repogit/Examenes-UTN/alumno_1/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc2 repogit/Examenes-UTN/alumno_1/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc3 repogit/Examenes-UTN/alumno_1/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc5 repogit/Examenes-UTN/alumno_2/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc6 repogit/Examenes-UTN/alumno_2/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc7 repogit/Examenes-UTN/alumno_2/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc8 repogit/Examenes-UTN/alumno_3/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc9 repogit/Examenes-UTN/alumno_3/parcial_2 ext4 defaults 0 0" | sudo tee -a  /etc/fstab
echo "/dev/sdc10 repogit/Examenes-UTN/alumno_3/parcial_3 ext4 defaults 0 0" | sudo tee -a  /etc/fstab
echo "/dev/sdc11 repogit/Examenes-UTN/profesores ext4 defaults 0 0" | sudo tee -a /etc/fstab
#monto las particiones en los directorios/carpetas
sudo mount -a

