#!/bin/bash
#Autor: Erlaitz Parreno @erlaitzpm
#Versión: 1.0

if [ "$1" == "-h" ]; then
	echo "Funcionamiento --> ./xbzsearch <Ruta> <Cadena a buscar> ";
	echo "Ejemplo: ./xbzsearch /etc db_pass ";
	echo "Autor: Erlaitz Parreno @erlaitzpm";
fi
	
	
echo "#----------------------------------------------------------------------#";
echo "# 1) Buscar cadenas de texto con ""$2"" dentro de un fichero en $1";
echo "# 2) Buscar ficheros que contengan ""$2"" en $1"; 
echo "# 3) Buscar ficheros(.txt,.php,etc) con el nombre ""$2"" en $1";
echo "#----------------------------------------------------------------------#";

echo "Introduce una opcion";
read argv;

case $argv in
  1)
  if [[ $1 && $2 ]]; then
	grep -IRn $1 -e $2 2> /dev/null;
  fi	
  ;;
  
  2)
  if [[ $1 && $2 ]]; then
	find $1 -name ".*" -type f -exec grep -r $2 {} \;
  fi
  ;;
  
  3)
  if [[ $1 && $2 ]]; then
	find $1 -type f -name "$2.*" 
  fi
  ;;
  *)
    echo "Numero incorrecto";
  ;;
esac
