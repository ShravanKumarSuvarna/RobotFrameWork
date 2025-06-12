*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      FireFox
${url}      https://rahulshettyacademy.com/AutomationPractice/

*** Test Cases ***
Verify radio buttons

        [Documentation]     This a for Check box
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        ${labels}=      Get Selected List Label    id:dropdown-class-example
        Log    {labels}
        Select From List By Value    id:dropdown-class-example      option1
        Sleep    2
        Select From List By Index    id:dropdown-class-example      2
        Sleep    2
        Select From List By Label    id:dropdown-class-example    Option3
        Sleep    2


        Close Browser


