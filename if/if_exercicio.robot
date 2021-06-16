*** Settings ***
Documentation  Exercício de IF's - Tomada de decisões

*** Test Cases ***
Teste exercício de For e IFs  
    Imprimir apenas 5 ou 8 em 0 a 10

*** Keywords ***
Imprimir apenas 5 ou 8 em ${A} a ${B}
    FOR  ${NUM}  IN RANGE  ${A}   ${B}+1
        IF  ${NUM} in (5,8)
        # IF   ${NUM} == ${5}  or  ${8}
             Log To Console    ${\n}Estou no número: ${NUM}
        # ELSE IF  ${NUM} == ${8}
        #     Log To Console    ${\n}Estou no número: ${NUM}
        END        
    END
