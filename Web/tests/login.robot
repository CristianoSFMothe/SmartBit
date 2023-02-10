*** Settings ***
Documentation       Suite de teste de autenticação
...                 Administrador deve acessar o portal de gestão de academias

Library   Browser

*** Test Cases ***
Login do Administrador
    [Documentation]     Logando com usuário corredo
    [Tags]              login

    New Browser     headless=False      browser=chromium
    New Page        http://localhost:3000

    Fill Credenciais    admin@smartbit.com       qacademy

    Click           css=button >> text=Entrar no sistema

    ${logged_user}      Set Variable    css=aside strong

    Wait For Elements State    ${logged_user}     visible     5

    Get Text                   ${logged_user}     equal   Admin
    
Email não cadastrado
    [Documentation]     Logando com o email inválido
    [Tags]              email-invalid

    New Browser     headless=False      browser=chromium
    New Page        http://localhost:3000

    Fill Credenciais    404@smartbit.com      qacademy

    Click           css=button >> text=Entrar no sistema
    
    Wait For Elements State
    ...     css=.Toastify__toast-body div >> text=Suas credenciais são inválidas, por favor tente novamente!
    ...     visible     5


Senha inválida
    [Documentation]     Logando com o senha inválido
    [Tags]              password-invalid

    New Browser     headless=False      browser=chromium
    New Page        http://localhost:3000

    Fill Credenciais    admin@smartbit.com      abc123

    Click           css=button >> text=Entrar no sistema

    Wait For Elements State
    ...     css=.Toastify__toast-body div >> text=Suas credenciais são inválidas, por favor tente novamente!
    ...     visible     5

*** Keywords ***
Fill Credenciais
    [Arguments]     ${email}        ${password}

    Fill Text       css=input[placeholder="Seu e-mail"]       ${email}
    Fill Text       css=input[placeholder="Sua Senha"]        ${password}
