*** Settings ***
Documentation       Suite de teste de autenticação
...                 Administrador deve acessar o portal de gestão de academias

Resource       ../resources/keywords.resource

*** Test Cases ***
Login do Administrador
    [Documentation]     Logando com usuário corredo
    [Tags]              login

    Go To Login Page
    Fill Credentials            admin@smartbit.com       qacademy
    Submit Credentials
    User Should Be Looged In    Admin
    
Email não cadastrado
    [Documentation]     Logando com o email inválido
    [Tags]              email-invalid

    Go To Login Page
    Fill Credentials    404@smartbit.com      qacademy
    Submit Credentials
    Verify Toaster      Suas credenciais são inválidas, por favor tente novamente!


Senha inválida
    [Documentation]     Logando com o senha inválido
    [Tags]              password-invalid

    Go To Login Page
    Fill Credentials    admin@smartbit.com      abc123
    Click               css=button >> text=Entrar no sistema
    Submit Credentials
    Verify Toaster      Suas credenciais são inválidas, por favor tente novamente!
    
    
Email no formato incorreto
    [Documentation]         Validando o tipo campo email
    [Tags]                  email-incorred

    Go To Login Page
    Fill Credentials        @com.br    abc123
    Submit Credentials
    Field Tyoe Should Be Email

Senha em branco
    [Documentation]         Submetendo o formulário sem informa a senha
    [Tags]                  password-empty

    Go To Login Page
    Fill Credentials            admin@smartbi.com    ${EMPTY}
    Submit Credentials
    Alert Text Should Be        password    A senha é obrigatória

Email em branco
    [Documentation]         Submetendo o formulário sem informa o e-mail
    [Tags]                  email-empty

    Go To Login Page
    Fill Credentials    ${EMPTY}    qacademy
    Submit Credentials
    Alert Text Should Be       email     O e-mail é obrigatório

Email e senha são obrigatórios
    [Documentation]         Submetendo o formulário sem informa os campos
    [Tags]                  fiel-empty

    Go To Login Page
    Submit Credentials
    Alert Text Should Be       email     O e-mail é obrigatório
    Alert Text Should Be        password    A senha é obrigatória





