#!/bin/bash

#Cette commande s'utilise ainsi : "./langstat fichier [lettre]"


#Gestion du paramètre principal
if [ -z $1 ] || [ ! -f $1 ];
then
        echo 'Veuillez rentrer un nom de fichier valide à traiter';
        echo 'Ex : ./langstat fichier_valide';
        exit 1;
fi

# Mission 1 : combien de fois est utilisée chaque lettre ?
if [ -z $2 ] ;
then
        for x in {A..Z};
        do
                echo "`grep -i -c $x $1` - $x";
        done | sort -rn

#Mission 2 : combien de mots commencent par la  lettre ($2) ?
else
        echo "`grep -i -c -E ^$2 $1` mots commencent par $2";
fi
