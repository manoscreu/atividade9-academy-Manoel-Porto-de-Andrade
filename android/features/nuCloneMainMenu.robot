*** Settings ***
Test Setup    Abrir App
Test Teardown    TearDown
Resource    ..//base.robot


*** Test Cases ***
Validar campo Conta
    Dado que o usuario se encontra na tela inicial
    Quando o cliente acessar area conta
    Entao o usuario podera ver seu saldo atual
    E ver seu histórico de transferência


Teste acessar area pix
    Dado que o usuario se encontra na tela inicial
    Quando o usuario acessa a area pix 
    Entao o usuario terá acesso a todas as funçoes de pix
    