*** Settings ***
Resource         ../resources/routes.resource
Test Teardown    Close Browser

*** Test Cases ***
Finalizar compra com dois produtos
    [Tags]    CHECKOUT    REGRESSIVO
    Dado que estou logado no site
    Quando adiciono os dois primeiros produtos ao carrinho
    E realizo o checkout
    Então visualizo a mensagem de confirmação de pedido 
 