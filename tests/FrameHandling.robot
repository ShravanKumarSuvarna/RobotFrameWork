

*** Settings ***

Library     SeleniumLibrary



*** Variables ***

${browser}      Chrome

${url}      https://www.amazon.in/




*** Test Cases ***

Verify the Action of Right Click and Double click

        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Open Context Menu    xpath://a[normalize-space()='Mobiles']
        #Right click
        Sleep    2
        Double Click Element    xpath://a[@href='/gp/sva/dashboard?ref_=nav_cs_apay']
        Sleep    2



        Close Browser
