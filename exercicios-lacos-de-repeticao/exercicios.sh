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


#Com um laço while, peça 5 nomes ao usuário e os armazene em um array. Depois, exiba todos os nomes.
nomes=()

i=0

while [ $i -lt 5 ]; do
    echo "Escreva um nome na lista:"
    read nome
        nomes[$i]="$nome"
    i=$((i + 1))
done

echo "Nomes digitados:"
for nome in "${nomes[@]}"; do
    echo "$nome"
done



#Use um for ou while para exibir apenas os números pares de 1 a 20.
i=0

while [ $i -lt 20 ]; do
        if [ $((i%2)) = 0 ]; then
                echo $i
        fi

        i=$((i + 1))
done


#Crie um menu com 3 opções:
# 1 - Dizer Olá
# 2 - Mostrar data
# 3 - Sair
sair=false

while [ $sair = false ]; do
        echo "1 - Dizer olá"
        echo "2 - Mostrar data"
        echo "3 - Sair"
        read valorDigitado

        if [ $valorDigitado -eq 1 ]; then
                echo "Olá"
        elif [ $valorDigitado -eq 2 ]; then
                echo $(date)
        elif [ $valorDigitado -eq 3  ]; then
                sair=true
        fi
done


#Ler números do usuário e somar até que ele digite 0.
soma=0
numero=1

while [ "$numero" -ne 0 ]; do
    echo "Digite um número (0 para sair): "
    read numero

    soma=$((soma + numero))
done

echo "A soma total é: $soma"


#Continuar pedindo uma senha até que o usuário digite a correta (1234).
senha="bolo"
senhaCerta="false"

while [ "$senhaCerta" = "false" ]; do
    echo "Digite a senha:"
    read senhaUsuario

    if [ "$senhaUsuario" = "$senha" ]; then
        echo "Parabéns, você acertou a senha"
        senhaCerta="true"
    else
        echo "Senha incorreta"
    fi
done

