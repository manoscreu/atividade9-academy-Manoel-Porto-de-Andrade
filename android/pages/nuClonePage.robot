*** Settings ***
Resource    ..//base.robot
Library    XML

*** Variables ***

#Prefixos
${prefixoButton}           xpath=//android.widget.Button
${prefixoTextos}           xpath=//android.view.View
${prefixoCarrossel}        xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]
${prefixoImageView}        xpath=//android.widget.ImageView

#Botoes
${carrosselButton1}        ${prefixoCarrossel}  /android.widget.Button[1]
${carrosselButton2}        ${prefixoCarrossel}  /android.widget.Button[2]
${carrosselButton3}        ${prefixoCarrossel}  /android.widget.Button[3]
${carrosselButton4}        ${prefixoCarrossel}  /android.widget.Button[4]
${carrosselButton5}        ${prefixoCarrossel}  /android.widget.Button[5]
${meusCartoes}             ${prefixoTextos}     [@content-desc="Meus cartões"]
${campoEmprestimo}         ${prefixoTextos}     [@content-desc="Você tem R$ 10.000,00 disponíveis para empréstimo."]
${buttonMeusCartoes}       ${prefixoTextos}     [@content-desc="Meus cartões"]
${cartoes}                 ${prefixoTextos}     [@content-desc="Cartão de Crédito"]
${conta}                   ${prefixoTextos}     [contains(@content-desc, "Conta")]
${buttonPagar}             ${prefixoImageView}  [contains(@content-desc, "Minha área Pix")]/android.widget.Button[2]
${buttonTrasferir}         ${prefixoImageView}  [contains(@content-desc, "Minha área Pix")]/android.widget.Button[3]
${buttonCobrar}            ${prefixoImageView}  [contains(@content-desc, "Minha área Pix")]/android.widget.Button[4]
${pagarComPix}             ${prefixoTextos}     [contains(@content-desc, "Pagar com Pix")]
${pagarFaturaCard}         ${prefixoTextos}     [contains(@content-desc, "Pagar fatura do cartão")]
${pagarBoleto}             ${prefixoTextos}     [contains(@content-desc, "Pagar um boleto")]
${fecharTransf}            xpath=//android.widget.EditText[@text="R$ 0,00"]/android.view.View/android.widget.Button[1]
${qrTransf}                xpath=//android.widget.EditText[@text="R$ 0,00"]/android.view.View/android.widget.Button[2]
${depostioPix}             ${prefixoTextos}     [contains(@content-desc, "Pix")]
${depostioBoleto}          ${prefixoTextos}     [contains(@content-desc, "Boleto")]
${depostioTED}             ${prefixoTextos}     [contains(@content-desc, "TED/DOC")]
${depostioSalario}         ${prefixoTextos}     [contains(@content-desc, "Trazer seu salário")]
${buttonNovoEmprestimo}    ${prefixoButton}     [@content-desc="NOVO EMPRÉSTIMO"]
    
#Telas
${telaTransferencia}        xpath=//android.widget.EditText[@text="R$ 0,00"]
${telaDeposito}             [@content-desc="NOVO EMPRÉSTIMO"]
${telaRecarga}              //android.widget.EditText
${telaCobrar}               //android.widget.EditText[@text="R$ 0,00"]

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
${textoEmprestimo}         ${prefixoTextos}     [@content-desc="O valor disponível no momento é de R$ 10.000,00"]
${textoAnalise}            ${prefixoTextos}     [@content-desc="Este valor pode mudar diariamente devido à nossa análise de crédito."]
${entendaFunciona}         ${prefixoTextos}     [@content-desc="Entenda como funciona >"]
${emprestimosAtivos}       ${prefixoTextos}     [@content-desc="Você não possui nenhum empréstimo ativo."]
${doacao}                  ${prefixoTextos}     [@content-desc="Doação"]
${encontrarAtalhos}        ${prefixoTextos}     [@content-desc="Encontrar atalhos"]




*** Keywords ***
Dado que o usuario se encontra na tela inicial
    Element Should Be Visible        ${campoOla}


Quando o cliente acessar area conta
    Clica e espera     ${conta}    ${saldoDisponivel}

Quando o usuario acessa a area pix 
    Clica e espera    ${carrosselButton1}    ${textoPix}

