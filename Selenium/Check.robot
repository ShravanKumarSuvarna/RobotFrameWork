*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      FireFox
${url}      https://the-internet.herokuapp.com/checkboxes

*** Test Cases ***
Verify radio buttons

        [Documentation]     This a for Check box
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        ${elements}=        Get WebElements    xpath://input[@type='checkbox']
        FOR    ${element}    IN    @{elements}
            Click Element    ${element}
            Sleep    2

        END

        Close Browser


