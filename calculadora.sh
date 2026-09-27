#!/bin/bash

while true; do
    echo "=========================="
    echo "       CALCULADORA"
    echo "=========================="
    echo "1 - Adição"
    echo "2 - Subtração"
    echo "3 - Multiplicação"
    echo "4 - Divisão"
    echo "5 - Sair"
    echo "=========================="

    read -p "Escolha uma opção: " opcao

    if [ "$opcao" -eq 5 ]; then
        echo "Calculadora encerrada."
        break
    fi

    read -p "Digite o primeiro número: " num1
    read -p "Digite o segundo número: " num2

    case $opcao in
        1)
            resultado=$(echo "$num1 + $num2" | bc)
            echo "Resultado: $resultado"
            ;;
        2)
            resultado=$(echo "$num1 - $num2" | bc)
            echo "Resultado: $resultado"
            ;;
        3)
            resultado=$(echo "$num1 * $num2" | bc)
            echo "Resultado: $resultado"
            ;;
        4)
            if [ "$num2" == "0" ]; then
                echo "Erro: não é possível dividir por zero."
            else
                resultado=$(echo "scale=2; $num1 / $num2" | bc)
                echo "Resultado: $resultado"
            fi
            ;;
        *)
            echo "Opção inválida!"
            ;;
    esac

    echo
done
