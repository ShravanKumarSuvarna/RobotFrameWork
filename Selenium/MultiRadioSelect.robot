*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      FireFox
${url}      https://rahulshettyacademy.com/AutomationPractice/

*** Test Cases ***
Verify radio buttons

        [Documentation]     This a for radio button
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        ${elements}=        Get WebElements    xpath://input[@class='radioButton']
        FOR    ${element}    IN    @{elements}
            Click Element    ${element}
            Sleep    2

        END

*** Test Cases ***
Verify multi select
        
        ${checkboxes}=      Get WebElements    xpath://input[@type='checkbox']
        FOR    ${element}    IN    @{checkboxes}
            Click Element    ${element}
            Sleep    2
             
        END


        Close Browser


