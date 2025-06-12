*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      FireFox
${url}      https://the-internet.herokuapp.com/javascript_alerts

*** Test Cases ***
This for Alerts

        [Documentation]     This a for  alerts
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        #simple alert
        Click Element    xpath://button[normalize-space()='Click for JS Alert']
        Sleep    2
        #Alert Should Be Present
        Handle Alert        action=ACCEPT       timeout=2

        #conformational
        Click Element    xpath://button[normalize-space()='Click for JS Confirm']
        Sleep    2
        #Alert Should Be Present
        Handle Alert        action=DISMISS      timeout=2


        #Input
        Click Element    xpath://button[normalize-space()='Click for JS Prompt']
        Sleep    2
        Input Text Into Alert    Nallin Pumpwell
        Sleep    2


        #Alert Should Not Be Present





        Close Browser


