*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${URL}        https://the-internet.herokuapp.com/key_presses

*** Test Cases ***
Simulate Ctrl+A and Ctrl+C
    Open Browser       ${URL}    ${BROWSER}
    Maximize Browser Window

    Input Text         xpath://input[@id='target']    Hello World
    Sleep              1s
    Press Keys         xpath://input[@id='target']    CTRL+A
    Press Keys         xpath://input[@id='target']    CTRL+C


    Close Browser
