*** Settings ***
Documentation       Suite de teste de autenticação
...                 Administrador deve acessar o portal de gestão de academias

Library   Browser

*** Test Cases ***
Login do Administrador
    New Browser     headless=False      browser=chromium
    New Page        http://localhost:3000

    Fill Text       css=input[name=email]       admin@smartbit.com
    Fill Text       css=input[name=password]    qacademy

    Click           css=button >> text=Entrar no sistema

    ${logged_user}      Set Variable    css=aside strong

    Wait For Elements State    ${logged_user}     visible     5

    Get Text                   ${logged_user}     equal   Admin
    
Email não cadastrado
    New Browser     headless=False      browser=chromium
    New Page        http://localhost:3000

    Fill Text       css=input[name=email]       404@smartbit.com
    Fill Text       css=input[name=password]    qacademy

    Click           css=button >> text=Entrar no sistema
    
    Wait For Elements State
    ...     css=.Toastify__toast-body div >> text=Suas credenciais são inválidas, por favor tente novamente!
    ...     visible     5


Senha inválida
    [Tags]          temp

    New Browser     headless=False      browser=chromium
    New Page        http://localhost:3000

    Fill Text       css=input[name=email]       admin@smartbit.com
    Fill Text       css=input[name=password]    abc123

    Click           css=button >> text=Entrar no sistema

    Wait For Elements State
    ...     css=.Toastify__toast-body div >> text=Suas credenciais são inválidas, por favor tente novamente!
    ...     visible     5

