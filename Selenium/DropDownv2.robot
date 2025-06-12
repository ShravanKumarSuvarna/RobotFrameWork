*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      FireFox
${url}      https://the-internet.herokuapp.com/dropdown

*** Test Cases ***
Verify radio buttons

        [Documentation]     This a for Check box
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        ${labels}=      Get Selected List Label    id:dropdown
        Log    {labels}
        Select From List By Value    id:dropdown      1
        Sleep    2
        Select From List By Label    id:dropdown    Option 2
        Sleep    2


        Close Browser


