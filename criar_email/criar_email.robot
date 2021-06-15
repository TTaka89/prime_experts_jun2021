*** Settings ***
Documentation  Teste de criar e-mail nome_sobrenome_idade@robot.com

*** Variables ***
&{PESSOA}        nome=thiago   sobrenome=taka   idade=31 

*** Test Cases ***
Criar um email com nome e sobrenome
    ${EMAIL}      Criar e-mail com nome    ${PESSOA.nome}    ${PESSOA.sobrenome}    ${PESSOA.idade}
    Log To Console   O email criado é: ${EMAIL}


*** Keywords ***
Criar e-mail com nome
    [Arguments]   ${NOME}  ${SOBRENOME}  ${IDADE}
    [Return]    ${NOME}${SOBRENOME}${IDADE}@robot.com


