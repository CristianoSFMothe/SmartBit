*** Settings ***
Library        Browser

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
    [Arguments]        ${expected_message}
    Wait For Elements State    
    ...    css=.Toastify__toast-body div >> text=${expected_message}
    ...    visible    5
    
    Wait For Elements State    
    ...    css=.Toastify__toast-body div
    ...    detached    10
    
User Shold Be Looged In
    [Arguments]        ${user_name}

    ${logged_user}    Set Variable    css=aside strong 

    Wait For Elements State    ${logged_user}     visible    5

    Get Text     ${logged_user}     equal    ${user_name}

Field Type Should Be Email   
    
    Get Attribute    css=input[placeholder="Seu e-mail"]    
    ...              Type    equal    email
    ...    

Alert Text Shold Be    
    [Arguments]        ${field}    ${expect_text}

    Get Text    xpath=//input[@type="${field}"]/..//span
    ...         equal    ${expect_text}

