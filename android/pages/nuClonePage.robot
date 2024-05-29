*** Settings ***
Resource    ..//base.robot
Library    XML

*** Variables ***

#Prefixos
${prefixoEditText}         xpath=//android.widget.EditText
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
${campoEmprestimo}         ${prefixoTextos}     //android.view.View[@content-desc="Você tem R$ 10.000,00 disponíveis para empréstimo."]
${buttonMeusCartoes}       ${prefixoTextos}     [@content-desc="Meus cartões"]
${cartoes}                 ${prefixoTextos}     [@content-desc="Cartão de Crédito"]
${conta}                   ${prefixoTextos}     [contains(@content-desc, "Conta")]
${buttonPagar}             ${prefixoImageView}  [contains(@content-desc, "Minha área Pix")]/android.widget.Button[2]
${buttonTrasferir}         ${prefixoImageView}  [contains(@content-desc, "Minha área Pix")]/android.widget.Button[3]
${buttonCobrar}            ${prefixoImageView}  [contains(@content-desc, "Minha área Pix")]/android.widget.Button[4]
${pagarComPix}             ${prefixoTextos}     [contains(@content-desc, "Pagar com Pix")]
${pagarFaturaCard}         ${prefixoTextos}     [contains(@content-desc, "Pagar fatura do cartão")]
${pagarBoleto}             ${prefixoTextos}     [contains(@content-desc, "Pagar um boleto")]
${fecharTransf}            ${prefixoEditText}   [@text="R$ 100,00"]/android.view.View/android.widget.Button[1]
${qrTransf}                ${prefixoEditText}   [@text="R$ 100,00"]/android.view.View/android.widget.Button[2]
${depostioPix}             ${prefixoTextos}     [contains(@content-desc, "Pix")]
${depostioBoleto}          ${prefixoTextos}     [contains(@content-desc, "Boleto")]
${depostioTED}             ${prefixoTextos}     [contains(@content-desc, "TED/DOC")]
${depostioSalario}         ${prefixoTextos}     [contains(@content-desc, "Trazer seu salário")]
${buttonNovoEmprestimo}    ${prefixoButton}     [@content-desc="NOVO EMPRÉSTIMO"]
${buttonEmprestimo}        ${prefixoTextos}     [contains(@content-desc,"Valor disponível de até")]
${buttonInvestimentos}     ${prefixoTextos}     [contains(@content-desc, "Investimentos")]
${buttonSeguroDeVida}      ${prefixoTextos}     [contains(@content-desc,"Seguro de vida")]
${buttonWhatsApp}          ${prefixoTextos}     [contains(@content-desc,"WhatsApp")]
${ButonIndicarAmigos}      ${prefixoTextos}     [contains(@content-desc,"Indicar amigos")]
${BTN_IndicarAmigos}       ${prefixoButton}     [@content-desc="INDICAR AMIGOS"]
${buttonCartao}            ${prefixoTextos}     [contains(@content-desc,"Cartão de Crédito")]
${widgetConvidar}          //android.widget.ScrollView/android.widget.Button[3]
${eyeWidget}               //android.widget.ScrollView/android.widget.Button[1]
${depositarConta}          //android.widget.HorizontalScrollView/android.widget.Button[1]
${pagarConta}              //android.widget.HorizontalScrollView/android.widget.Button[2]
${transferirConta}         //android.widget.HorizontalScrollView/android.widget.Button[3]
${emprestimoConta}         //android.widget.HorizontalScrollView/android.widget.Button[4]
${cobrarConta}             //android.widget.HorizontalScrollView/android.widget.Button[5]
        
#Telas
${telaTransferencia}       ${prefixoEditText}   [@text="R$ 0,00"]
${telaTransfEditada}       ${prefixoEditText}   [@text="R$ 100,00"]
${telaDeposito}            ${prefixoTextos}     [@content-desc="Como você quer depositar na sua conta do Nubank"]
${telaRecarga}             ${prefixoEditText}
${telaCobrar}              ${prefixoEditText}   [@text="R$ 0,00"]
${telaCobrarEditada}       ${prefixoEditText}   [@text="R$ 100,00"]

