

*** Settings ***

Library     SeleniumLibrary



*** Variables ***

${browser}      Chrome

${url}      https://demoqa.com/upload-download




*** Test Cases ***

Verify login success with valid credentials

        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Go To    https://www.amazon.in/
        Sleep    2
        Go Back
        Sleep    5
        Reload Page
        Sleep    3



        Close Browser
