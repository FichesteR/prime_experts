*** Settings ***
Documentation    Testes para criar KWs que recebam argumentos e retornam um resultado

*** Test Cases ***

Teste de somar dois números
    ${RESULTADO_SOMA}    Somar dois números    1    2
    Log To Console    O resultado da soma é: ${RESULTADO_SOMA}
    
    ${RESULTADO_SOMA}    Somar dois números    3    4
    Log To Console    O resultado da soma é: ${RESULTADO_SOMA}

Teste de somar dois números embutidos
    ${RESULTADO_SOMA}    Somar os números "2" e "5"
    Log To Console    O resultado da soma é: ${RESULTADO_SOMA}
    
*** Keywords ***
Somar dois números
    [Arguments]    ${NUM1}    ${NUM2}
    Log To Console    ${\n}A soma dos dois números é: ${NUM1}+${NUM2}
    ${RESULTADO}    Evaluate    ${NUM1}+${NUM2}
    Log To Console    O resultado é: ${RESULTADO}
    [Return]    ${RESULTADO}

Somar os números "${NUM1}" e "${NUM2}"
    Log To Console    ${\n}A soma dos dois números embutidos é: ${NUM1}+${NUM2}
    ${RESULTADO}    Evaluate    ${NUM1}+${NUM2}
    Log To Console    O resultado é: ${RESULTADO}
    [Return]    ${RESULTADO}
