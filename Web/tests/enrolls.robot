*** Settings ***
Documentation       Suite de teste de matriculas de alunos
...                 Administrador uma vez logado consegue matricular alunos na academia

Resource           ../resources/base.resource

*** Test Cases ***
Testa no banco de dados
    [Tags]      db
    Connect To Postgres
    ${user}     Select Studente Where Email    falcao@gmail.com
    Delete Enroll    ${user}[0]
    Disconnect From Database
    
    
Deve matricular um aluno
    [Documentation]     Logando com usuário administrado
    [Tags]              login

    ${admin}        Create Dictionary
    ...             email=admin@smartbit.com
    ...             pass=qacademy
    ...             name=Admin
    
    Connect To Postgres
    Delete Enroll

    Do Login    ${admin}

    Go To Enroll
    Go To Enroll Form
    Select Student          Falcão Não mexer
    Select Plan             Smart
    Fill Start Date
    Submmit Enroll Form
    Verify Toaster    Matrícula cadastrada com sucesso
    

    Sleep    3

