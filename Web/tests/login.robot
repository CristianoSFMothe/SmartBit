*** Settings ***
Documentation       Suite de teste de autenticação
...                 Administrador deve acessar o portal de gestão de academias

Library   Browser

*** Test Cases ***
Login do Administrador
    [Documentation]     Logando com usuário corredo
    [Tags]              login

    Go To Login Page
    Fill Credentials    admin@smartbit.com       qacademy
    Submit Credentials
    User Should Be Looged In
    
Email não cadastrado
    [Documentation]     Logando com o email inválido
    [Tags]              email-invalid

    Go To Login Page
    Fill Credentials    404@smartbit.com      qacademy
    Submit Credentials
    Verify Toaster


Senha inválida
    [Documentation]     Logando com o senha inválido
    [Tags]              password-invalid

    Go To Login Page
    Fill Credentials    admin@smartbit.com      abc123
    Click           css=button >> text=Entrar no sistema
    Submit Credentials

    Verify Toaster

*** Keywords ***
Go To Login Page
    New Browser     headless=False      browser=chromium
    New Page        http://localhost:3000

Fill Credentials
    [Arguments]     ${email}        ${password}

    Fill Text       css=input[placeholder="Seu e-mail"]       ${email}
    Fill Text       css=input[placeholder="Sua Senha"]        ${password}

Submit Credentials
    Click           css=button >> text=Entrar no sistema

Verify Toaster
    Wait For Elements State
    ...     css=.Toastify__toast-body div >> text=Suas credenciais são inválidas, por favor tente novamente!
    ...     visible     5


User Should Be Looged In
    ${logged_user}      Set Variable    css=aside strong

    Wait For Elements State    ${logged_user}     visible     5
    Get Text                   ${logged_user}     equal   Admin

