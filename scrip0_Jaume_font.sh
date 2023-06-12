#!/bin/bash
data=$(date)
usuari=$USER
echo "Benvinguts a l'examen de scripts, jo soc en/na ${usuari}. Avui és ${data}."

nota_examen=$(( ( RANDOM % 10 )  + 1 ))
echo "La nota del meu examen és ${nota_examen}"

read -p "Has tigut una bona aptitud?: " resposta
if [[ $resposta == "si" ]]; 
then
    nota_examen=$((nota_examen + 1))
    
elif [[ $resposta == "no" ]]; 
then
    nota_examen=$((nota_examen - 1))
    
fi


if [[ ${nota_examen} -le 4 ]]
    then
        echo "La teva nota final és un ${nota_examen}, estàs suspès."
    else
        echo "La teva nota final és un ${nota_examen}, estàs aprovat."
fi




