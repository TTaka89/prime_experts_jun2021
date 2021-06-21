*** Settings ***
Documentation    Suite de testes WEB - Site: htt://automationpractice.com
Resource         resourceWebTesting.robot
Suite Setup      Abrir o navegador
Suite Teardown   Fechar o navegador

*** Test Cases ***
Caso de Teste 01: Pesquisar produto existente
    Acessar a página home do site
    Digitar o nome do produto "Blouse" no campo pesquisar
    Clicar no botão pesquisar
    Conferir se o produto "Blouse" foi listado na pesquisa
    Adcionar o produto "Blouse" no carrinho
    Conferir se o produto "Blouse" foi adicionado no carrinho

Caso de Teste 02: Pesquisar produto não existente
    Acessar a página home do site
    Digitar o nome do produto "MELANCIA" no campo de pesquisa
    Clicar no botão pesquisar
    Conferir mensagem "No results were found for your search "MELANCIA""

Caso de Teste 03: Listar Produtos
    Acessar a página home do site
    Passar o mouse por cima da categoria "Women" no menu principal superior de categorias
    Clicar na sub categoria "Summer Dresses"
    Conferir se os produtos da sub-categoria "Summer Dresses" foram mostrados na página

Caso de teste 04: Remover Produtos
    Acessar a página home do site
    Clicar no ícone carrinho de compras
    Clicar no botão de remoção de produtos do carrinho

Caso de Teste 05: Adicionar Cliente
    Acessar a página home do site
    Clicar em "Sign in"
    Informar um e-mail válido
    Clicar em "Criar conta"
    Preencher os dados obrigatórios
    Submeter cadastro
    Conferir se o cadastro foi efetuado com sucesso
