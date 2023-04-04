*** Settings ***
Documentation        Componete que tela de pedido de ajuda

Library              AppiumLibrary

*** Variables ***
${help_button}        xpath=//android.widget.TextView[@text="Enviar dúvida"]
${help_text}          xpath=//android.widget.EditText[@text="Escreva sua dúvida aqui"]

*** Keywords ***
Submite Helpe Order
  [Arguments]    ${text}

   Wait Until Element Is Visible    ${help_button}     timeout=5
   Click Element                     ${help_button} 
   
   Wait Until Element Is Visible     ${help_text}
   Input Text                        ${help_text}
   ...                               ${text}
   Click Text                        Enviar