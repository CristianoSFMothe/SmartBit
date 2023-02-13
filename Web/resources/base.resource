*** Settings ***
Documentation       Arquivo principal

Resource            components/navbar.resource
Resource            components/toast.resource
Resource            pages/login.resource

*** Keywords ***
# Helpers
Do Login
    [Arguments]         ${user}

    Go To Login Page
    Fill Credentials             ${user}[email]        ${user}[pass]
    Submit Credentials
    User Should Be Looged In     ${user}[name]