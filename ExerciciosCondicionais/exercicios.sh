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

read numeroDoUsuario #o valor digitado no terminal será atribuido para a variável numeroDoUsuario

if [ $numeroDoUsuario -gt 0 ]; then #variáveis já declaradas devem ser chamadas utilizando $
        echo "Positivo"
elif [ $numeroDoUsuario -lt 0 ]; then #shell script não reconhece < e >, então é necessário utilizar comandos -gt (greater than) -lt (less than)
        echo "Negativo"
else
        echo "Zero"
fi


