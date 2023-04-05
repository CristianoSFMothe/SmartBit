*** Settings ***
Documentation        Suite de teste de recebimento de pedido de ajuda do Mobile

Resource             ../resources/base.resource

*** Test Cases ***
Deve receber uma notificação de pedido de ajuda
    [Documentation]        Recebimento de notificação    
    [Tags]                 notification

  
    ${admin}            Get Fixture    admin
    ${cristiano}        Get Fixture    cristiano

    Resert Student    ${cristiano}[student][email]

    ${token}            Get Service Token    ${admin}
    ${student_id}       POST New Student     ${token}             
    ...                 ${cristiano}[student]

    POST Question     ${student_id}        ${cristiano}[question]

    Do Login    ${admin}

    Open Notifications 

    Notifications Should Be    ${cristiano}[question] 

    Take Screenshot



   

