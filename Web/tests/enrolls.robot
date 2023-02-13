*** Settings ***
Documentation       Suite de teste de matriculas de alunos
...                 Administrador uma vez logado consegue matricular alunos na academia

Resource           ../resources/base.resource

*** Test Cases ***
Deve matricular um aluno
    [Documentation]     Logando com usuário corredo
    [Tags]              login

    ${admin}        Create Dictionary
    ...             email=admin@smartbit.com
    ...             pass=qacademy
    ...             name=Admin

    Do Login    ${admin}
    Click       css=a[href="/matriculas"]

