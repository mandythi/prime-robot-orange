*** Settings ***
Documentation       Elementos, dados e keywords que podem ser utilizados somente no sistema.

Resource            ../resources/web_keywords.robot


*** Variables ***
${URL}              https://opensource-demo.orangehrmlive.com/
${BROWSER}          Chrome
${fieldUser}        name=username
${fieldPwd}         name=password
${buttonLogin}      xpath=//button[@type="submit"]
${elementMenu}      xpath=//nav[@class="oxd-navbar-nav"]


*** Keywords ***
Abrir Sistema
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Browser Implicit Wait    60
    Wait Until Element Is Visible    ${buttonLogin}    60
    Sleep    1    # Necessario para print da tela
    Capture Page Screenshot

Fechar Navegador
    Close Browser

Dado que realizo login no sistema com usuario "${user}" e senha "${pwd}"
    Wait Until Element Is Visible    ${fieldUser}    30
    Input Text    ${fieldUser}    ${user}
    Input Password    ${fieldPwd}    ${pwd}
    Capture Page Screenshot
    Click Button    ${buttonLogin}
    Wait Until Element Is Visible    ${elementMenu}    30
    Sleep    1    # Necessario para print da tela
    Capture Page Screenshot
