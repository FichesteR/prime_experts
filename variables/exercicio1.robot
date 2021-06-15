*** Settings ***
Documentation    Primeiro Exercício

*** Variables ***
&{PESSOA}      nome=Vinicius    sobrenome=Planellis    idade=28    cidade=Dois Vizinhos    uf=PR    altura=1.70 m
@{FRUTAS}      banana    maça    laranja    uva    kiwi

*** Test Cases ***

pessoa
    dicionario

lista
    lista

*** Keywords ***

dicionario
    Log To Console    ${\n}
    Log To Console    ${PESSOA.nome} 
    Log To Console    ${\n}
    Log To Console    ${PESSOA.sobrenome} 
    Log To Console    ${\n}
    Log To Console    ${PESSOA.idade} anos
    Log To Console    ${\n} 
    Log To Console    ${PESSOA.cidade}
    Log To Console    ${\n}
    Log To Console    ${PESSOA.uf} 
    Log To Console    ${\n}
    Log To Console    ${PESSOA.altura}
    
lista
    Log To Console    ${\n}
    Log To Console    ${FRUTAS[0]}
    Log To Console    ${FRUTAS[1]}
    Log To Console    ${FRUTAS[2]}
    Log To Console    ${FRUTAS[3]}
    Log To Console    ${FRUTAS[4]}