*** Settings ***
Documentation       Suit de teste de matriculas de alunos
...                 Administrador uma vez logado consegure matricula alunos na academia

Resource        ../resources/base.resource


*** Test Cases ***
Deve Matricular Um Aluno

    ${admin}        Get Fixture    admin

    ${student}      Get Fixture    student

    Resert Student Enroll    ${student}[email]
       
    Do login    ${admin}

    Go To Enrolls
    Go To Enroll Form
    Select Student    ${student}[name]
    Select Plan       ${student}[enroll][plan]
    Fill Start Date

    Submit Enroll Form
    Verify Toaster    Matrícula cadastrada com sucesso  