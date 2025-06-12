*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${BROWSER}      Chrome
${URL}         https://jqueryui.com/datepicker/

*** Test Cases ***
Verify Key Presses
    [Documentation]    Test pressing keys on the key press input field
    Open Browser       ${URL}    ${BROWSER}
    Maximize Browser Window
    Select Frame    xpath://iframe[@class='demo-frame']
    Sleep    2
    Current Frame Should Contain    Date
    Click Element    xpath://input[@id='datepicker']
    Sleep    2
    Click Element    xpath:(//a[normalize-space()='11'])[1]
    Sleep    2
    Page Should Contain Element    xpath:(//p[normalize-space()='Date:'])[1]
    Sleep    4
    Close Browser
