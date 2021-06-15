*** Settings ***
Documentation    Primeiro Exercício

*** Variables ***
${MENSAGEM}    Dicionário do Primeiro Exercício
&{PESSOA}      nome=Vinicius    sobrenome=Planellis    idade=28    cidade=Dois Vizinhos    uf=PR    altura=1.70 m
@{FRUTAS}      banana    maça    laranja    uva    kiwi

*** Test Cases ***

mensagem
    inicial

pessoa
    dicionario

lista
    lista

*** Keywords ***
inicial
    Log To Console    ${\n}

dicionario
    Log To Console    ${\n}
FOR Log    ${PESSOA}    IN RANGE    1    6
    Log   ${PESSOA}
END

lista
    Log To Console    ${\n}
FOR    ${i}    IN    @{FRUTAS}
    Log    Minha fruta é: ${ITEM}
END