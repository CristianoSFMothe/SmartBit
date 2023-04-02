*** Settings ***
Documentation       Suite de testes de login

Resource            ../resources/base.resource

Test Setup          Start App
Test Teardown       Finish App


*** Variables ***
${errir_401}       Acesso não autorizado! Entre em contato com a equipe de atendimento.

*** Test Cases ***
Deve abrir o app da Smartibit
    ${falcao}   Get Fixture    falcao      
    
    Login With Student Id     ${falcao}[student][id]   
    
    Wait Until Page Contains    Olá, ${falcao}[student][name]!    
      
Codigo de Aluno Incorreto
    Login With Student Id    9999
    
    Wait Until Page Contains    ${errir_401}
    
    
Codigo de Aluno Negativo
    Login With Student Id    -1
    
    Wait Until Page Contains   ${errir_401}   
    
    
Codigo de Aluno Alphanumerico
    Login With Student Id    abc123
    
    Wait Until Page Contains    ${errir_401}
  