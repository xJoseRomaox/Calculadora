Calculadora em Shell Script
Descrição

Este projeto apresenta uma calculadora simples desenvolvida em Shell Script (Bash).

O programa permite realizar quatro operações matemáticas básicas:

Soma
Subtração
Multiplicação
Divisão

Também possui uma verificação para impedir a divisão por zero.

Tecnologias utilizadas
Shell Script
Bash
GitHub
Como executar

Para executar o programa em um ambiente Linux ou compatível com Bash, primeiro é necessário conceder permissão de execução ao arquivo:

chmod +x calculadora.sh

Depois, execute o programa com:

./calculadora.sh
Funcionamento

Ao iniciar o programa, o usuário informa dois números.

Em seguida, é apresentado um menu com quatro opções:

Soma
Subtração
Multiplicação
Divisão

O usuário escolhe uma das operações e o programa calcula e apresenta o resultado.

Explicação do código

O programa começa com:

#!/bin/bash

Essa linha indica que o script deve ser executado utilizando o interpretador Bash.

Os comandos:

read num1
read num2

são utilizados para receber os dois números informados pelo usuário.

A estrutura:

case $opcao in

é utilizada para verificar qual operação foi escolhida.

Para a soma, é utilizado:

resultado=$((num1 + num2))

Para a subtração:

resultado=$((num1 - num2))

Para a multiplicação:

resultado=$((num1 * num2))

Para a divisão:

resultado=$((num1 / num2))

Antes da divisão, o programa verifica se o segundo número é zero:

if [ "$num2" -eq 0 ]; then

Caso seja zero, o programa apresenta uma mensagem de erro, evitando uma divisão inválida.

Exemplo de execução
==============================
       CALCULADORA BASH
==============================

Digite o primeiro número:
10

Digite o segundo número:
5

Escolha a operação:
1 - Soma
2 - Subtração
3 - Multiplicação
4 - Divisão

1

Resultado: 15
Autor

Projeto desenvolvido como atividade acadêmica.
