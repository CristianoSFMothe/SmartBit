*** Settings ***
Documentation       Arquivo principal

Resource            components/navbar.resource
Resource            components/toast.resource
Resource            components/notification.resource
Resource            pages/login.resource
Resource            pages/enroll.resource
Resource            database.resource
Resource            services/sessions.resource
Resource            services/students.resource

Library             JSONLibrary

*** Keywords ***
# Helpers
Do Login
    [Arguments]         ${user}

    Go To Login Page
    Fill Credentials             ${user}[email]        ${user}[password]
    Submit Credentials
    User Should Be Looged In     ${user}[name]
    
Get Fixture 
    [Arguments]     ${fixture_file}
    
    ${fixture}      Load Json From File    
    ...             ${EXECDIR}/resources/fixtures/${fixture_file}.json
    ...             encoding=UTF-8 
    
    [Return]        ${fixture}
    
