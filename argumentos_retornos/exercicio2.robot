*** Settings ***
Documentation    Exercicio para criar KWs que recebam argumentos e retornam um resultado

*** Test Cases ***

Formar email
    ${EMAIL}    Nome "Vinicius" Sobrenome "Planellis" Idade "28"
    Log To Console    O email é: ${EMAIL}
    
*** Keywords ***

Nome "${NOME}" Sobrenome "${SOBRENOME}" Idade "${IDADE}"
    Log To Console    ${\n}O e-mail é: ${NOME}_${SOBRENOME}_${IDADE}@robot.com
    ${EMAIL}    Set Variable    ${NOME}_${SOBRENOME}_${IDADE}@robot.com
    Log To Console    O seu novo e-mail é: ${EMAIL}@robot.com
    [Return]    ${EMAIL}