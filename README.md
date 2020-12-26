# XBOSSYZ SEARCH BASH SCRIPT

Autor: Erlaitz "xBossyz" Parreño

S.O: Linux

Date: 25/12/2020

Funcionamiento --> ./xbzsearch *Ruta* *Cadena* 
  
__Ejemplo: ./xbzsearch /etc db_pass__

____________________________________________________________________

Script para realizar busquedas de palabras clave dentro de ficheros como contraseñas, usuarios, etc.

__root@kali-pentest:~# ./xbzsearch.sh /root/test/ pass__
1) Buscar cadenas de texto con pass dentro de un fichero en /root/test/   
2) Buscar ficheros que contengan pass en /root/test/                      
3) Buscar ficheros(.txt,.php,etc) con el nombre pass en /root/test/ 

-->Introduce una opcion: 1

OUTPUT:
__/root/test/.env:1:password=test__

__/root/test/config.php:2:db_pass=test__

___________________________________________________________________

También realizar busquedas de ficheros por el sistema.

__root@kali-pentest:~# ./xbzsearch.sh /root/test/ root__
1) Buscar cadenas de texto con pass dentro de un fichero en /root/test/   
2) Buscar ficheros que contengan pass en /root/test/                      
3) Buscar ficheros(.txt,.php,etc) con el nombre pass en /root/test/ 

-->Introduce una opcion: 3

OUTPUT:
__/root/test/root.txt__
