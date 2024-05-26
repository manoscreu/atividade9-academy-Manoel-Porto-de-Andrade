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


