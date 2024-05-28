*** Settings ***
Test Setup    Abrir App
Test Teardown    TearDown
Resource    ..//base.robot


*** Test Cases ***

Validar botao indicar amigos
    Dado que o usuario se encontra na tela inicial
    Quando o usuario usar o botao de indicar amigos
    Entao o usuario terá acesso a area de indicaçoes

Validar atalho convidar amigo widget
    Dado que o usuario se encontra na tela inicial
    Quando o usuario acessar o atalho de convidar amigos
    Entao o usuario terá acesso a area de indicaçoes
