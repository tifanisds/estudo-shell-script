# Crie um script que verifica se um diretório chamado teste existe.
#!/bin/bash

if [ -d ./testee ]; then
        echo "Esse caminho existe"
else
        echo "Esse caminho não existe"
fi

# Peça para o usuário digitar um número e use uma estrutura condicional para exibir:
# - "Positivo" se o número for maior que zero,
# - "Negativo" se for menor,
# - "Zero" se for igual a zero.

#!/bin/bash

echo "Digite um número"
read numeroDoUsuario #o valor digitado no terminal será atribuido para a variável numeroDoUsuario

if [ $numeroDoUsuario -gt 0 ]; then #variáveis já declaradas devem ser chamadas utilizando $
        echo "Positivo"
elif [ $numeroDoUsuario -lt 0 ]; then #shell script não reconhece < e >, então é necessário utilizar comandos -gt (greater than) -lt (less than)
        echo "Negativo"
else
        echo "Zero"
fi


#Solicite um número e diga se ele é par ou ímpar.
#!/bin/bash

echo "Digite um número"
read numeroDoUsuario

if [ $((numeroDoUsuario % 2)) -eq 0 ]; then #o shell trata tudo como texto, por isso é necessário utilizar parenteses
        echo "Esse é um número par"         #duplos toda vez que uma operação matemática for feita
else
        echo "Esse é um número ímpar"
fi


# Peça dois números e diga:
# - Qual é maior, ou se são iguais.

#!/bin/bash

echo "Digite um número"
read numero1

echo "Agora digite outro número"
read numero2

if [ $numero1 -gt $numero2 ]; then
        echo "$numero1 é maior que $numero2"
elif [ $numero2 -gt $numero1 ]; then
        echo "$numero2 é maior que $numero1"
else
        echo "$numero2 e $numero1 são iguais"
fi


#Peça um caminho de arquivo e informe se o usuário atual pode ou não escrever nesse arquivo.
#!/bin/bash

echo "Digite o caminho do seu repositório atual"
read caminho

if [ ! -e "$caminho" ]; then # -e verifica se algo existe e ! -e é sua negação, ou seja, verifica se não existe. Nesse caso, o caminho passado
        echo "Esse caminho não existe"
        exit 1
fi


if [ -w "$caminho" ]; then 
        echo "Você tem permissão de escrita"
fi

if [ -r "$caminho" ]; then
        echo "Você tem permissão de leitura"
fi

if [ -x "$caminho" ]; then
        echo "Você tem permissão de execução"
fi


#Peça para o usuário digitar uma senha e verifique se ela é igual a uma senha pré-definida no script. Se for correta, diga "Acesso liberado", senão, "Acesso negado".
#!/bin/bash

echo "Digite a senha para ter acesso a um mensagem secreta"
read senhaUsuario
senhaVerdadeira="coelho_branco123"
mensagemSecreta="A persistência leva ao sucesso."

if [ "$senhaUsuario" = "$senhaVerdadeira" ]; then
        echo "Você acertou a senha!!"
        echo "A mensagem secreta é: $mensagemSecreta"
else
        echo "Você errou a senha e não poderá ver a mensagem secreta"
fi


#Peça uma nota de 0 a 10 e classifique:
# - Abaixo de 5: "Reprovado"
# - De 5 a 6.9: "Recuperação"
# - De 7 a 10: "Aprovado"

#!/bin/bash

echo "Olá aluno! Por favor, digite a sua nota"
read notaAluno

if [ $notaAluno -gt 7 ] && [[ $notaAluno -lt 10 || $notaAluno -eq 10 ]]; then #and e or deve ser tratado dessa forma com && = and e || = or
        echo "Parabéns!! você foi aprovado."
elif [ $notaAluno -gt 5 ] && [[ $notaAluno -lt 6 || $notaAluno -eq 7 ]] ; then
        echo "Você terá que fazer a recuperação da matéria"
elif [ $notaAluno -lt 5 ]; then
        echo "Você foi reprovado"
fi