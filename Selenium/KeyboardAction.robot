*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${BROWSER}      Chrome
${URL}         https://the-internet.herokuapp.com/key_presses

*** Test Cases ***
Verify Key Presses
    [Documentation]    Test pressing keys on the key press input field
    Open Browser       ${URL}    ${BROWSER}
    Maximize Browser Window
    Press Keys          xpath://input[@id='target']    SPACE
    Sleep              2s
    Press Keys          xpath://input[@id='target']    CONTROL
    Sleep              2s
    Press Keys          xpath://input[@id='target']    SHIFT
    Sleep              2s
    Close Browser
