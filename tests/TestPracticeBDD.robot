*** Settings ***
Resource          ../resources/Resources.robot
Test Setup        Abrir navegador
Test Teardown     Fechar navegador


*** Variables ***
${BROWSER}    chrome
${URL}        http://automationpractice.com/index.php


*** Test Case ***
Cenario 03: Listar Produtos
    Dado que estou na pagina home do site
    Quando acessar a categoria "Women"
    E consultar a sub-categoria "Summer Dresses"
    Então a pagina deve exibir os produtos da sub-categoria "Summer Dresses"

##robot -d ./results tests\TestPracticeBDD.robot

Cenario 04: Adicionar Produtos no Carrinho
    Dado que estou na pagina home do site
    Quando pesquisar pelo produto "t-shirt"
    E adicionar o produto no carrinho
    Então a tela de carrinhos deve ser mostrada junto com os dados e valores do produto


Cenario 05: Remover Produtos
    Dado que estou na pagina home do site
    E existe um produto "t-shirt" adicionado no carrinho
    Quando excluo o produto do carrinho
    Então deve exibir a mensagem "Your shopping cart is empty."

Cenario 06: Adicionar Cliente
    Dado que estou na pagina home do site
    Quando eu solicitar para fazer o cadastro de novo cliente
    Então o cadastro deve ser efetuado com sucesso


*** KeyWords ***

Então a tela de carrinhos deve ser mostrada junto com os dados e valores do produto
    Clicar no botão "Proced to checkout"

E existe um produto "${PRODUTO}" adicionado no carrinho
    Quando pesquisar pelo produto "${PRODUTO}"
    E adicionar o produto no carrinho
    Clicar no botão "Proced to checkout"

Quando excluo o produto do carrinho
    Excluir produto do carrinho

Então deve exibir a mensagem "${MENSAGEM}"
    Conferir mensagem "${MENSAGEM}"

Quando eu solicitar para fazer o cadastro de novo cliente
    Clicar no "Sign in"
    Preencher o email
    Preencher campos de cadastro
    Clicar "Register"

Então o cadastro deve ser efetuado com sucesso
    Confirmar registro
