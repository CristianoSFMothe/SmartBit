*** Settings ***
Documentation       Suite de testes de pedido de ajuda

Resource            ../resources/base.robot
Resource    ../resources/services/enrolls.resource

Test Setup          Start App
Test Teardown       Finish App

*** Test Cases ***
Deve Pode Solicitar Ajuda
  
   ${admin}   Get Fixture    admin 
   ${help}    Get Fixture    help
   
   Resert Student       ${help}[student][email]
   
   ${token}             Get Service Token    ${admin}
   ${student_id}        POST New Student     ${token}       ${help}[student]  
   
   POST New Enroll      ${token}             ${student_id}   
   
   Login With Student Id    ${student_id}  
   
   Wait Until Element Is Visible    id=android:id/button1      timeout=5
   Click Element                    id=android:id/button1
   
   Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Pedir ajuda"]    timeout=5
   Click Element                    xpath=//android.widget.TextView[@text="Pedir ajuda"]
   
   Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Enviar dúvida"]    timeout=5
   Click Element                    xpath=//android.widget.TextView[@text="Enviar dúvida"]
   
   Wait Until Element Is Visible     xpath=//android.widget.EditText[@text="Escreva sua dúvida aqui"]
   Input Text                        xpath=//android.widget.EditText[@text="Escreva sua dúvida aqui"]
   ...                               ${help}[message]
   Click Text                        Enviar
   
   Wait Until Page Contains    Recebemos a sua dúvida. Agora é só aguardar até 24 horas para receber o nosso feedback.
   
   