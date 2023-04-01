*** Settings ***
Documentation       Suit de teste de autenticação
...                 Administrador deve acessar o portal de gestão de academias


Resource        ../resources/base.resource

*** Test Cases ***
Login do Administrador
    [Documentation]    Entrando com e-mail administrador
    [Tags]             login

    Go To Login Page
    Fill Credencials          admin@smartbit.com       qacademy
    Submit Credencials
    User Shold Be Looged In    Admin

Email Não Encontrado
    [Documentation]    Entrando com e-mail não cadastrado
    [Tags]             email-invalid

    Go To Login Page
    Fill Credencials    404@smartbit.com    qacademy
    Submit Credencials
    Verify Toaster    Suas credenciais são inválidas, por favor tente novamente!

Senha Invalida
    [Documentation]    Entrando com senha invalida
    [Tags]             pass-invalid

    Go To Login Page
    Fill Credencials    admin@smartbit.com    abc123
    Submit Credencials
    Verify Toaster    Suas credenciais são inválidas, por favor tente novamente!

Email No Formato Incorreto
    [Documentation]    Entrando com e-mail incorreto
    [Tags]             email-incorrect

    Go To Login Page
    Fill Credencials    @com.br    abc123
    Submit Credencials
    Field Type Should Be Email

Senha Em Branco
    [Documentation]    Entrando com e-mail incorreto
    [Tags]             pass-empty

    Go To Login Page
    Fill Credencials        admin@smartbit.com    ${EMPTY}
    Submit Credencials
    Alert Text Shold Be     password    A senha é obrigatória

Email Em Branco
    [Documentation]    Entrando com e-mail incorreto
    [Tags]             email-empty

    Go To Login Page
    Fill Credencials        ${EMPTY}   qacademy
    Submit Credencials
    Alert Text Shold Be     email    O e-mail é obrigatório

Email e Senha São Obagotórios
    [Documentation]    Entrando com e-mail incorreto
    [Tags]             temp

    Go To Login Page
    Submit Credencials
    Alert Text Shold Be     email       O e-mail é obrigatório
    Alert Text Shold Be     password    A senha é obrigatória
    
