

*** Settings ***

Library     SeleniumLibrary



*** Variables ***

${browser}      Chrome

${url}      https://www.amazon.in/




*** Test Cases ***

Verify the Action of Right Click and Double click

        [Documentation]
        ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
        Call Method    ${chrome options}    add_argument    --headless
        Call Method    ${chrome options}    add_argument    --no-sandbox
        Call Method    ${chrome options}    add_argument    --disable-dev-shm-usage
        Create WebDriver    Chrome    options=${chrome options}
        Go To     https://www.amazon.in/
        Maximize Browser Window
        Open Context Menu    xpath://a[normalize-space()='Mobiles']
        #Right click
        Sleep    2
        Double Click Element    xpath://a[@href='/gp/sva/dashboard?ref_=nav_cs_apay']
        Sleep    2



        Close Browser
