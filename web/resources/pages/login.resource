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


Field Type Should Be Email   
    
    Get Attribute    css=input[placeholder="Seu e-mail"]    
    ...              Type    equal    email
    ...    

Alert Text Shold Be    
    [Arguments]        ${field}    ${expect_text}

    Get Text    xpath=//input[@type="${field}"]/..//span
    ...         equal    ${expect_text}

