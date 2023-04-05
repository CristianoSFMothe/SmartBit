*** Settings ***
Documentation        Suite de teste de recebimento de pedido de ajuda do Mobile

Resource             ../resources/base.resource

*** Test Cases ***
Deve receber uma notificação de pedido de ajuda

    # Dado que tenho um aluno cadastrado
    ${admin}            Get Fixture    admin
    ${cristiano}        Get Fixture    cristiano

    Resert Student    ${cristiano}[student][email]

    ${token}            Get Service Token    ${admin}
    ${student_id}       POST New Student     ${token}             
    ...                 ${cristiano}[student]

    # Quando o aluno envia um pedido de ajuda via mobile
    POST Question     ${student_id}        ${cristiano}[question]


    # Então devo ver uma notificação no painel do administrador
    Do Login    ${admin}

    Click    xpath=(//aside//button)[1]

    Wait For Elements State    css=.scrollbar-container p
    ...                        visible
    ...                        timeout=2


    Get Text    css=.scrollbar-container p        
    ...         equal      ${cristiano}[question]      


   