#Textos                    
${textoPix}                ${prefixoImageView}  [contains(@content-desc, "Minha área Pix")]
${textoFatura}             ${prefixoTextos}     [@content-desc="Fatura atual"]
${campoOla}                ${prefixoTextos}     [@content-desc="Olá, Breno Freitas"]
${campoConquistSonho}      ${prefixoTextos}     [@content-desc="Conquiste planos futuros: conheça as opções para guardar dinheiro."]
${saldoDisponivel}         ${prefixoTextos}     [@content-desc="Saldo disponível"]
${saldoValor}              ${prefixoTextos}     [@content-desc="R$ 181,79"]
${dinheiroGuardado}        ${prefixoTextos}     [contains(@content-desc,"Dinheiro guardado")]
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
${tituloInvestimentos}     ${prefixoTextos}     [@content-desc="Invista sem taxas e burocracia!"]
${investParag1}            ${prefixoTextos}     [contains(@content-desc, "Estamos convidando alguns clientes")]
${investParag2}            ${prefixoTextos}     [contains(@content-desc,"Além de não pagar nada para abrir a conta")]
${textoIndicacao}          ${prefixoImageView}  [contains(@content-desc, "Resgate seus amigos da fila do banco")]
${faturaAtual}             ${prefixoTextos}     [@content-desc="Fatura atual"]
${valorFatura}             ${prefixoTextos}     [@content-desc="R$ 780,72"]
${limiteDisponivel}        ${prefixoTextos}     [@content-desc="Limite disponível R$ 806,78"]
${pagarFatura}             ${prefixoTextos}     [@content-desc="Pagar fatura"]
${resumoFatura}            ${prefixoTextos}     [@content-desc="Resumo de faturas"]
${ajustarLimites}          ${prefixoTextos}     [@content-desc="Ajustar limites"]
${cartaoVirtual}           ${prefixoTextos}     [@content-desc="Cartão virtual"]
${bloquearCartao}          ${prefixoTextos}     [@content-desc="Bloquear cartão"]
${indicarAmigosCard}       ${prefixoTextos}     [@content-desc="Indicar amigos"]
${pagRecebido}             ${prefixoTextos}     [contains(@content-desc,"Pagamento recebido")]
${pagSupermercado}         ${prefixoTextos}     [contains(@content-desc,"Supermercado")]
${transfEnviada}           ${prefixoTextos}     [contains(@content-desc,"Transferência enviada")]
${campoRedimentos}         ${prefixoTextos}     [contains(@content-desc,"Rendimento total da conta")]
${textoparag1}             Estamos convidando alguns clientes do Nubank para serem os primeiros a fazer parte desta revolução roxa nos investimentos, e você é um deles!





*** Keywords ***
Dado que o usuario se encontra na tela inicial
    Element Should Be Visible        ${campoOla}

Dado que o usuario se encontra na conta
    Element Should Be Visible    ${campoOla}
    Clica e espera    ${conta}    ${saldoDisponivel}


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

Quando o usuario rolar o carrossel ate o botao doacao
    Swipe By Percent    90    40    0    40

Quando o usuario rolar o carrossel ate o botao encontrar atalhos
    Swipe By Percent    90    40    0    40


Quando o usuario acessar o botao cobrar
    Swipe By Percent    90    55    75    55
    Clica e espera    ${cobrarConta}    ${telaCobrar}


Quando o usuario acessar o botao emprestimos
    clica e espera    ${emprestimoConta}    ${textoEmprestimo}

Quando o usuario acessar o botao transferir
    Clica e espera    ${transferirConta}    ${telaTransferencia}

Quando o usuario acessar o botao pagar
    Clica e espera    ${pagarConta}    ${pagarComPix}

Quando o usuario acessar o botao depositar
    Clica e espera    ${depositarConta}    ${telaDeposito}

Entao o usuario tera acesso a funcao de recarga de celular
    Element Should Be Visible      ${telaRecarga}
    verifica campo hint            ${telaRecarga}    Qual número você quer recarregar?
    Input Text                     ${telaRecarga}    33999123456
    Element Should Contain Text    ${telaRecarga}    (33) 99912-3456


Entao o usuario tera acesso a funcao de cobrança
    Element Should Contain Text     ${telaCobrar}    R$ 0,00
    verifica campo hint             ${telaCobrar}    Qual valor você quer receber?
    verifica campo hint             ${telaCobrar}    Não especificar um valor >
    Input Text                      ${telaCobrar}           10000
    Element Should Contain Text     ${telaCobrarEditada}    R$ 100,00

Entao o usuario pode visualizar o botao de doaçao
    Element Should Be Visible    ${carrosselButton4}
    Verifica visivel e contentDesc    ${doacao}    Doação

Entao o usuario pode visualizar o botao encontrar atalhos
    Element Should Be Visible    ${carrosselButton5}
    Verifica visivel e contentDesc     ${encontrarAtalhos}    Encontrar atalhos

Entao o usuario pode visualizar o botao meus cartoes
    Element Should Be Visible    ${buttonMeusCartoes}
    Verifica visivel e contentDesc     ${buttonMeusCartoes}    Meus cartões

