*** Settings ***
Documentation  Testes de argumentos que trazem retornos como resultado
Suite Setup        KW para executar no Setup da Suite
Suite Teardown     KW para executar no Teardown da Suite
Test Setup         KW para executar no Setup de cada Teste
Test Teardown      KW para executar no Teardown de cada Teste


*** Test Cases ***
Teste de somar dois números
    ${RESULTADO_SOMA}    Somar dois números      1       2
    Log To Console    O resultado da soma é: ${RESULTADO_SOMA}
    ${RESULTADO_SOMA}    Somar dois números      3       4
    Log To Console    O resultado da soma é: ${RESULTADO_SOMA}

Teste de somar dois números embutidos
    ${RESULTADO_SOMA}    Somar os números "3" e "4"
    Log To Console    O resultado da soma é: ${RESULTADO_SOMA}

*** Keywords ***
KW para executar no Setup da Suite
    Log To Console   Essa KW foi executada antes de começar a Suite!
KW para executar no Setup de cada Teste
    Log To Console   Essa KW foi executada antes de começar esse Teste!
KW para executar no Teardown da Suite
    Log To Console   Essa KW foi executada após a Suite!
KW para executar no Teardown de cada Teste
    Log To Console   Essa KW foi executada após cada Teste!




Somar dois números
     [Arguments]    ${NUM_A}    ${NUM_B}
    Log To Console    ${\n}Estou somando os números: ${NUM_A}+${NUM_B}
    ${RESULTADO}   Evaluate    ${NUM_A}+${NUM_B}
    Log To Console    O resultado é: ${RESULTADO}
    [Return]    ${RESULTADO}

Somar os números "${NUM_A}" e "${NUM_B}"
    Log To Console    ${\n}Estou somando os números embutidos: ${NUM_A}+${NUM_B}
    ${RESULTADO}   Evaluate    ${NUM_A}+${NUM_B}
    Log To Console    O resultado é: ${RESULTADO}
    [Return]     ${RESULTADO}