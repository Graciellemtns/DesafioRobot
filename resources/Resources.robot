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
