#!/usr/bin/bash

user=$(whoami)

#definir as pastas

pasta_downloads="C:/Users/"$user"/Downloads/"
pasta_documents="C:/Users/"$user"/Documents/"
pasta_images="C:/Users/"$user"/Pictures/"
pasta_desktop="C:/Users/"$user"/Desktop/"

shopt -s extglob

#para cada uma dessas pastas eliminar todos os ficheiros menos alguns pré-definidos

for pasta in $pasta_downloads $pasta_documents $pasta_images $pasta_desktop
do
	echo $pasta
	cd $pasta
	rm !(*.Ink|teste.sh) 2> error.log
done

shopt -u extglob

echo "Todos os ficheiros foram eliminados"

#definir a localização da cache e cookies do browser (neste caso o Edge)

Cache="C:\\Users\\teste\\AppData\\Local\\Microsoft\\Edge\\User Data\\Default\\Cache"
Cookies="C:\\Users\\teste\\AppData\\Local\\Microsoft\\Edge\\User Data\\Default\\Cookies"

#eliminar os cookies e cache

rm -r "$Cache" 2> error.log
rm -r "$Cookies" 2> error.log

echo "A cache e os cookies do browser foram limpos"
