*** Settings ***
Test Setup    Abrir App
Test Teardown    TearDown
Resource    ..//base.robot


*** Test Cases ***
Teste Carrossel botao Pix 
    Dado que o usuario se encontra na tela inicial
    Quando o usuario acessa a area pix 
    Entao o usuario terá acesso a todas as funçoes de pix

Teste Carrossel botao pagar
    Dado que o usuario se encontra na tela inicial
    Quando o usuario usar o botao pagar
    Entao o usuario terá acesso a todas as opções de pagamento

Teste Carrossel botao transferir
    Dado que o usuario se encontra na tela inicial
    Quando o usuario usar o botao tranferir
    Entao o usuario terá acesso a area de transferencia

Teste carrossel botao deposito
    Dado que o usuario se encontra na tela inicial
    Quando o usuario usar o botao desposito
    Entao o usuario terá acesso a todas as opções de deposito


Teste carrossel botao recarga de celular
    Dado que o usuario se encontra na tela inicial
    Quando o usuario usar o botao recarga de celular
    Entao o usuario tera acesso a funcao de recarga de celular

Teste carrossel botao cobrar
    Dado que o usuario se encontra na tela inicial
    Quando o usuario usar o botao cobrar
    Entao o usuario tera acesso a funcao de cobrança

Teste Carrossel botao doação
    Dado que o usuario se encontra na tela inicial
    Entao o usuario pode visualizar o botao de doaçao

Teste Carrossel botao encontrar atalhos
    Dado que o usuario se encontra na tela inicial
    Entao o usuario pode visualizar o botao encontrar atalho