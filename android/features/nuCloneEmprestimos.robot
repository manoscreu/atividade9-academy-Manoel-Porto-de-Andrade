*** Settings ***
Test Setup    Abrir App
Test Teardown    TearDown
Resource    ..//base.robot


*** Test Cases ***
Teste botao emprestimo carrossel
    Dado que o usuario se encontra na tela inicial
    Quando o usuario usar o botao emprestimo
    Entao o usuario terá acesso area de emprestimos

Validar campo disponibilidade de emprestimo card pequeno
    Dado que o usuario se encontra na tela inicial
    Quando o usuario acessar o botao emprestimo
    Entao o usuario terá acesso area de emprestimos

Validar botao emprestimo
    Dado que o usuario se encontra na tela inicial
    Quando acessar o campo emprestimo
    Entao o usuario terá acesso area de emprestimos