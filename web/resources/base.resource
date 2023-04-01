*** Settings ***
Documentation        Tudo começa aqui

Resource            components/navbar.resource
Resource            components/toast.resource
Resource            pages/login.resource
Resource            pages/enroll.resource

Resource            database.resource


*** Keywords ***
# Helpers
Do login
    [Arguments]        ${user}

    Go To Login Page
    Fill Credencials           ${user}[email]      ${user}[password]
    Submit Credencials
    User Shold Be Looged In    ${user}[name]