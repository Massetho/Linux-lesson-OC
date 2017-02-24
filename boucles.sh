#!/bin/bash

if [ "$#" = 0 ]
then
	read -p 'Saisis le nom des fichiers à renommer :' fichier
	"$fichier"="$@"
	for arg in "$fichier" ; do
	cp "$arg" "$arg-old"; done                        
       
                                    
     
else
	for arg in "$@" ; do
	cp "$arg" "$arg-old"; done
fi
