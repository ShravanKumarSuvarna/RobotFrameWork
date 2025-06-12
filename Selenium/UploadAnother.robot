

*** Settings ***

Library     SeleniumLibrary


*** Variables ***

${browser}      Firefox

${url}      https://demoqa.com/upload-download

${path}     C:\\Users\\shkum\\Downloads\\sampleFile (3).jpeg


*** Test Cases ***

Verify login success with valid credentials

        [Documentation]

        Open Browser        ${url}      ${browser}

        Maximize Browser Window

        Choose File    xpath://input[@id='uploadFile']    ${path}

        Sleep    2s



        Wait Until Element Is Visible    xpath://p[@id='uploadedFilePath']

        ${text}=        Get Text    xpath://p[@id='uploadedFilePath']

        Log To Console    ${text}

        Close Browser


