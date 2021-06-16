*** Settings ***
Documentation  Exercício for

*** Variables ***
@{Paises}        Brasil  Alemanha  EUA  Emirados Arabes  Canada


*** Test Cases ***
Imprimir frase
    Imprimir frase de 0 a 10

Imprimir Paises
    Imprimir uma lista de Paises

*** Keywords ***
Imprimir frase de ${A} a ${B}
    FOR  ${numero}  IN RANGE  ${A}   ${B}+1
        Log To Console    ${\n}Estou no número: ${numero}!
    END

Imprimir uma lista de Paises
    FOR  ${Paises}  IN   @{Paises}
        Log To Console    ${\n}A fruta da vez é: ${Paises}
    END