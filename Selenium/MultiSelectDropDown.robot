*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      FireFox
${url}      https://demoqa.com/select-menu

*** Test Cases ***
Verify radio buttons

        [Documentation]     This a for Check box
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Execute JavaScript    document.getElementById('cars').scrollIntoView(true);
        #Scroll Element Into View    id:cars
        Select From List By Value    id:cars      volvo
        Sleep    2
        Select From List By Value    id:cars      saab
        Sleep    2
        Select From List By Value    id:cars      opel
        Sleep    2

        Unselect From List By Value    id:cars      volvo
        Sleep    2
        Close Browser


