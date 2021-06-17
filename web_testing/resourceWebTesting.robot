*** Settings ***
Documentation        Resource com as implementações das KW da suitWebTesting
Library              SeleniumLibrary

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
    Mouse Over    title=Women

Clicar na sub categoria "${SUBCATEGORIA}"
    

Conferir se os produtos da sub-categoria "${SUBCATEGORIA}" foram mostrados na página
    