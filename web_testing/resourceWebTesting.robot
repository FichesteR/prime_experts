*** Settings ***
Documentation    Resource com as implementações das KWs da suiteWebTesting para o exercicío prático e desafio
Library          SeleniumLibrary

*** Variables ***
${URL}           http://automationpractice.com

*** Keywords ***
## ---- SETUP
Abrir o Navegador
    Open Browser                     browser=chrome

## ---- TEARDOWN
Fechar o Navegador
    Close Browser    

## ---- STEP 1
Acessar a página home do site Automation Practice
    Go To                            ${URL}
    Sleep                            3s
    Wait Until Element Is Visible    xpath=//img[contains(@class,'logo img-responsive')]

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Input Text                       id=search_query_top    ${PRODUTO}
    
Clicar no botão pesquisar1
    Click Button                     name=submit_search

Conferir se o produto "${PRODUTO}" foi listado no site
    Wait Until Element Is Visible    xpath=//img[contains(@alt,'${PRODUTO}')]
    
Adicionar o produto "${PRODUTO}" no carrinho
    Mouse Over                       xpath=(//a[@class='product-name'][contains(.,'${PRODUTO}')])[2]
    Click Element                    xpath=//span[contains(.,'Add to cart')]
    Wait Until Element Is Visible    xpath=//span[contains(.,'Proceed to checkout')]
    Click Element                    xpath=//span[contains(.,'Proceed to checkout')]

Conferir se o produto "${PRODUTO}" foi adicionado no carrinho
    Wait Until Element Is Visible    xpath=(//a[contains(.,'${PRODUTO}')])[4]

## ---- STEPS 2
Acessar a página home do site Automation
    Go To                            ${URL}
    Sleep                            3s
    Wait Until Element Is Visible    xpath=//img[contains(@class,'logo img-responsive')]

Digitar o nome do produto "${PRODUTO}" na pesquisa
    Input Text                       id=search_query_top    ${PRODUTO}
    
Clicar no botão pesquisar2
    Click Button                     name=submit_search

Conferir se o produto "${PRODUTO}" foi listado
    Wait Until Element Is Visible    xpath=//p[contains(.,'No results were found for your search "itemNãoExistente"')]

## ---- STEPS 3
Acessar a página home do site
    Go To                            ${URL}
    Sleep                            3s
    Wait Until Element Is Visible    xpath=//img[contains(@class,'logo img-responsive')]

Passar o mouse por cima da categoria "Women" no menu principal superior de categorias
    Mouse Over                       xpath=//a[contains(@title,'Women')]
 
Clicar na subcategoria "Summer Dresses"
    Click Element                    xpath=(//a[contains(@title,'Summer Dresses')])[1]

Conferir se os produtos da subcategoria "${PRODUTO}" foram mostrados na página
    Wait Until Element Is Visible    xpath=//span[@class='cat-name'][contains(.,'Summer Dresses')]

## ---- STEPS 4
Acessar a página inicial
    Go To                            ${URL}
    Sleep                            3s
    Wait Until Element Is Visible    xpath=//img[contains(@class,'logo img-responsive')]

Clicar em "Sign in"
    Click Element                    xpath=//a[@class='login'][contains(.,'Sign in')]

Informar um e-mail válido
    Wait Until Element Is Visible    xpath=//span[contains(.,'Create an account')]
    Input Text                       id=email_create    planellis@prime.com.br

Clicar em "Create an account"
    Click Element                    xpath=//span[contains(.,'Create an account')]

Preencher os dados obrigatórios
    Sleep                            3s
    Input Text                       id=customer_firstname     Iago
    Input Text                       id=customer_lastname      Ferreira 
    Input Text                       id=passwd                 12345
    Input Text                       id=address1               Rua Nelson Mandela
    Input Text                       id=city                   Dois Vizinhos
    Select From List By Label        id=id_state               Florida
    Input Text                       id=postcode               54321
    Input Text                       id=phone                  46999999999

Submeter cadastro
    Click Element                    xpath=//span[contains(.,'Register')]

Conferir se o cadastro foi efetuado com sucesso
    Wait Until Element Is Visible    xpath=//p[contains(@class,'info-account')]
    Wait Until Element Contains      xpath=//a[@class='logout'][contains(.,'Sign out')]    Sign out