*** Settings ***
Library   SeleniumLibrary


*** Variables ***
${BROWSER}    chrome
${URL}        http://automationpractice.com/index.php


*** KeyWords ***
Abrir navegador
    Open Browser      about:blank      ${BROWSER}

Fechar navegador
    Close Browser

Dado que estou na pagina home do site
    Go to                 ${URL}
    Title Should be       My Store

Quando acessar a categoria "${CATEGORIA}"
    Wait Until Element Is Visible       xpath=//*[@id="block_top_menu"]//a[@title="${CATEGORIA}"]
    Mouse Over    xpath=//*[@id="block_top_menu"]//a[@title="${CATEGORIA}"]

E consultar a sub-categoria "${SUBCATEGORIA}"
    Wait Until Element Is Visible       xpath=//*[@id="block_top_menu"]//a[@title="${SUBCATEGORIA}"]
    Click Element                       xpath=//*[@id="block_top_menu"]//a[@title="${SUBCATEGORIA}"]

Então a pagina deve exibir os produtos da sub-categoria "${SUBCATEGORIA}"
    Wait Until Element is Visible       xpath=//span[@class="cat-name"]

    Wait Until Element is Visible             xpath=//span[@class="heading-counter"]

Quando pesquisar pelo produto "${PRODUTO}"
    Input Text      name=search_query      ${PRODUTO}
    Click Element    name=submit_search

E adicionar o produto no carrinho
    Wait Until Element Is Visible    xpath=//img[@src="http://automationpractice.com/img/p/1/1-home_default.jpg"]
    Click Image    xpath=//img[@src="http://automationpractice.com/img/p/1/1-home_default.jpg"]
    Wait Until Element Is Visible     xpath=//*[@name="Submit"]
    Click Element     //*[@name="Submit"]

Clicar no botão "Proced to checkout"
    Wait Until Element Is Visible    xpath=//*[@title="Proceed to checkout"]
    Click Element     xpath=//*[@title="Proceed to checkout"]

Excluir produto do carrinho
    Wait Until Element Is Visible   xpath=//*[@class="icon-trash"]
    Click Element    xpath=//*[@class="icon-trash"]

Conferir mensagem "${MENSAGEM}"
    Wait Until Element Is Visible    xpath=//*[text()="Your shopping cart is empty."]
    Element Text Should Be    //*[text()="Your shopping cart is empty."]    ${MENSAGEM}
