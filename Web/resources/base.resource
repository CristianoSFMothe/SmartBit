*** Settings ***
Documentation       Arquivo principal

Resource            components/navbar.resource
Resource            components/toast.resource
Resource            pages/login.resource

*** Keywords ***
# Helpers
Do Login
    [Arguments]         ${email}        ${pass}         ${name}

    Go To Login Page
    Fill Credentials             ${email}        ${pass}
    Submit Credentials
    User Should Be Looged In     ${name}