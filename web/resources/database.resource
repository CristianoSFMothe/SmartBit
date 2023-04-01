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

Select Student Where Email
    [Arguments]        ${email}

    ${query}        Set Variable
    ...             SELECT * FROM public.students WHERE email = '${email}';
    
    ${result}       Query    ${query}

    [Return]        ${result}[0]

Delete Enroll By Email
    [Arguments]        ${email}

    ${user}     Select Student Where Email    ${email}

    ${query}    Set Variable
    ...         DELETE FROM public.enrollments WHERE student_id = '${user}[0]';
    
    Execute Sql String    ${query}


# Helpers

Resert Student Enroll
    [Arguments]    ${email}

    Connect To Postgres
    Delete Enroll By Email    ${email}
    Disconnect From Database

