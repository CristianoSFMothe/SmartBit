*** Settings ***
Documentation         Gerenciando a massa de testes atraves do banco de dados

Library     DatabaseLibrary

*** Keywords ***
Connect To Postgres
    Connect To Database	    psycopg2	
    ...                     ugwbldbd	
    ...                     ugwbldbd	
    ...                     ziFOixraKug5cy8idQLXSqHhGSM2kGjj	
    ...                     tuffi.db.elephantsql.com	
    ...                     5432
    
Select Studente Where Email
    [Arguments]     ${email}
    
    ${query}        Set Variable
    ...             SELECT * FROM public.students WHERE email = '${email}'
    ${result}       Query           ${query}
    
    [Return]        ${result}[0]
    
Delete Enroll By Email
    [Arguments]     ${email}
    
    ${user}         Select Studente Where Email     ${email}
    
    ${query}        Set Variable
    ...             DELETE FROM public.enrollments WHERE student_id = '${user}[0]';
    
    Execute Sql String    ${query}
    
Delete Student By Email
    [Arguments]     ${email}
    
    ${query}        Set Variable
    ...             DELETE FROM public.students WHERE email = '${email}';
    
    Execute Sql String    ${query}
    
    
# helpers
Resert Student
    [Arguments]               ${email}
    
    Connect To Postgres
    Delete Student By Email    ${email}
    Disconnect From Database
        