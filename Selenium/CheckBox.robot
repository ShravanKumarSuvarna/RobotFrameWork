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
        Page Should Contain Checkbox    xpath://input[@type='checkbox']
        Select Checkbox    checkBoxOption1

        Close Browser
        
        