Quando que o cliente acessa a area cartões
    Clica e espera    ${cartoes}    ${textoFatura}


Quando o usuario usar o botao pagar
    Clica e espera    ${carrosselButton2}    ${pagarComPix}

Quando o usuario usar o botao tranferir
    Clica e espera    ${carrosselButton3}    ${telaTransferencia}

Quando o usuario usar o botao desposito
    Clica e espera    ${carrosselButton4}    ${telaDeposito} 

Quando o usuario usar o botao emprestimo
    Swipe By Percent    90    40    0    40
    Clica e espera    ${carrosselButton1}    ${textoEmprestimo}

Quando o usuario usar o botao recarga de celular
    Swipe By Percent    90    40    0    40
    Clica e espera    ${carrosselButton2}    ${telaRecarga}

Quando o usuario usar o botao cobrar
    Swipe By Percent    90    40    0    40
    Clica e espera    ${carrosselButton3}    ${telaCobrar}


Entao o usuario tera acesso a funcao de cobrança
    Element Should Be Visible    ${telaRecarga}
    ${contentDesc}=    AppiumLibrary.Get Element Attribute    ${telaRecarga}    hint
    Should Contain    ${contentDesc}    Qual número você quer recarregar?


Entao o usuario tera acesso a funcao de recarga de celular
    Verifica visivel e texto    ${telaCobrar}    R$ 0,00
    verifica campo hint         ${telaCobrar}    Qual valor você quer receber?
    verifica campo hint         ${telaCobrar}    Não especificar um valor >

Entao o usuario pode visualizar o botao de doaçao
    Swipe By Percent    90    40    0    40
    Element Should Be Visible    ${carrosselButton4}
    Verifica visivel e texto    ${doacao}    Doação

Entao o usuario pode visualizar o botao encontrar atalho
    Swipe By Percent    90    40    0    40
    Element Should Be Visible    ${carrosselButton5}
    Verifica visivel e texto     ${encontrarAtalhos}    Encontrar atalhos


Entao o usuario terá acesso area de emprestimos
    Verifica visivel e texto    ${textoEmprestimo}         O valor disponível no momento é de R$ 10.000,00
    Verifica visivel e texto    ${textoAnalise}            Este valor pode mudar diariamente devido à nossa análise de crédito.
    Verifica visivel e texto    ${entendaFunciona}         Entenda como funciona >
    Verifica visivel e texto    ${buttonNovoEmprestimo}    NOVO EMPRÉSTIMO
    Verifica visivel e texto    ${emprestimosAtivos}       Você não possui nenhum empréstimo ativo.

Entao o usuario terá acesso a todas as opções de deposito
    Element Should Be Visible             ${depostioPix}
    Compara contentDesc contains          ${depostioPix}       Sem custo e cai na hora, mesmo de madrugada e fim de semana.
    Element Should Be Visible             ${depostioBoleto}
    Compara contentDesc contains          ${depostioBoleto}    Sem custo e pode levar 3 dias úteis para o dinheiro cair.
    Element Should Be Visible             ${depostioTED}
    Compara contentDesc contains          ${depostioTED}       Pode ter custo e cai somente em horário comercial de dias úteis.
    Element Should Be Visible             ${depostioSalario}
    Compara contentDesc contains          ${depostioSalario}   Receba todo mês direto aqui na sua conta, sem custo.

Entao o usuario terá acesso a area de transferencia
    Element Should Be Visible    ${fecharTransf}
    Element Should Be Visible    ${qrTransf}

Entao o usuario terá acesso a todas as opções de pagamento
    Verifica visivel e texto    ${pagarComPix}        Pagar com Pix 
    Verifica visivel e texto    ${pagarComPix}        Leia um QR Code ou cole o código.
    Verifica visivel e texto    ${pagarFaturaCard}    Pagar fatura do cartão 
    Verifica visivel e texto    ${pagarFaturaCard}    Libera o limite do seu Cartão de Crédito.
    Verifica visivel e texto    ${pagarBoleto}        Pagar um boleto 
    Verifica visivel e texto    ${pagarBoleto}        Contas de luz, água, etc.

Entao o usuario podera ver seu saldo atual
    Verifica visivel e texto         ${saldoValor}    R$ 181,79

    
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
    
