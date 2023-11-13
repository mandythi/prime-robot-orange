# Automação Atualização de Cadastro no OrangeHRM

## Configuração de ambiente Windows

### <b>Instalar e configurar  o java jdk
- Baixar e instalar o java jdk 1..8.0 (preferencialmente 1.8..0_271)
https://www.oracle.com/br/java/technologies/javase/javase8-archive-downloads.html

- Configurar variavel de ambiente JAVA_HOME (OBS: em variaveis do sistema)

### Instalar o python

    https://www.python.org/

    Na instalação marcar a opção ADD PATH na primeira tela

-   Configurar as variaveis de ambiente

-   Adicionar os caminhos na variavel de ambiente path *(OBS: em variaveis do sistema)*<br>
    *Exemplo:*
    C:\Users\seuusuario\AppData\Local\Programs\Python\Python39\
     C:\Users\seuusuario\AppData\Local\Programs\Python\Python39\Scripts\
    
    *OBS: necessario adicionar o chromedriver.exe na versão atual do chrome da sua maquina e coloca-lo na pasta C:\Users\seuusuario\AppData\Local\Programs\Python\Python39\Scripts\ para conseguir executar a automação.


### Configurando o Ambiente de Automação Linux

-   Abrir o prompt de comando cmd e executar o comando<br>
    *python3 --version*<br>
-   Para garantir que o python foi instalado

-   Atualizar o gerenciador de dependências pip com o comando<br>
    *pip3 install --upgrade pip*

-   Instalar as dependências:<br>
    *python3 -m pip install pyautogui*<br>
    *sudo apt-get install scrot*<br>
    *sudo apt-get install python3-tk*<br>
    *sudo apt-get install python3-dev*<br>
    *sudo apt-get install python3-xlib*<br>
    *pip3 install opencv-python*<br>
    *pip3 install robotframework*<br>
    *pip3 install --upgrade robotframework-seleniumlibrary*<br>
    *pip3 install robotframework-imagehorizonlibrary*<br>
    *pip3 install robotframework-imagehorizonlibrary*<br>
    *sudo apt-get update*<br>
    *sudo apt-get upgrade*

### Editor de codigo

-   Sugestão de editor: VSCode

-   Baixar e instalar o VSCode
    https://code.visualstudio.com/download

    *OBS: só é necessario instalar se for editar o código

#### Sugestão de plugins VSCode

    Python (Microsoft)
    Robot Framework Language Server
    RobotF Extension (KMK Labs)

### Instalar as Librarys
- Para instalar as  blibliotecas necessarias basta executar o arquivo "InstaladorBibliotecas.bat" 

### Execução do cenário de Teste
-   para execução do cenario via terminal é necessario estar na pasta 
(..\prime-robot-orange\tests) e executar o comando 

    robot ./results cadastro.robot

    ou executar o arquivo run.bat

### Importante
    A automação necessita estar no arquivo C: para execução com o run.bat e este arquivo só funciona no windows. Para visualizar o relatório gerado vá na pasta results e acesse o arquivo log.html
