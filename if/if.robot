*** Settings ***
Documentation  Teste de IF's - Tomada de decisões

*** Variables ***
@{PAISES}      Argentina  Chile  Brasil   Uruguai  Brasil  Brasil


*** Test Cases ***
Teste de IFs
    Imprimir apenas país Brasil

*** Keywords ***
Imprimir apenas país Brasil
    FOR  ${PAIS}  IN  @{PAISES}
        IF   '${PAIS}' == 'Brasil' 
            Log To Console    ${\n}Opa! Deu Brasil!
        ELSE
            Log To Console    ${\n}Ahh! ${pais} não é Brasil!
        END        
    END
