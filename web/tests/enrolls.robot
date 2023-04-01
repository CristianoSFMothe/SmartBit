*** Settings ***
Documentation       Suit de teste de matriculas de alunos
...                 Administrador uma vez logado consegure matriculoa anos na academia


Resource        ../resources/base.resource


*** Test Cases ***
Deve Matricular Um Aluno

    ${admin}    Create Dictionary
    ...         name=Admin
    ...         email=admin@smartbit.com
    ...         password=qacademy

    Connect To Postgres
    Delete Enroll By Email    falcao@gmail.com
    Disconnect From Database
       
    Do login    ${admin}

    Go To Enrolls
    Go To Enroll Form
    Select Student    Falcão Não mexer
    Select Plan       Smart
    Fill Start Date

    Submit Enroll Form
    Verify Toaster    Matrícula cadastrada com sucesso  