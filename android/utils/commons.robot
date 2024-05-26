*** Settings ***

Resource    ..//base.robot

*** Keywords ***
Clica e espera
    [Arguments]     ${elemento1}    ${elemento2}
    Click Element    ${elemento1}
    Wait Until Element Is Visible    ${elemento2}
    
Compara contentDesc
    [Arguments]     ${elemento}    ${comparar}
    ${contentDesc}=    Get Element Attribute    ${elemento}    content-desc
    Should Be Equal    ${contentDesc}    ${comparar}

Compara contentDesc historico
    [Arguments]     ${elemento}    ${tipoMovimentaçao}    ${data}    ${nome}    ${valor}
    ${contentDesc}=    AppiumLibrary.Get Element Attribute    ${elemento}    content-desc
    Should Contain    ${contentDesc}    ${tipoMovimentaçao}
    Should Contain    ${contentDesc}    ${data}
    Should Contain    ${contentDesc}    ${nome}
    Should Contain    ${contentDesc}    ${valor}

Verifica visivel e texto
    [Arguments]    ${elemento}    ${nome}
    Element Should Be Visible    ${elemento}
    ${contentDesc}=    AppiumLibrary.Get Element Attribute    ${elemento}    content-desc
    Should Contain    ${contentDesc}    ${nome}