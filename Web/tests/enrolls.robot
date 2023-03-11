*** Settings ***
Documentation       Suite de teste de matriculas de alunos
...                 Administrador uma vez logado consegue matricular alunos na academia

Resource           ../resources/base.resource


*** Test Cases ***    
Deve matricular um aluno
    [Documentation]     Logando com usuário administrado
    [Tags]              login    

    ${admin}          Get Fixture    admin   
    ${student}        Get Fixture    student  
    
    Connect To Postgres
    Delete Enroll By Email    ${student}[email]
    Disconnect From Database

    Do Login    ${admin}

    Go To Enroll
    Go To Enroll Form
    Select Student          ${student}[name]
    Select Plan             ${student}[enroll][plan]
    Fill Start Date
    Submmit Enroll Form
    Verify Toaster    Matrícula cadastrada com sucesso
    

    Sleep    3

