*** Settings ***
Resource    ..//base.robot
Library    XML

*** Variables ***

#Prefixos
${prefixoTextos}           xpath=//android.view.View
${prefixoCarrossel}        xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]
${prefixoImageView}        xpath=//android.widget.ImageView

#Botoes
${carrosselButton1}        ${prefixoCarrossel}  /android.widget.Button[1]
${carrosselButton2}        ${prefixoCarrossel}  /android.widget.Button[2]
${carrosselButton3}        ${prefixoCarrossel}  /android.widget.Button[3]
${carrosselButton4}        ${prefixoCarrossel}  /android.widget.Button[4]
${meusCartoes}             ${prefixoTextos}     [@content-desc="Meus cartões"]
${campoEmprestimo}         ${prefixoTextos}     [@content-desc="Você tem R$ 10.000,00 disponíveis para empréstimo."]
${botaoMeusCartoes}        ${prefixoTextos}     [@content-desc="Meus cartões"]
${cartoes}                 ${prefixoTextos}     [@content-desc="Cartão de Crédito"]
${conta}                   ${prefixoTextos}     [contains(@content-desc, "Conta")]
${buttonPagar}             ${prefixoImageView}  [contains(@content-desc, "Minha área Pix")]/android.widget.Button[2]
${buttonTrasferir}         ${prefixoImageView}  [contains(@content-desc, "Minha área Pix")]/android.widget.Button[3]
${buttonCobrar}            ${prefixoImageView}  [contains(@content-desc, "Minha área Pix")]/android.widget.Button[4]



#Textos                    
${textoPix}                ${prefixoImageView}  [contains(@content-desc, "Minha área Pix")]
${textoFatura}             ${prefixoTextos}     [@content-desc="Fatura atual"]
${campoOla}                ${prefixoTextos}     [@content-desc="Olá, Breno Freitas"]
${campoConquistSonho}      ${prefixoTextos}     [@content-desc="Conquiste planos futuros: conheça as opções para guardar dinheiro."]
${saldoDisponivel}         ${prefixoTextos}     [@content-desc="Saldo disponível"]
${saldoValor}              ${prefixoTextos}     [@content-desc="R$ 181,79"]
${transferenciaPaty}       ${prefixoTextos}     [contains(@content-desc, "PATRICIA COSTA")]
${transferenciaJey}        ${prefixoTextos}     [contains(@content-desc, "ANDRE JEY")]
${transferenciaEriko}      ${prefixoTextos}     [contains(@content-desc, "ERIKO BARBOSA")]
${transferenciaIvan}       ${prefixoTextos}     [contains(@content-desc, "IVAN COELHO")]
${minhasChaves}            ${prefixoTextos}     [@content-desc="Minhas chaves"]
${meuLimite}               ${prefixoTextos}     [@content-desc="Meu limite Pix"]
${meAjuda}                 ${prefixoTextos}     [@content-desc="Me ajuda"]


*** Keywords ***
Dado que o usuario se encontra na tela inicial
    Element Should Be Visible        ${campoOla}


Quando o cliente acessar area conta
    Clica e espera                   ${conta}    ${saldoDisponivel}

Quando o usuario acessa a area pix 
    Clica e espera                   ${carrosselButton1}    ${textoPix}

Quando que o cliente acessa a area cartões
    Clica e espera                   ${cartoes}    ${textoFatura}


Entao o usuario podera ver seu saldo atual
    Compara contentDesc              ${saldoValor}    R$ 181,79

    
Entao o usuario terá acesso a todas as funçoes de pix
    Verifica visivel e texto    ${minhasChaves}    Minhas chaves
    Verifica visivel e texto    ${meuLimite}       Meu limite Pix
    Verifica visivel e texto    ${meAjuda}         Me ajuda
    Element Should Be Visible   ${buttonPagar}
    Element Should Be Visible   ${buttonTrasferir}
    Element Should Be Visible   ${buttonCobrar}

E ver seu histórico de transferência
    Swipe By Percent  50  90  50  10
    Compara contentDesc historico    ${transferenciaPaty}     Transferência enviada     Ontem    PATRICIA COSTA    R$ 30,00
    Compara contentDesc historico    ${transferenciaJey}      Transferência recebida    Ontem    ANDRE JEY         R$ 30,00
    Compara contentDesc historico    ${transferenciaEriko}    Transferência recebida    Ontem    ERIKO BARBOSA     R$ 30,00
    Compara contentDesc historico    ${transferenciaIvan}     Transferência recebida    Ontem    IVAN COELHO       R$ 30,00
    
