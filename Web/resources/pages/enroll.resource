*** Settings ***
Documentation       Keywords que reprenseta a págia de cadastros de matriculoas

Library         Browser


*** Keywords ***
Go To Enroll
    Click       css=a[href="/matriculas"]

Go To Enroll Form
    Click       css=a[href="/matriculas/new"]

Select Student
    [Arguments]     ${studant_name}

    Fill Text    xpath=//div[contains(text(), "nome do aluno")]/..//input
    ...          ${studant_name}

    Click       css=div[class$=option] >> text=${studant_name}

Select Plan
    [Arguments]         ${plan_name}

    Click       xpath=//label[text()="PLANO"]/..//div[contains(text(), "Selecione")]

    Click       css=div[class$=option] >> text=${plan_name}

Fill Start Date

    Focus           css=input[name=start_date]
    Keyboard Key    press    1
    Keyboard Key    press    1
    Keyboard Key    press    1
    Keyboard Key    press    1
    Keyboard Key    press    2
    Keyboard Key    press    0
    Keyboard Key    press    2
    Keyboard Key    press    3