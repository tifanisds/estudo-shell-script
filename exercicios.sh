#!/bin/bash

# Exibir uma mensagem na tela
echo "ola mundo"


#Exibir variáveis de ambiente
echo $HOME   # Mostra o diretório do usuário
echo $USER   # Nome do usuário logado
echo $PATH   # Caminhos usados para buscar comandos


#Crie um script que peça ao usuário para digitar o nome e, em seguida, exiba uma saudação.
echo "Digite o seu nome: "
read nome
echo "Olá, $nome. Seja bem vindo!"


#Crie um script que verifica se um diretório chamado teste existe.
if [ -d ./testee ]; then
    echo "Esse caminho existe"
else
    echo "Esse caminho não existe"
fi


#Crie um script que use um laço for para contar de 1 até 10.
for i in {1..10}; do
    echo "Numero $i"
done


#Escreva um script que crie 5 arquivos com nomes arquivo1.txt até arquivo5.txt.
for i in {1..5}; do
    touch "arquivo$i.txt"
    echo "arquivo$i.txt criado"
done


#Soma de dois números
echo "Digite um número"
read numero1
echo "Digite um segundo número"
read numero2

soma=$((numero1+numero2))
echo "A soma de $numero1 e $numero2 é: $soma"