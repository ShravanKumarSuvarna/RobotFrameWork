*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${BROWSER}      Chrome
${URL}         https://jqueryui.com/tabs/

*** Test Cases ***
Verify Key Presses
    [Documentation]    Test pressing keys on the key press input field
    Open Browser       ${URL}    ${BROWSER}
    Maximize Browser Window
    Select Frame    xpath://iframe[@class='demo-frame']
    Sleep    2
    Unselect Frame
    Select Frame    xpath://iframe[@class='demo-frame']
    Click Element    xpath://a[@id='ui-id-2']
    Sleep    4
    Unselect Frame
    Select Frame    xpath://iframe[@class='demo-frame']
    Click Element    xpath://a[@id='ui-id-3']
    Sleep    5


    Close Browser
