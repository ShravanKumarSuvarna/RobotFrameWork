

*** Settings ***

Library     SeleniumLibrary



*** Variables ***

${browser}      Chrome

${url}      https://the-internet.herokuapp.com/drag_and_drop




*** Test Cases ***

Verify the Action of Drag and Drop

        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Drag And Drop    xpath://div[@id='column-a']    xpath://div[@id='column-b']
        Sleep    2



        Close Browser
