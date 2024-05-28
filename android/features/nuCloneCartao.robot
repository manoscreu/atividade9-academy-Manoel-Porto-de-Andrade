*** Settings ***
Test Setup    Abrir App
Test Teardown    TearDown
Resource    ..//base.robot


*** Test Cases ***

Validar botao cartão de credito
    Dado que o usuario se encontra na tela inicial
    Quando o usuario acessar o botao cartao de credito
    Entao o usuario terá acesso a todas as funçoes do cartao 
    E ver o historico de compras

Validar card meus cartoes
    Dado que o usuario se encontra na tela inicial
    Entao o usuario pode visualizar o botao meus cartoes
