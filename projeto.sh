#!/usr/bin/bash

#definir as pastas

pasta_downloads="C:/Users/teste/Downloads/"
pasta_documents="C:/Users/teste/Documents/"
pasta_images="C:/Users/teste/Pictures/"
pasta_desktop="C:/Users/teste/Desktop/"

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

rm -r "$Cache"
rm -r "$Cookies"

echo "A cache e os cookies do browser foram limpos"
