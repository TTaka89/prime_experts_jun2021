*** Settings ***
Documentation  Meu teste de variaveis

*** Variables ***
${MENSAGEM}      Hello world!!
${NUMERO}        ${10}
&{PESSOA}        nome=Thiago   sobrenome=Taka   idade=31
@{FRUTAS}        banana   maça   uva

*** Test Cases ***
Meu teste de impressão de mensagem no terminal
    Logar no meu terminal uma mensagem

Meu teste de impressão de um dicionario de PESSOA
    Logar no meu terminal uma PESSOA

Meu teste imprimindo uma lista de FRUTAS
    Logar no meu terminal uma lista


*** Keywords ***
Logar no meu terminal uma mensagem
    Log To Console    \n
    Log To Console    ${MENSAGEM}

Logar no meu terminal uma PESSOA
    Log To Console    \n
    Log To Console    ${PESSOA}
    Log To Console    \n
    Log To Console    ${PESSOA.nome}

Logar no meu terminal uma lista
    Log To Console    \n
    Log to console    ${FRUTAS}
    Log to console    ${FRUTAS[2]}
