#!/bin/bash

if [ $# -gt 0 ] ; then # verifica se tem mais de zero parametros
    number=$1
else
    echo -n "Digite um número: " ;  read number ;
fi

f1=1
f2=1

echo "Sequência de fibonacci para o número $number: "

for (( i = 0; i < number ; i ++ )) ; do
	echo -n "$f1 "
	
	fn=$((f1+f2))
	
	f1=$f2 ; f2=$fn
done

echo #pula uma linha no final :)