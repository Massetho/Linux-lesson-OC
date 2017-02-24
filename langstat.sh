#!/bin/bash

#Les commandes utiles pour la Mission 1
#grep : trouver les mots correspondants aux critères de recherche et fournir leur ligne
#wc : compter le nombre de ligne
#for : boucler pour toutes les lettres de l'alphabet
#echo : afficher les résultats dans la console

#Mission 2 : combien de mot commence par telle lettre ?

#Gestion du paramètre principal
if [ -z $1 ]
then
	read -p 'Veuillez rentrer le nom du fichier à traiter :' fichier;
else
	fichier='$1';
fi

# Mission 1 : combien de fois est utilisée chaque lettre ?
for x in $fichier{a..z} ;
do
	grep '$x' '$fichier' | wc;
done
