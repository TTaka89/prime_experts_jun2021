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
Acessar a página home do site Automation Practice
    Go To    ${URL}
    Wait Until Element Is Visible    locator

Digitar o nome do produto "${PRODUTO}" no campo pesquisar



Clicar no botão pesquisar



Conferir se o produto "Blouse" foi listado na pesquisa
    