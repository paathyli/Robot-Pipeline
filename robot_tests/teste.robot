** Settings **

Library  SeleniumLibrary

** Variables **
${SITE_URL}  https://automationpratice.com.br/
${USUARIO_EMAIL}  pathy@teste.com
${USUARIO_SENHA}  123456

** Keywords **

Abrir Site
    Open Browser  ${SITE_URL}  chrome
    Esperar Elemento  10

Abrir esse Site
    [Arguments]  ${url}
    Open Browser  ${url}  chrome

Clicar sobre o botao login
    Click Element  xpath://a[@href='/login']

Digitar email
    Input Text  id:user  ${USUARIO_EMAIL}

Digitar senha
    Input Text  id:password  ${USUARIO_SENHA}

Clicar em logar
    Click Element  id:btnLogin

Verificar texto login realizado
    ${texto_atual}  Get text  id:swal2-title
    Should Be Equal As Strings  ${texto_atual}  Login realizado

Esperar Elemento
    [Arguments]  ${Tempo}
    Set Selenium Implicit Wait  ${Tempo}s

Tirar print
    Capture Page Screenshot

*** Comments ***

Aguardar site carregar
    Sleep  5s

** Test Cases **

Cenário 1: Acessando o site do Robot
    [Tags]  Teste1
    Abrir Site
    Clicar sobre o botao login
    Digitar email
    Digitar senha
    Clicar em logar
    Verificar texto login realizado

*** Comments ***
Cenário 2: Testando Robot
    [Tags]  Teste2
    Tirar print
    Abrir esse Site  https://automationpratice.com.br/
    Aguardar site carregar
    Clicar sobre o botao login
    Aguardar site carregar
    Digitar email
    Digitar senha
    Clicar em logar
    Aguardar site carregar
    Tirar print
    Verificar texto login realizado
    Capture Page Screenshot