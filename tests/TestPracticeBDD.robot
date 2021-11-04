*** Settings ***
Resource          ../resources/Resources.robot
Test Setup        Abrir navegador
Test Teardown     Fechar navegador


*** Variables ***
${BROWSER}    chrome
${URL}        http://automationpractice.com/index.php


*** Test Case ***
Caso de Teste 03: Listar Produtos
    Dado que estou na pagina home do site
    Quando acessar a categoria "Women"
    E consultar a sub-categoria "Summer Dresses"
    Então a pagina deve exibir os produtos da sub-categoria "Summer Dresses"

##robot -d ./results tests\TestPracticeBDD.robot

Caso de Teste 04: Adicionar Produtos no Carrinho
    Dado que estou na pagina home do site
    Quando pesquisar pelo produto "t-shirt"
    E adicionar o produto no carrinho
    Então a tela de carrinhos deve ser mostrada junto com os dados e valores do produto


*** KeyWords ***

Então a tela de carrinhos deve ser mostrada junto com os dados e valores do produto
    Clicar no botão "Proced to checkout"
