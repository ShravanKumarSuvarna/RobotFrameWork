

*** Settings ***

Library     SeleniumLibrary



*** Variables ***

${browser}      Chrome

${url}      https://www.amazon.in/




*** Test Cases ***

Verify the Action of Mouse Howering

        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Mouse Over    xpath://span[normalize-space()='Prime']
        Sleep    4
        Click Element    xpath://img[@id='multiasins-img-link']
        Sleep    2
        Element Should Be Visible    xpath://h1[normalize-space()='Welcome to Prime']
        Sleep    2
        
        



        Close Browser
