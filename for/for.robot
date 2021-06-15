*** Settings ***
Documentation  Teste de Loops

*** Variables ***
@{FRUTAS}        banana   maça   uva  pera  laranja


*** Test Cases ***
# Teste do FOR IN RANGE (para intervalos)
#     Imprimir de 0 a 8
#     Imprimir de 10 a 20

Teste do FOR IN (para percorrer listas)
    Imprimir uma lista

*** Keywords ***
Imprimir de ${A} a ${B}
    FOR  ${numero}  IN RANGE  ${A}   ${B}
        Log To Console    Estou no número: ${numero}!
        ${RESULTADO}  Evaluate    ${numero}+10
        Log To Console    Número+10 = ${RESULTADO}
    END

Imprimir uma lista
    FOR  ${FRUTAS}  IN   @{FRUTAS}
        Log To Console    ${\n}A fruta da vez é: ${FRUTAS}
    END