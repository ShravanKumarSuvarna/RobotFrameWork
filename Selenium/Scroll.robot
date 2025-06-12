

*** Settings ***

Library     SeleniumLibrary



*** Variables ***

${browser}      FireFox

${url}      https://www.amazon.in/




*** Test Cases ***

Verify login success with valid credentials

        [Documentation]

        Open Browser        ${url}      ${browser}

        Maximize Browser Window
        #Execute JavaScript    document.getElementByXPath("//a[normalize-space()='About Amazon']").scrollIntoView(true);
        Scroll Element Into View    xpath://a[normalize-space()='About Amazon']
        Sleep    2
        Wait Until Element Is Visible    xpath://a[normalize-space()='About Amazon']    timeout=10s

        Click Element    xpath://a[normalize-space()='About Amazon']
        Sleep    2
        Element Should Be Visible    xpath://div[@class='Page-header-main-navigation']//a[@class='NavigationItem-text-link'][normalize-space()='Who We Are']


        Close Browser
