*** Settings ***

Resource    ../base.robot

*** Keywords ***
Clica e espera
    [Arguments]     ${elemento1}    ${elementoAEsperar}
    Click Element    ${elemento1}
    Wait Until Element Is Visible    ${elementoAEsperar}

Compara contentDesc historico
    [Arguments]     ${elemento}    ${tipoMovimentaçao}    ${data}    ${nome}    ${valor}
    ${contentDesc}=    AppiumLibrary.Get Element Attribute    ${elemento}    content-desc
    Should Contain    ${contentDesc}    ${tipoMovimentaçao}
    Should Contain    ${contentDesc}    ${data}
    Should Contain    ${contentDesc}    ${nome}
    Should Contain    ${contentDesc}    ${valor}

Compara contentDesc cartao
    [Arguments]     ${elemento}    ${tipoMovimentaçao}    ${data}    ${nome}    ${valor}    ${tipo}
    ${contentDesc}=    AppiumLibrary.Get Element Attribute    ${elemento}    content-desc
    Should Contain    ${contentDesc}    ${tipoMovimentaçao}
    Should Contain    ${contentDesc}    ${data}
    Should Contain    ${contentDesc}    ${nome}
    Should Contain    ${contentDesc}    ${valor}
    Should Contain    ${contentDesc}    ${tipo}

Verifica visivel e contentDesc
    [Arguments]    ${elemento}    ${nome}
    Element Should Be Visible    ${elemento}
    ${contentDesc}=    AppiumLibrary.Get Element Attribute    ${elemento}    content-desc
    Should Contain    ${contentDesc}    ${nome}

verifica campo hint
    [Arguments]    ${elemento}    ${nome}
    ${contentDesc}=    AppiumLibrary.Get Element Attribute    ${elemento}    hint
    Should Contain    ${contentDesc}    ${nome}


Verifica visivel e texto nao deve conter
    [Arguments]    ${elemento}    ${nome}
    Element Should Be Visible    ${elemento}
    ${contentDesc}=    AppiumLibrary.Get Element Attribute    ${elemento}    content-desc
    Should Not Contain    ${contentDesc}    ${nome}