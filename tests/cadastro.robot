*** Settings ***
Resource    ../resources/web_keywords.robot

Suite Setup    Abrir Sistema
Suite Teardown    Fechar Navegador

*** Test Cases ***
CT001:Realizar a alteração de informações do cadastro
    Dado que realizo login no sistema com usuario "Admin" e senha "admin123"
    Quando clicar em "My Info"
    E realizar o preenchimento dos campos com dados aleatorios
    Entao adicionar um anexo