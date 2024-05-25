*** Settings ***
Test Setup    Abrir App
Test Teardown    TearDown
Resource    ..//base.robot


*** Test Cases ***
Clicar pix
    Click Element    ${ButtonPix}
    Wait Until Element Is Visible    ${textoPix}