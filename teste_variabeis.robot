*** Settings ***
Documentation  Meu teste de variaveis

*** Variables ***
${MENSAGEM}      Hello world!!
${NUMERO}        ${10}

*** Test Cases ***
Meu teste de impressão de mensagem no terminal
    Logar no meu terminal uma mensagem

*** Keywords ***
Logar no meu terminal uma mensagem
    Log    ${MENSAGEM}
