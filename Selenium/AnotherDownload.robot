

*** Settings ***

Library     SeleniumLibrary
Library    OperatingSystem
Library    Collections


*** Variables ***

${browser}      Firefox

${url}      https://demoqa.com/upload-download




*** Test Cases ***

Verify login success with valid credentials

        [Documentation]

        Open Browser        ${url}      ${browser}

        Maximize Browser Window
        Click Element    xpath://a[@id='downloadButton']
        Sleep    2s
        ${files}=        List Files In Directory        C:/Users/shkum/Downloads
        List Should Contain Value       ${files}        sampleFile(3).jpeg
        Sleep    2


        Close Browser
