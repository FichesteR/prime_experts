*** Settings ***
Documentation    Meu teste de variáveis

*** Variables ***
${MENSAGEM}    Hello World!!!
&{PESSOA}      nome=Vinicius    sobrenome=Planellis    idade=28
@{FRUTAS}      banana           maça                   laranja

*** Test Cases ***
Meu teste de impressão no terminal
    Logar no meu terminal uma MENSAGEM

Meu teste de impressão dicionário de PESSOA
    Logar no meu terminal uma PESSOA

Meu teste de impressão lista de FRUTAS
    Logar no meu terminal uma LISTA

*** Keywords ***
Logar no meu terminal uma MENSAGEM
    Log To Console    ${\n}
    Log To Console    ${MENSAGEM}

Logar no meu terminal uma PESSOA
    Log To Console    ${\n}
    Log To Console    ${PESSOA}
    Log To Console    ${\n}
    Log To Console    ${PESSOA.nome} ${PESSOA.sobrenome} ${PESSOA.idade} anos!
    
Logar no meu terminal uma LISTA
    ##Declaro localmente uma nova variavel
    ${outra_fruta}        Set Variable    Abacaxi
    ##Declaro uma nova variavel em escopo de teste
    Set Test Variable     ${nova_fruta}    morango
    Log To Console        ${\n}
    Log To Console        ${FRUTAS} ${nova_fruta}
    Log Many              ${FRUTAS}
    Log To Console        ${nova_fruta}-${outra_fruta}