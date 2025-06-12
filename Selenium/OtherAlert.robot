*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      FireFox
${url}      https://demoqa.com/alerts

*** Test Cases ***
This for Alerts

        [Documentation]     This a for  alerts
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        #simple alert
        Click Element    xpath://button[@id='alertButton']
        Sleep    2
        #Alert Should Be Present
        Handle Alert        action=ACCEPT       timeout=2

        #conformational
        Execute JavaScript    document.getElementById('timerAlertButton').scrollIntoView(true);

        Click Element    xpath://button[@id='timerAlertButton']
        Alert Should Be Present    timeout=5
        #Alert Should Be Present
        Handle Alert        action=ACCEPT
        
        
        Click Element    xpath://button[@id='confirmButton']
        #Alert Should Be Present    timeout=5
        #Alert Should Be Present
        Sleep    2
        Handle Alert        action=ACCEPT       timeout=2
        


        #Input
        Click Element    xpath://button[@id='promtButton']
        Sleep    2
        Input Text Into Alert    Nallin Pumpwell
        Sleep    2


        #Alert Should Not Be Present





        Close Browser


