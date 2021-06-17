*** Settings ***
Documentation    Resource com as implementações das KWs da suiteWebTesting
Library          SeleniumLibrary

*** Variables ***
${URL}    http://automationpractice.com

*** Keywords ***
## ---- SETUP
Abrir o Navegador
    Open Browser    browser=chrome

## ---- TEARDOWN
Fechar o Navegador
    Close Browser    

## ---- STEPS
Acessar a página home do site Automation Practice
    Go To    ${URL}
    Wait Until Element Is Visible    xpath=//img[contains(@class,'logo img-responsive')]
 
Clicar na categoria do Menu "${MENU}"
    Click Element    xpath=(//a[@class='sf-with-ul'])[1]
    Click Element    xpath=(//li[contains(.,'Casual Dresses')])[3]

Conferir se o produto "${PRODUTO}" foi listado no site
    Wait Until Element Is Visible    xpath=(//div[contains(.,'Showing 1 - 3 of 3 items')])[8]