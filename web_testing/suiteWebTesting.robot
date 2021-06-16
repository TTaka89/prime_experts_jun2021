*** Settings ***
Documentation    Suite de testes WEB - Site: htt://automationpractice.com
Resource         resourceWebTesting.robot
Suite Setup      Abrir o navegador
Suite Teardown   Fechar o navegador

*** Test Cases ***
Caso de Teste 01: Pesquisar produto existente
    Acessar a página home do site Automation Practice
    Digitar o nome do produto "Blouse" no campo pesquisar
    Clicar no botão pesquisar
    Conferir se o produto "Blouse" foi listado na pesquisa
    Adcionar o produto "Blouse" no carrinho
    Conferir se o produto "Blouse" foi adicionado no carrinho
