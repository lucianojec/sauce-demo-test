*** Settings *** 
 
Documentation    Teste para criar arquivo de rotas

Library     SeleniumLibrary    run_on_failure=Capture Page Screenshot
Library     Screenshot
Library     Process
Library     Collections
Library     Process

Resource    config.robot

Resource    ../pages/login.robot
Resource    ../pages/checkout.robot

Resource    ../steps/login.robot
Resource    ../steps/checkout.robot