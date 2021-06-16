*** Settings ***
Documentation    Teste para IFs - Tomada de Decisões

*** Variables ***

*** Test Cases ***
Teste de IFs
    condicao 1 a 10
    
*** Keywords ***
condicao ${A} a ${B}
    Log To Console    ${\n}
    FOR    ${cont}    IN RANGE  ${A}    ${B}+1
        #IF    '${cont}' == '5' or '${cont}' == '8' <-- PODE SER ASSIM TBM
        IF    '${cont}' in '(5,8)'   
            Log To Console    Estou no número: ${cont}
        END
    END
    