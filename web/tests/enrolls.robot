*** Settings ***
Documentation       Suite de teste de matriculas de alunos
...                 Administrador uma vez logado consegure matricula alunos na academia

Resource        ../resources/base.resource


*** Test Cases ***
Testando API
    [Tags]    api

    ${admin}     Get Fixture    admin
    ${falcao}    Get Fixture    falcao

    ${token}    Get Service Token     ${admin}

    POST New Student    ${token}    $student   
    
    POST New Student    ${token}    ${falcao}[student]
Deve Matricular Um Aluno

    ${admin}        Get Fixture    admin

    ${falcao}      Get Fixture    falcao

    Resert Student    ${falcao}[student][email]

    ${token}    Get Service Token    ${admin}
    POST New Student    ${token}     $${falcao}[student]
       
    Do login    ${admin}

    Go To Enrolls
    Go To Enroll Form
    Select Student    ${falcao}[student][name]
    Select Plan       ${falcao}[enroll][plan]
    Fill Start Date

    Submit Enroll Form
    Verify Toaster    Matrícula cadastrada com sucesso  
