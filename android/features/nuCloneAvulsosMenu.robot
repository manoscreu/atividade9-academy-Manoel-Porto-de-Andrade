*** Settings ***
Test Setup    Abrir App
Test Teardown    TearDown
Resource    ..//base.robot


*** Test Cases ***
Validar botao esconder valores
    Dado que o usuario se encontra na tela inicial
    E os valores da conta e fatura estao disponíveis para visualizar
    Quando o usuario usar o botao de esconder valores
    Entao o sistema deve esconder os valores 

Validar card planos para o futuro
    Dado que o usuario se encontra na tela inicial
    Quando o usuario rolar os cards ate o card planos para o futuro 
    Entao o usuario pode visualizar o botao planos para o futuro

Validar botao investimentos
    Dado que o usuario se encontra na tela inicial
    Quando acessar o campo investimentos
    Entao o usuario terá acesso a area de emprestimos

Validar botao seguro de vida
    Dado que o usuario se encontra na tela inicial
    Quando o usuario rolar a pagina ate o campo seguro de vida
    Entao o usuario pode visualizar o botao de seguro de vida
    

Validar botao whatsapp
    Dado que o usuario se encontra na tela inicial
    Quando o usuario rolar a pagina ate o campo whatsapp
    Entao o usuario pode visualizar o botao whatsapp