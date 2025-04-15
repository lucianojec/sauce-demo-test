*** Settings ***
Resource    ../Resources/routes.resource

*** Keywords ***
Dado que estou logado no site
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Input Text    id=user-name    ${USERNAME}
    Input Text    id=password     ${PASSWORD}
    Click Button  id=login-button
    Wait Until Element Is Visible    xpath=//span[text()='Products']    

Quando adiciono os dois primeiros produtos ao carrinho
    Wait Until Element Is Visible    ${ADD_ITEM_1}    timeout=5s
    Click Button    ${ADD_ITEM_1}
    Wait Until Element Is Visible    ${ADD_ITEM_2}    timeout=5s
    Click Button    ${ADD_ITEM_2}
    Wait Until Element Is Visible    ${CART_ICON}     timeout=5s
    Click Element    ${CART_ICON}    

E realizo o checkout
    Click Button    ${BUTTON_CHECKOUT}
    Input Text      ${FIRST_NAME}    Teste
    Input Text      ${LAST_NAME}     Final
    Input Text      ${POSTAL_CODE}   12345
    Click Button    ${BUTTON_CONTINUE}
    Click Button    ${BUTTON_FINISH}

Então visualizo a mensagem de confirmação de pedido
    Wait Until Element Is Visible    ${ORDER_CONFIRMATION}
    Element Should Contain    ${ORDER_CONFIRMATION}    Thank you for your order!
