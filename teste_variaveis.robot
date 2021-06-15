*** Settings ***
Documentation  Meu teste de variaveis

*** Variables ***
${MENSAGEM}      Hello world!!
${NUMERO}        ${10}
&{PESSOA}        nome=Thiago   sobrenome=Taka   idade=31   altura=1.90   sexo=masculino   estadocivil=casado
@{FRUTAS}        banana   maça   uva  pera  laranja

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
    Log To Console    ${PESSOA.nome}
    Log To Console    \n
    Log To Console    ${PESSOA.sobrenome}
    Log To Console    \n
    Log To Console    ${PESSOA.idade}
    Log To Console    \n
    Log To Console    ${PESSOA.altura}
    Log To Console    \n
    Log To Console    ${PESSOA.sexo}
    Log To Console    \n
    Log To Console    ${PESSOA.estadocivil}

Logar no meu terminal uma lista
    Log To Console    \n
    Log to console    ${FRUTAS[0]}
    Log To Console    \n
    Log to console    ${FRUTAS[1]}
    Log To Console    \n
    Log to console    ${FRUTAS[2]}
    Log To Console    \n
    Log to console    ${FRUTAS[3]}
    Log To Console    \n
    Log to console    ${FRUTAS[4]}
