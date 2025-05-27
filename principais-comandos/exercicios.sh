#Exibir mensagens na tela
echo "ola mundo"


#Criar variáveis e exibi-las
#!/bin/bash

nome="Maria"
echo "Olá, $nome"


#Exibir variáveis de ambiente
echo $HOME   # Mostra o diretório do usuário
echo $USER   # Nome do usuário logado
echo $PATH   # Caminhos usados para buscar comandos


#Recebe uma informação do teclado
echo "Digite o seu nome: "
read nome
echo "Olá, $nome. Seja bem vindo!"


#Soma de números
#!/bin/bash

echo "Digite um número"
read numero1
echo "Digite um segundo número"
read numero2

soma=$((numero1+numero2))
echo "A soma de $numero1 e $numero2 é: $soma"