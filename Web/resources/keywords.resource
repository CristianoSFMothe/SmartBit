*** Settings ***
Documentation       Keywords para o cenário de teste de Login

Library     Browser

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
    [Arguments]     ${expectec_message}

    Wait For Elements State
    ...     css=.Toastify__toast-body div >> text=${expectec_message}
    ...     visible     5

    Wait For Elements State
    ...     css=.Toastify__toast-body div
    ...     detached    10


User Should Be Looged In
    [Arguments]         ${username}

    ${logged_user}      Set Variable    css=aside strong

    Wait For Elements State    ${logged_user}     visible     5
    Get Text                   ${logged_user}     equal       ${username}


Field Tyoe Should Be Email
    Get Attribute    css=input[placeholder="Seu e-mail"]
    ...              type       equal       email

Alert Text Should Be
    [Arguments]         ${field}        ${expexted_text}

    Get Text    xpath=//input[@type="${field}"]/..//span
    ...         equal       ${expexted_text}