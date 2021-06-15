*** Settings ***
Documentation    Meu teste de variáveis

*** Variables ***
${MENSAGEM}    Hello World!!!
${NUMERO}      &{93}

*** Test Cases ***

Meu teste de impressão no terminal
    Logar no meu terminal uma MENSAGEM

*** Keywords ***
Logar no meu terminal uma MENSAGEM
    Log To Console    ${\n}
    Log To Console    ${MENSAGEM}