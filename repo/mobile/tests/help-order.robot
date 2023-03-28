*** Settings ***
Documentation       Suite de testes de pedido de ajuda

Resource            ../resources/base.robot

#Test Setup          Start App
#Test Teardown       Finish App

*** Test Cases ***
Deve Pode Solicitar Ajuda
  
   ${admin}   Get Fixture    admin 
   ${help}    Get Fixture    help
   
   Resert Student       ${help}[student][email]
   
   ${token}             Get Service Token    ${admin}
   POST New Student     ${token}             ${help}[student]       