

*** Settings ***

Library     SeleniumLibrary

 
*** Variables ***

${browser}      Firefox

${url}      https://the-internet.herokuapp.com/download

${path}     C:\\Users\\shkum\\Downloads\\sampleFile (3).jpeg
 
 
*** Test Cases ***

Verify login success with valid credentials

        [Documentation]

        Open Browser        ${url}      ${browser}

        Maximize Browser Window

        Choose File    xpath://input[@id='file-upload']    ${path}

        Sleep    2s

        Click Element    xpath://input[@id='file-submit']

        Sleep    2s

        Wait Until Element Is Visible    xpath://h3[normalize-space()='File Uploaded!']

        ${text}=        Get Text    xpath://h3[normalize-space()='File Uploaded!']

        Log To Console    ${text}

        Close Browser


 