*** Settings ***
Test Setup    Abrir App
Test Teardown    TearDown
Resource    ..//base.robot


*** Test Cases ***
Validar campo Conta
    Dado que o usuario se encontra na tela inicial
    Quando o cliente acessar area conta
    Entao o usuario podera ver seu saldo e dinheiro guardado atuais
    E ver todas as opçoes de tranferencia
    E ver seu histórico de transferência 


Validar botao planos para o futuro
    Dado que o usuario se encontra na tela inicial
    Entao o usuario pode visualizar o botao planos para o futuro



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


