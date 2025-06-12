*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${BROWSER}      Chrome
${URL}         https://the-internet.herokuapp.com/nested_frames

*** Test Cases ***
Verify Key Presses
    [Documentation]    Test pressing keys on the key press input field
    Open Browser       ${URL}    ${BROWSER}
    Maximize Browser Window
    Select Frame    xpath://frame[@name='frame-top']

    Sleep    2
    #Current Frame Should Contain    LEFT
    Select Frame    xpath://frame[@name='frame-left']
    Sleep    2
    ${Left_text}=       Get Text    xpath:(//body)[1]
    Log To Console    ${Left_text}
    Sleep    2
    Unselect Frame




    Select Frame    xpath://frame[@name='frame-top']
    Select Frame    xpath://frame[@name='frame-middle']
    Sleep    2
    ${Middle_text}=       Get Text    xpath:(//div[@id='content'])[1]
    Log To Console    ${Middle_text}
    Unselect Frame


    Select Frame    xpath://frame[@name='frame-top']
    Select Frame    xpath://frame[@name='frame-right']
    Sleep    2
    ${Right_text}=       Get Text    xpath:(//body)[1]
    Log To Console    ${Right_text}
    Unselect Frame


    Select Frame    xpath://frame[@name='frame-bottom']

    Sleep    2
    ${Bottom_text}=       Get Text    xpath:(//body)[1]
    Log To Console    ${Bottom_text}
    Unselect Frame






    Close Browser
