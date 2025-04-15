*** Settings ***
Resource         ../resources/routes.resource
Test Teardown    Close Browser

*** Test Cases ***
Login com usuário válido
    [Tags]    LOGIN    REGRESSIVO
    Dado que acesso o site do SauceDemo
    Quando realizo login com credenciais válidas
    Então visualizo a página de produtos
 