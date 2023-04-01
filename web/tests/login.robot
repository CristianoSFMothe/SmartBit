*** Settings ***
Documentation            Suit de teste de autenticação
...                      Administrador deve acessar o portal de gestão de academias


Resource    ../resources/keywords.resource

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




    