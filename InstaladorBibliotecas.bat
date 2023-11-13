@echo off
echo #######################################################################################################
echo #                              INSTALADOR DE BIBLIOTECAS AUTOMACAO MV           	              #
echo #######################################################################################################
echo.
echo *** IMPORTANTE! Para a instalacao correta das bibliotecas o python deve ser previamente instalado. ***
echo #######################################################################################################
echo.
echo *** LISTA DE BIBLIOTECAS NECESSARIAS ***
echo.
echo 	- PyAutoGUI
echo 	- PyScreeze
echo 	- PyTweening
echo 	- PyMySQL
echo	- Unicode
echo 	- robotframework
echo 	- robotframework-seleniumlibrary
echo 	- robotframework-selenium2library
echo 	- robotframework-databaselibrary
echo	- robotframework-autorecorder
echo	- robotframework-faker
echo.
echo.
echo *** SELECIONE UMA OPCAO: ***
echo 	[1] Instalar bibliotecas
echo 	[2] Cancelar

set /p opcao=Digite a opcao desejada:
if "%opcao%" == "1" goto op1
if "%opcao%" == "2" goto op2

:op1
python.exe -m pip install --upgrade pip
pip install PyAutoGUI
pip install PyScreeze
pip install PyTweening
pip install PyMySQL
pip install Unidecode
pip install -U robotframework
pip install -U robotframework-seleniumlibrary
pip install -U robotframework-selenium2library
pip install -U robotframework-databaselibrary
pip install -U robotframework-autorecorder
pip install -U robotframework-faker
pip install -U webdrivermanager
pip freeze

goto fim

:op2
exit

:fim
echo.
echo Bibliotecas instaladas com sucesso!
echo.
echo Pressione qualquer tecla para encerrar...
pause > nul