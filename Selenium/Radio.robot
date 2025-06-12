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
        Page Should Contain Radio Button    xpath://input[@class='radioButton']
        Select Radio Button    radioButton    radio2
        Close Browser
        
        
