*** Settings ***
Documentation       Suite de testes de pedido de ajuda     

Resource            ../resources/base.resource

Test Setup          Start App
Test Teardown       Finish App

*** Test Cases ***
Deve Pode Solicitar Ajuda
 
  
   ${admin}        Get Fixture    admin 
   ${cristiano}    Get Fixture    cristiano
   
   Resert Student       ${cristiano}[student][email]
   
   ${token}             Get Service Token    ${admin}
   ${student_id}        POST New Student     ${token}       ${cristiano}[student]  
   
   POST New Enroll      ${token}             ${student_id}   
   
   Login With Student Id    ${student_id}  
   
   Confirm Popup   
   Go To Help Order      
   Submite Helpe Order        ${cristiano}[message]
   
   Wait Until Page Contains    Recebemos a sua dúvida. Agora é só aguardar até 24 horas para receber o nosso feedback.
   
   