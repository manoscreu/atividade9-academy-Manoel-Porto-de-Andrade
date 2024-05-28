*** Settings ***
Test Setup    Abrir App
Test Teardown    TearDown
Resource    ..//base.robot


*** Test Cases ***
Teste Acessar area conta
    Dado que o usuario se encontra na tela inicial
    Quando o cliente acessar area conta
    Entao o usuario podera ver todas informaçoes de saldo de sua conta
    E ver todas as opçoes de tranferencia
    E ver seu histórico de transferência 

Teste botao depositar area conta
    Dado que o usuario se encontra na conta
    Quando o usuario acessar o botao depositar
    Entao o usuario terá acesso a todas as opções de deposito

Teste botao pagar area conta
    Dado que o usuario se encontra na conta
    Quando o usuario acessar o botao pagar
    Entao o usuario terá acesso a todas as opções de pagamento

Teste botao transferir area conta
    Dado que o usuario se encontra na conta
    Quando o usuario acessar o botao transferir
    Entao o usuario terá acesso a area de transferencia
    
Teste botao emprestimo area conta
    Dado que o usuario se encontra na conta
    Quando o usuario acessar o botao emprestimos
    Entao o usuario terá acesso area de emprestimos

Teste botao cobrar area conta
    Dado que o usuario se encontra na conta
    Quando o usuario acessar o botao cobrar
    Entao o usuario tera acesso a funcao de cobrança
