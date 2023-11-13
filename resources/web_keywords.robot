*** Settings ***
Documentation       Keywords web genéricas.

Resource            ../config.robot


*** Keywords ***
Preencher campo
    [Arguments]    ${elemento}    ${valor}
    Wait Until Element Is Visible    ${elemento}    30
    Click Element    ${elemento}
    Press Keys    ${elemento}    CTRL+a    BACKSPACE
    Input Text    ${elemento}    ${valor}

Preencher data
    [Arguments]    ${elemento}
    ${date}    Get Current Date    result_format=%Y-%m-%d
    Preencher campo    ${elemento}    ${date}

Valida Mensagem
    [Arguments]    ${messageDelivery}    ${expectedMessage}
    Capture Element Screenshot    ${messageDelivery}
    Element Should Contain    ${messageDelivery}    ${expectedMessage}
