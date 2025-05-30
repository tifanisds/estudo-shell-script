#Crie um script que imprima os números de 1 a 10 usando um for.
#!/bin/bash

for numero in {1..10}; do       #Esse laço vai gerar uma sequência de números de 1 a 10.
        echo "numero $numero"   #A cada repetição, o valor atual da sequência será atribuído à variável numero.
done


#Peça ao usuário um número e mostre a tabuada dele de 1 a 10 usando for.
#!/bin/bash

echo "Digite um número de 1 a 10"
read numeroUsuario

for numero in {1..10}; do
        valorAtual=$((numero * numeroUsuario)) #O Shell Script não interpreta expressões matemáticas automaticamente como algumas outras linguagens
        echo "$numero vezes $numeroUsuario é $valorAtual" #Em vez disso, você precisa usar uma construção especial para dizer ao Bash: "isto é uma operação matemática".
done


#Pedir para o usuário digitar um número N, e então somar todos os números de 1 até N usando um laço while.
#!/bin/bash

echo "Digite um numero de 1 a 10"
read numeroUsuario

soma=0
contador=0

while [[ $contador -lt $numeroUsuario || $contador -eq $numeroUsuario ]]; do
        ((soma += $contador))
        ((contador++))
done

echo "Valor total: $soma"


#Crie um script que faça a contagem regressiva de 10 até 1 com sleep 1 entre os números, usando um while ou until.


#Percorra todos os arquivos de um diretório (pode usar *) com um for e exiba o nome de cada um


#Use um for para percorrer uma lista de nomes de arquivos e exiba se cada um existe ou não.


#Com um laço while, peça 5 nomes ao usuário e os armazene em um array. Depois, exiba todos os nomes.


#Implemente um joguinho simples em que o usuário tem que adivinhar um número secreto de 1 a 10. Use until para repetir enquanto a resposta estiver errada.


#Use um for ou while para exibir apenas os números pares de 1 a 20.


#Crie um menu com 3 opções:
# 1 - Dizer Olá
# 2 - Mostrar data
# 3 - Sair