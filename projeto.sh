#!/usr/bin/bash

pasta_downloads="C:/Users/teste/Downloads/"
pasta_documents="C:/Users/teste/Documents/"
pasta_images="C:/Users/teste/Pictures/"
pasta_desktop="C:/Users/teste/Desktop/"

shopt -s extglob

for pasta in $pasta_downloads $pasta_documents $pasta_images $pasta_desktop
do
	echo $pasta
	cd $pasta
	rm !(*.Ink|teste.sh) 2> error.log
done

shopt -u extglob

echo "Todos os ficheiros foram eliminados"

Cache="C:\\Users\\teste\\AppData\\Local\\Microsoft\\Edge\\User Data\\Default\\Cache"
Cookies="C:\\Users\\teste\\AppData\\Local\\Microsoft\\Edge\\User Data\\Default\\Cookies"

rm -r "$Cache"
rm -r "$Cookies"

echo "A cache e os cookies do browser foram limpos"