Quando o usuario acessar o atalho de convidar amigos
    Clica e espera    ${widgetConvidar}    ${textoIndicacao}

Quando o usuario acessar o botao emprestimo
    Clica e espera     ${campoEmprestimo}    ${textoAnalise}

Quando o usuario acessar o botao cartao de credito
    Swipe By Percent    50    80    50    30
    Clica e espera    ${buttonCartao}    ${faturaAtual} 

Quando acessar o campo emprestimo
    Swipe By Percent    50    80    50    30
    Clica e espera    ${buttonEmprestimo}    ${textoEmprestimo}

Quando acessar o campo investimentos
    Swipe By Percent    50    80    50    30
    Clica e espera    ${buttonInvestimentos}    ${tituloInvestimentos}

Quando o usuario usar o botao de indicar amigos
    Swipe By Percent    50    80    50    0
    Wait Until Element Is Visible    ${buttonWhatsApp}
    Swipe By Percent    70    90    20    90
    Clica e espera    ${ButonIndicarAmigos}    ${BTN_IndicarAmigos}

Quando o usuario rolar a pagina ate o campo seguro de vida
    Swipe By Percent    50    80    50    0

Quando o usuario rolar a pagina ate o campo whatsapp
    Swipe By Percent    50    80    50    0

Quando o usuario rolar os cards ate o card planos para o futuro
    Swipe By Percent    80    70    20    70

Quando o usuario usar o botao de esconder valores
    Swipe By Percent    50    30    50    50
    Click Element    ${eyeWidget}

Entao o usuario terá acesso a todas as funçoes do cartao
    Verifica visivel e contentDesc    ${faturaAtual}         Fatura atual
    Verifica visivel e contentDesc    ${valorFatura}         R$ 780,72
    Verifica visivel e contentDesc    ${limiteDisponivel}    Limite disponível R$ 806,78
    Verifica visivel e contentDesc    ${pagarFatura}         Pagar fatura
    Verifica visivel e contentDesc    ${resumoFatura}        Resumo de faturas
    Verifica visivel e contentDesc    ${ajustarLimites}      Ajustar limites
    Verifica visivel e contentDesc    ${cartaoVirtual}       Cartão virtual
    Swipe By Percent    80    90    10    90
    Verifica visivel e contentDesc    ${bloquearCartao}      Bloquear cartão
    Verifica visivel e contentDesc    ${indicarAmigosCard}   Indicar amigos

Entao o usuario terá acesso a area de emprestimos
    Verifica visivel e contentDesc    ${tituloInvestimentos}    Invista sem taxas e burocracia!
    Verifica visivel e contentDesc    ${investParag1}           ${textoparag1}
    Verifica visivel e contentDesc    ${investParag2}           Além de não pagar nada para abrir a conta, você terá taxa zero na corretagem de ações!

Entao o usuario pode visualizar o botao de seguro de vida
    Verifica visivel e contentDesc    ${buttonSeguroDeVida}     Conheça Nubank Vida: um seguro simples e que cabe no bolso.


Entao o usuario pode visualizar o botao whatsapp
    Verifica visivel e contentDesc    ${buttonWhatsApp}    Pagamentos seguros, rápidos e sem tarifa. A experiência Nubank sem nem sair da conversa.

Entao o usuario terá acesso a area de indicaçoes
    Verifica visivel e contentDesc    ${textoIndicacao}    Resgate seus amigos da fila do banco
    Verifica visivel e contentDesc    ${textoIndicacao}    Para cada indicação aceita, um amigo salvo da burocracia

Entao o usuario pode visualizar o botao planos para o futuro
    Element Should Be Visible    ${campoConquistSonho}
    Verifica visivel e contentDesc     ${campoConquistSonho}    Conquiste planos futuros: conheça as opções para guardar dinheiro.

Entao o usuario terá acesso area de emprestimos
    Verifica visivel e contentDesc    ${textoEmprestimo}         O valor disponível no momento é de R$ 10.000,00
    Verifica visivel e contentDesc    ${textoAnalise}            Este valor pode mudar diariamente devido à nossa análise de crédito.
    Verifica visivel e contentDesc    ${entendaFunciona}         Entenda como funciona >
    Verifica visivel e contentDesc    ${buttonNovoEmprestimo}    NOVO EMPRÉSTIMO
    Verifica visivel e contentDesc    ${emprestimosAtivos}       Você não possui nenhum empréstimo ativo.

