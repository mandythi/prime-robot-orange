*** Settings ***
Documentation       Configuração das libraries, resources e caminhos de arquivos globais.

Library             SeleniumLibrary
Library             FakerLibrary
Library             DateTime
### pages
Resource            pages/context.robot
Resource            pages/cadastro_page.robot
### steps
Resource            steps/cadastro_steps.robot


*** Variables ***
${FILE}     ${CURDIR}\\image    # Imagem upload
