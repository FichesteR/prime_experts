*** Settings ***
Documentation    Exercicio 3

*** Variables ***
@{PAISES}      Canadá    Alemanhã    Suécia    Finlândia    Japão

*** Test Cases ***
Teste de FOR IN RANGE (para intervalos)
    Imprimir de 1 a 10

Teste do FOR IN (para percorrer listas)
    Imprimir uma listas

*** Keywords ***
Imprimir de ${A} a ${B}
    Log To Console    ${\n}
    FOR    ${numero}    IN RANGE    ${A}    ${B}+1        
        Log To Console    Estou no número:${numero}
    END

Imprimir uma listas
    FOR    ${pais}    IN    @{PAISES}
        Log To Console    ${\n}${pais}
    END