Entao o usuario terá acesso a todas as opções de deposito
    Element Should Be Visible             ${depostioPix}
    Verifica visivel e contentDesc          ${depostioPix}       Sem custo e cai na hora, mesmo de madrugada e fim de semana.
    Element Should Be Visible             ${depostioBoleto}
    Verifica visivel e contentDesc          ${depostioBoleto}    Sem custo e pode levar 3 dias úteis para o dinheiro cair.
    Element Should Be Visible             ${depostioTED}
    Verifica visivel e contentDesc          ${depostioTED}       Pode ter custo e cai somente em horário comercial de dias úteis.
    Element Should Be Visible             ${depostioSalario}
    Verifica visivel e contentDesc          ${depostioSalario}   Receba todo mês direto aqui na sua conta, sem custo.

Entao o usuario terá acesso a area de transferencia
    Element Should Contain Text     ${telaTransferencia}    R$ 0,00
    Input Text                      ${telaTransferencia}    10000
    Element Should Contain Text     ${telaTransfEditada}     R$ 100,00
    Element Should Be Visible       ${fecharTransf}
    Element Should Be Visible       ${qrTransf}

Entao o usuario terá acesso a todas as opções de pagamento
    Verifica visivel e contentDesc    ${pagarComPix}        Pagar com Pix 
    Verifica visivel e contentDesc    ${pagarComPix}        Leia um QR Code ou cole o código.
    Verifica visivel e contentDesc    ${pagarFaturaCard}    Pagar fatura do cartão 
    Verifica visivel e contentDesc    ${pagarFaturaCard}    Libera o limite do seu Cartão de Crédito.
    Verifica visivel e contentDesc    ${pagarBoleto}        Pagar um boleto 
    Verifica visivel e contentDesc    ${pagarBoleto}        Contas de luz, água, etc.

Entao o usuario podera ver todas informaçoes de saldo de sua conta
    Verifica visivel e contentDesc         ${saldoValor}    R$ 181,79
    Verifica visivel e contentDesc    ${dinheiroGuardado}    Dinheiro guardado
    Verifica visivel e contentDesc    ${dinheiroGuardado}    R$ 240,02
    Verifica visivel e contentDesc    ${campoRedimentos}    Rendimento total da conta
    Verifica visivel e contentDesc    ${campoRedimentos}    +R$ 0,20 este mês

    
Entao o usuario terá acesso a todas as funçoes de pix
    Verifica visivel e contentDesc    ${minhasChaves}    Minhas chaves
    Verifica visivel e contentDesc    ${meuLimite}       Meu limite Pix
    Verifica visivel e contentDesc    ${meAjuda}         Me ajuda
    Element Should Be Visible   ${buttonPagar}
    Element Should Be Visible   ${buttonTrasferir}
    Element Should Be Visible   ${buttonCobrar}

Entao o sistema deve esconder os valores
    Verifica visivel e texto nao deve conter    ${conta}    R$ 181,79
    Swipe By Percent    50    50    50    30
    Verifica visivel e texto nao deve conter    ${buttonCartao}    R$ 780,72

E ver todas as opçoes de tranferencia
    Element Should Be Visible    ${depositarConta}
    Element Should Be Visible    ${pagarConta}
    Element Should Be Visible    ${transferirConta}
    Element Should Be Visible    ${emprestimoConta}
    Swipe By Percent    80    60    70    50
    Element Should Be Visible    ${cobrarConta}


E ver seu histórico de transferência
    Swipe By Percent  50  90  50  10
    Compara contentDesc historico    ${transferenciaPaty}     Transferência enviada     Ontem    PATRICIA COSTA    R$ 30,00
    Compara contentDesc historico    ${transferenciaJey}      Transferência recebida    Ontem    ANDRE JEY         R$ 30,00
    Compara contentDesc historico    ${transferenciaEriko}    Transferência recebida    Ontem    ERIKO BARBOSA     R$ 30,00
    Compara contentDesc historico    ${transferenciaIvan}     Transferência recebida    Ontem    IVAN COELHO       R$ 30,00
    
E ver o historico de compras
    Swipe By Percent  50  90  50  10
    Compara contentDesc cartao    ${pagRecebido}        Pagamento recebido       Ontem    VOCÊ PAGOU R$ 50,00    R$ 30,00    Pix
    Compara contentDesc cartao    ${pagSupermercado}    Supermercado             Ontem    BRENO FREITAS          R$ 30,00    Pix
    Compara contentDesc cartao    ${transfEnviada}      Transferência enviada    Ontem    BRENO FREITAS          R$ 30,00    Pix

E os valores da conta e fatura estao disponíveis para visualizar
    Verifica visivel e contentDesc    ${conta}    R$ 181,79
    Swipe By Percent    50    50    50    30
    Verifica visivel e contentDesc    ${buttonCartao}   R$ 780,72 