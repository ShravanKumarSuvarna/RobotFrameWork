*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${BROWSER}      Chrome
${URL}         https://the-internet.herokuapp.com/windows

*** Test Cases ***
Verify Key Presses
    [Documentation]    Test pressing keys on the key press input field
    Open Browser       ${URL}    ${BROWSER}
    Maximize Browser Window
    Click Element    xpath://a[normalize-space()='Click Here']
    Sleep    2
    Switch Window    New Window
    Element Text Should Be    xpath://h3[normalize-space()='New Window']    New Window
    Sleep    2
    Close Window
    Switch Window   The Internet
    Element Text Should Be    xpath://h3[normalize-space()='Opening a new window']    Opening a new window
    Sleep    2


    Close Browser
