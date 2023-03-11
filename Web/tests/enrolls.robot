*** Settings ***
Documentation       Suite de teste de matriculas de alunos
...                 Administrador uma vez logado consegue matricular alunos na academia

Resource           ../resources/base.resource

*** Test Cases ***    
Deve matricular um aluno
    [Documentation]     Logando com usuário administrado
    [Tags]              login

    ${admin}        Create Dictionary
    ...             email=admin@smartbit.com
    ...             pass=qacademy
    ...             name=Admin
    
    Connect To Postgres
    Delete Enroll By Email    falcao@gmail.com
    Disconnect From Database

    Do Login    ${admin}

    Go To Enroll
    Go To Enroll Form
    Select Student          Falcão Não mexer
    Select Plan             Smart
    Fill Start Date
    Submmit Enroll Form
    Verify Toaster    Matrícula cadastrada com sucesso
    

    Sleep    3

