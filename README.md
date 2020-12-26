# XBOSSYZ SEARCH BASH SCRIPT

Autor: Erlaitz "xBossyz" Parreno
S.O: Linux
Date: 25/12/2020

Script para realizar busquedas de palabras clave dentro de ficheros como contraseñas, usuarios, etc.

root@kali-pentest:~# ./xbzsearch.sh /root/test/ pass
1) Buscar cadenas de texto con pass dentro de un fichero en /root/test/   
2) Buscar ficheros que contengan pass en /root/test/                      
3) Buscar ficheros(.txt,.php,etc) con el nombre pass en /root/test/       
Introduce una opcion: 1

OUTPUT:
/root/test/.env:1:password=test
/root/test/.env:2:db_pass=test

También realizar busquedas de ficheros por el sistema.

root@kali-pentest:~# ./xbzsearch.sh /root/test/ root
1) Buscar cadenas de texto con pass dentro de un fichero en /root/test/   
2) Buscar ficheros que contengan pass en /root/test/                      
3) Buscar ficheros(.txt,.php,etc) con el nombre pass en /root/test/       
Introduce una opcion: 3

OUTPUT:
/root/test/root.txt
