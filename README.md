# Calculadora

Projeto de uma calculadora desenvolvida em Shell Script e Python, utilizando um menu interativo para realizar operações matemáticas básicas.

## Descrição

A calculadora permite realizar quatro operações matemáticas:

- Soma
- Subtração
- Multiplicação
- Divisão

O programa possui um menu em loop e a opção 5 permite encerrar a execução.

O projeto foi desenvolvido como atividade acadêmica com o objetivo de praticar programação, Shell Script, Python, organização de código e versionamento utilizando GitHub.

## Tecnologias utilizadas
Shell Script (Bash)
Python
Jupyter Notebook / Google Colab
GitHub
Arquivos do projeto
calculadora.sh — calculadora desenvolvida em Shell Script.
Calculadora_Python.ipynb — calculadora desenvolvida em Python utilizando um notebook Jupyter/Google Colab.
Como executar o Shell Script

Primeiro, é necessário conceder permissão de execução ao arquivo:

chmod +x calculadora.sh

Depois, execute o programa com:

./calculadora.sh
Funcionamento do Shell Script

Ao executar o programa, é apresentado um menu com as opções:

1 - Soma
2 - Subtração
3 - Multiplicação
4 - Divisão
5 - Sair

O programa permanece em execução enquanto o usuário não escolher a opção 5.

As operações são realizadas de acordo com a opção escolhida.

Na divisão, o script utiliza o comando bc para realizar o cálculo com casas decimais. O uso de scale=2 permite definir duas casas decimais no resultado.

Antes de realizar uma divisão, o programa verifica se o segundo número é zero. Caso seja, uma mensagem de erro é apresentada para evitar uma divisão inválida.

Calculadora em Python

A calculadora em Python foi desenvolvida em um notebook Jupyter/Google Colab, disponível no arquivo:

Calculadora_Python.ipynb

O programa utiliza funções para organizar cada operação matemática:

def soma(a, b):
    return a + b

def subtracao(a, b):
    return a - b

def multiplicacao(a, b):
    return a * b

def divisao(a, b):
    if b == 0:
        return "Erro: não é possível dividir por zero."
    return a / b

Cada função recebe dois números e retorna o resultado da operação correspondente.

A função divisao() possui uma verificação para impedir a divisão por zero.

Funcionamento da calculadora em Python

O programa apresenta um menu com cinco opções:

1 - Soma
2 - Subtração
3 - Multiplicação
4 - Divisão
5 - Sair

As opções de 1 a 4 executam as operações matemáticas.

A opção 5 encerra o programa.

O menu é executado dentro de uma estrutura while, permitindo que o usuário realize várias operações sem precisar reiniciar o programa.

Caso seja escolhida uma opção inválida, o programa informa o erro e apresenta novamente o menu.

Exemplo de execução
==============================
      CALCULADORA PYTHON
==============================

Escolha uma operação:
1 - Soma
2 - Subtração
3 - Multiplicação
4 - Divisão
5 - Sair

Digite a opção: 1
Digite o primeiro número: 10
Digite o segundo número: 5

Resultado: 15.0
Tratamento de divisão por zero

Tanto no Shell Script quanto no Python existe uma verificação para evitar a divisão por zero.

No Python:

if b == 0:
    return "Erro: não é possível dividir por zero."

No Shell Script, o valor do segundo número é verificado antes da realização da divisão.

Essa validação evita erros durante a execução do programa.

Objetivo do projeto

O projeto tem como objetivo demonstrar conhecimentos básicos de programação, criação de scripts, utilização de funções, estruturas de repetição e decisão, tratamento de erros e utilização do GitHub para versionamento e documentação do código.
