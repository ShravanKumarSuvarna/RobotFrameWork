*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${BROWSER}      Chrome
${URL}         https://www.tutorialspoint.com/selenium/practice/date-picker.php

*** Test Cases ***
Verify Key Presses
    [Documentation]    Test pressing keys on the key press input field
    Open Browser       ${URL}    ${BROWSER}
    Maximize Browser Window
    Click Element    xpath://input[@id='datetimepicker1']
    Sleep    2
    Select From List By Value    xpath:(//select[@class='flatpickr-monthDropdown-months'])[1]      2
    
    Sleep    4
    Click Element    xpath://span[@aria-label='March 14, 2025']
    Sleep    2
    
    Input Text    xpath:(//input[@aria-label='Hour'])[1]    10
    Sleep    2
    Input Text    xpath:(//input[@aria-label='Minute'])[1]    55
    Sleep    5

    
    Close Browser
