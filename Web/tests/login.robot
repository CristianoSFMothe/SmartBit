*** Settings ***
Documentation       Suite de teste de autenticação
...                 Administrador deve acessar o portal de gestão de academias

Resource       ../resources/keywords.resource

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



