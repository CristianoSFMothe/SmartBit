*** Settings ***
Documentation       Suite de testes de login

Resource            ../resources/base.robot

*** Test Cases ***
Deve abrir o app da Smartibit
    ${falcao}   Get Fixture    falcao
    
    Start App
    
    Input Text    xpath=//android.widget.EditText[@text="Informe o endereço ip da api"]    
    ...           ${API_URL}
    
    Input Text    xpath=//android.widget.EditText[@text="Informe seu código de acesso"]    
    ...           ${falcao}[student][id]
    
    Click Text    Entrar    
    
    Wait Until Page Contains    Olá, ${falcao}[student][name]!
    
      
    Finish App	 
  
  