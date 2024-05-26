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

Validar botao meus cartoes
    Dado que o usuario se encontra na tela inicial
    Entao o usuario pode visualizar o botao meus cartoes

Validar campo disponibilidade de emprestimo
    Dado que o usuario se encontra na tela inicial
    Quando o usuario acessar o botao emprestimo
    Entao o usuario terá acesso area de emprestimos

Validar botao planos para o futuro
    Dado que o usuario se encontra na tela inicial
    Entao o usuario pode visualizar o botao planos para o futuro

Validar botao cartão de credito
    Dado que o usuario se encontra na tela inicial
    Quando o usuario acessar o botao cartao de credito
    Entao o usuario terá acesso a todas as funçoes do cartao 
    E ver o historico de compras

Validar botao emprestimo
    Dado que o usuario se encontra na tela inicial
    Quando acessar o campo emprestimo
    Entao o usuario terá acesso area de emprestimos

Validar botao investimentos
    Dado que o usuario se encontra na tela inicial
    Quando acessar o campo investimentos
    Entao o usuario terá acesso a area de emprestimos

Validar botao seguro de vida
    Dado que o usuario se encontra na tela inicial
    Entao o usuario pode visualizar o botao de seguro de vida

Validar botao whatsapp
    Dado que o usuario se encontra na tela inicial
    Entao o usuario pode visualizar o botao whatsapp
Validar botao indicar amigos
    Dado que o usuario se encontra na tela inicial
    Quando o usuario usar o botao de indicar amigos
    Entao o usuario terá acesso a area de indicaçoes

Validar atalho convidar inicio
    Dado que o usuario se encontra na tela inicial
    Quando o usuario acessar o atalho de convidar amigos
    Entao o usuario terá acesso a area de indicaçoes
