# Calculadora

Projeto de uma calculadora desenvolvida em Shell Script (Bash) e Python, com menu interativo e operações matemáticas básicas.

## Descrição

A calculadora permite realizar as seguintes operações:

- Adição
- Subtração
- Multiplicação
- Divisão
- Encerramento do programa

O projeto possui duas versões da calculadora:

calculadora.sh — versão desenvolvida em Shell Script.
Calculadora_Python.ipynb — versão desenvolvida em Python utilizando Jupyter Notebook/Google Colab.
## Tecnologias utilizadas
Bash / Shell Script
Python
Jupyter Notebook
Google Colab
GitHub
bc
Estrutura do projeto
Calculadora/
├── calculadora.sh
├── Calculadora_Python.ipynb
└── README.md
Como executar o Shell Script

Primeiramente, é necessário conceder permissão de execução ao arquivo:

chmod +x calculadora.sh

Depois, execute o programa:

./calculadora.sh
Funcionamento do Shell Script

O programa utiliza uma estrutura de repetição while true para manter o menu em execução até que o usuário escolha a opção 5.

O menu apresenta as seguintes opções:

==========================
       CALCULADORA
==========================
1 - Adição
2 - Subtração
3 - Multiplicação
4 - Divisão
5 - Sair
==========================

Quando o usuário escolhe a opção 5, o programa apresenta a mensagem:

Calculadora encerrada.

e utiliza o comando break para sair do loop.

## Operações no Shell Script

As operações são selecionadas utilizando a estrutura `case`.

### Adição

```bash
resultado=$(echo "$num1 + $num2" | bc)
```

A expressão é enviada para o comando `bc`, que realiza o cálculo.

### Subtração

```bash
resultado=$(echo "$num1 - $num2" | bc)
```

### Multiplicação

```bash
resultado=$(echo "$num1 * $num2" | bc)
```

### Divisão

A divisão utiliza:

```bash
resultado=$(echo "scale=2; $num1 / $num2" | bc)
```

O `scale=2` determina que o resultado da divisão será apresentado com duas casas decimais.

Antes de realizar a divisão, o programa verifica se o segundo número é zero:

```bash
if [ "$num2" == "0" ]; then
    echo "Erro: não é possível dividir por zero."
```

Essa verificação evita uma divisão inválida.

---

## Tratamento de opções inválidas

Caso o usuário escolha uma opção diferente das disponíveis, o programa utiliza o caso padrão da estrutura `case`:

```bash
*)
    echo "Opção inválida!"
    ;;
```

Assim, o programa informa ao usuário que a opção escolhida não é válida e retorna ao menu.

Tratamento de opções inválidas

Caso o usuário escolha uma opção diferente das disponíveis, o programa utiliza o caso padrão da estrutura case:

*)
    echo "Opção inválida!"
    ;;

Assim, o programa informa ao usuário que a opção escolhida não é válida e retorna ao menu.

Calculadora em Python

A versão em Python está disponível no arquivo:

Calculadora_Python.ipynb

O notebook foi desenvolvido utilizando funções para separar as operações matemáticas.

Função de adição
def adicao(num1, num2):
    return num1 + num2

Recebe dois números e retorna a soma.

Função de subtração
def subtracao(num1, num2):
    return num1 - num2

Recebe dois números e retorna a diferença.

Função de multiplicação
def multiplicacao(num1, num2):
    return num1 * num2

Recebe dois números e retorna o produto.

Função de divisão
def divisao(num1, num2):
    if num2 == 0:
        return None
    return num1 / num2

A função verifica primeiro se o segundo número é zero. Caso seja, retorna None, evitando que o programa tente realizar uma divisão inválida.

Menu da calculadora Python

Assim como a versão em Shell Script, a calculadora Python utiliza um menu em loop.

As opções são:

1 - Adição
2 - Subtração
3 - Multiplicação
4 - Divisão
5 - Sair

A estrutura while True permite que o usuário realize várias operações.

A opção 5 utiliza break para encerrar o programa.

Exemplo de execução
==========================
       CALCULADORA
==========================
1 - Adição
2 - Subtração
3 - Multiplicação
4 - Divisão
5 - Sair
==========================

Escolha uma opção: 1
Digite o primeiro número: 10
Digite o segundo número: 5
Resultado: 15

Exemplo de divisão:

Escolha uma opção: 4
Digite o primeiro número: 10
Digite o segundo número: 4
Resultado: 2.50

Exemplo de divisão por zero:

Escolha uma opção: 4
Digite o primeiro número: 10
Digite o segundo número: 0
Erro: não é possível dividir por zero.
Objetivo do projeto

O objetivo do projeto é praticar conceitos de programação e automação utilizando Shell Script e Python, além de desenvolver conhecimentos relacionados à documentação e ao versionamento de código utilizando GitHub.

Autor

Projeto desenvolvido como atividade acadêmica.
