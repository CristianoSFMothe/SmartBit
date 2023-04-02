*** Settings ***
Documentation       Arquivo prinicipal

Library             AppiumLibrary
Library             JSONLibrary

Resource            screens/login.resource

Resource            services/sessions.resource
Resource            services/students.resource

Resource            database.resource

*** Keywords ***
Start App
    Open Application	  http://localhost:4723/wd/hub	
    ...                 alias=Smartbit
    ...                 automationName=UiAutomator2
    ...                 platformName=Android	
    ...                 deviceName='Android Simulator'	
    ...                 app=${EXECDIR}/app/smartbit-beta.apk
    ...                 udid=ZF523B8W4Q
    ...                 autoGrantPermissions=true
  
    Wait Until Page Contains    Informe seu código de acesso

Finish App
    Capture Page Screenshot
    Close Application
    
    
# Helpers
Get Fixture
    [Arguments]         ${fixture_file}
    
    ${fixture}          Load Json From File    
    ...                 ${EXECDIR}/resources/fixtures/${fixture_file}.json
    ...                 encoding=UTF-8
    
    [Return]            ${fixture}