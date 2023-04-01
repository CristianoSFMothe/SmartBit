*** Settings ***
Documentation            Suit de teste de autenticação
...                      Administrador deve acessar o portal de gestão de academias

Library                  Browser

*** Test Cases ***
Login do Administrador
    [Documentation]        Entrando com e-mail administrador
    [Tags]                 login

    Go To Login Page
    Fill Credencials        admin@smartbit.com         qacademy
    Submit Credencials    
    User Shold Be Looged In


Email Não Encontrado
    [Documentation]        Entrando com e-mail não cadastrado
    [Tags]                 email-fall

    Go To Login Page
    Fill Credencials        404@smartbit.com     qacademy
    Submit Credencials
    Verify Toaster


Senha Invalida
    [Documentation]        Entrando com senha invalida
    [Tags]                 pass-fall

    Go To Login Page
    Fill Credencials        admin@smartbit.com     abc123
    Submit Credencials
    Verify Toaster   


*** Keywords ***
Go To Login Page
    New Browser     headless=False    browser=chromium
    New Page        http://localhost:3000

Fill Credencials
    [Arguments]    ${email}    ${password}

    Fill Text    css=input[placeholder="Seu e-mail"]        ${email}
    Fill Text    css=input[placeholder="Sua Senha"]         ${password}

Submit Credencials
    Click        css=button >> text=Entrar no sistema

Verify Toaster
    Wait For Elements State    
    ...    css=.Toastify__toast-body div >> text=Suas credenciais são inválidas, por favor tente novamente!
    ...    visible    5
    
User Shold Be Looged In

    ${logged_user}    Set Variable    css=aside strong 

    Wait For Elements State    ${logged_user}     visible    5

    Get Text     ${logged_user}     equal    Admin

    