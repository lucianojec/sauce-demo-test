*** Settings ***
Resource    ../Resources/routes.resource

*** Keywords ***
Dado que acesso o site do SauceDemo
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    ${INPUT_USERNAME}
    Capture Page Screenshot

Quando realizo login com credenciais válidas
    Input Text    ${INPUT_USERNAME}    ${USERNAME}
    Input Text    ${INPUT_PASSWORD}    ${PASSWORD}
    Click Button  ${BUTTON_LOGIN}
    Wait Until Element Is Visible    ${TITULO_PRODUTOS}

Então visualizo a página de produtos
    Element Should Be Visible    ${TITULO_PRODUTOS}
    Capture Page Screenshot
 