#!/bin/bash

#Cette commande s'utilise ainsi : "./langstat.sh fichier [chaine]"
#Sans le paramètre "[chaine]" la commande remplit la mission 1.
#Avec le paramètre "[chaine]" la commande remplit la mission 2.

#Vérification de la présence et de la validité du paramètre "fichier"
if [ -z $1 ] || [ ! -f $1 ] ;
then
	echo 'Veuillez rentrer un nom de fichier valide à traiter';
	echo 'Ex : ./langstat fichier_valide';
	exit 1;
fi

# Mission 1 : combien de fois est utilisée chaque lettre dans "fichier" ?
if [ -z $2 ] ;
then
	for x in {A..Z};
	do
		echo "`grep -ic $x $1` - $x";
	done | sort -rn

# Mission 2 : combien de mots commencent par "[chaine]" dans "fichier" ?
else
	echo "`grep -icE ^$2 $1` mots commencent par $2";
fi
