*** Settings ***
Documentation        Resource com as implementações das KW da suitWebTesting
Library              SeleniumLibrary
Library              String

*** Variables ***
${URL}      http://automationpractice.com/index.php

*** Keywords ***
## ---- SETUP
Abrir o navegador
    Open Browser  browser=chrome

## ---- TEARDOWN
Fechar o navegador
#    Close Browser

## ---- STEPS
Acessar a página home do site
    Go To    ${URL}
    Wait Until Element Is Visible    xpath=//img[contains(@class,'logo img-responsive')]

Digitar o nome do produto "${PRODUTO}" no campo pesquisar
    Input Text     xpath=//input[@class='search_query form-control ac_input'][contains(@id,'top')]    ${PRODUTO}

Clicar no botão pesquisar
    Click Button    name=submit_search
    
Conferir se o produto "${PRODUTO}" foi listado na pesquisa
    Wait Until Element Is Visible    xpath=//img[contains(@alt,'Blouse')]

Adcionar o produto "${PRODUTO}" no carrinho
    Wait Until Element Is Visible    xpath=//span[contains(.,'Add to cart')]
    Click Element     xpath=//span[contains(.,'Add to cart')]
    Wait Until Element Is Visible    xpath=//span[contains(.,'Proceed to checkout')]
    Click Element    xpath=//span[contains(.,'Proceed to checkout')]

Conferir se o produto "${PRODUTO}" foi adicionado no carrinho
    Wait Until Element Is Visible    xpath=(//a[contains(.,'${PRODUTO}')])[4]

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Input Text     xpath=//input[@class='search_query form-control ac_input'][contains(@id,'top')]    ${PRODUTO}

Conferir mensagem "${MENSAGEM}"
    Wait Until Element Is Visible    //p[@class='alert alert-warning']
    Element Should Contain    xpath=//p[@class='alert alert-warning']    ${MENSAGEM}    
    
Passar o mouse por cima da categoria "${CATEGORIA}" no menu principal superior de categorias
    Mouse Over    xpath=//a[contains(@title,'Women')]

Clicar na sub categoria "${SUBCATEGORIA}"
    Click Element   xpath=(//a[contains(@title,'Summer Dresses')])[1]

Conferir se os produtos da sub-categoria "${SUBCATEGORIA}" foram mostrados na página
    Wait Until Element Is Visible   xpath=//span[@class='cat-name']
    Element Should Contain          xpath=//span[@class='category-name']    ${SUBCATEGORIA}

Clicar em "Sign in"
    Click Element    xpath=//a[@class='login']

Informar um e-mail válido
    Wait Until Element Is Visible   id=email_create
    ${EMAIL}                        Generate Random String
    Input Text                      id=email_create  ${EMAIL}@teste.com

Clicar em "Criar conta"
    Click Element    xpath=//span[contains(.,'Create an account')]

Preencher os dados obrigatórios
    Sleep    2s
    Click Element                   xpath=//label[@for='id_gender1'][contains(.,'Mr.')]
    Input Text                      name=customer_firstname  Thiago
    Input Text                      name=customer_lastname   dos Santos
    Input Text                      name=passwd              11111
    Input Text                      name=firstname           Tabaete
    Input Text                      name=lastname            tabaete2
    Input Text                      name=address1            Rua teste
    Input Text                      name=city                New York
    Select From List By Value       name=id_state            32
    Input Text                      name=postcode            00000
    Select From List By Value       name=id_country          21
    Input Text                      name=phone_mobile        9999999

Submeter cadastro
    Click Element    xpath=//span[contains(.,'Register')]
    Element Text Should Be          //*[@id="center_column"]/p[@class="info-account"]   Welcome to your account. Here you can manage all of your personal information and orders.

