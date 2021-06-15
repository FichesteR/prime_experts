*** Settings ***
Documentation    Testes de Loop (FOR)

*** Variables ***
@{FRUTAS}      banana    maça    laranja    uva    kiwi

*** Test Cases ***
Teste de FOR IN RANGE (para intervalos)
    Imprimir de 0 a 8
    Imprimir de 10 a 20
Teste do FOR IN (para percorrer listas)
    Imprimir uma listas


*** Keywords ***
Imprimir de ${A} a ${B}
    Log To Console    ${\n}
    FOR    ${numero}    IN RANGE    ${A}    ${B}        
        Log To Console    Estou no número:   ${numero}!
        ${RESULTADO}    Evaluate    ${numero}+10
        Log To Console    Número+10 = ${RESULTADO}
    END

Imprimir uma listas
    FOR    ${fruta}    IN    @{FRUTAS}
        Log To Console    ${\n}A fruta da vez é: ${fruta}
    END