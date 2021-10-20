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
    #E consultar a sub-categoria "Summer Dresses"
  #  Então a pagina deve exibir os produtos da sub-categoria "Summer Dresses"
