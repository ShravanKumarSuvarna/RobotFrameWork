

*** Settings ***

Library     SeleniumLibrary



*** Variables ***

${browser}      Chrome

${url}      https://demoqa.com/upload-download




*** Test Cases ***

Verify login success with valid credentials

        [Documentation]
        ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
        Call Method    ${chrome options}    add_argument    --headless
        Call Method    ${chrome options}    add_argument    --no-sandbox
        Call Method    ${chrome options}    add_argument    --disable-dev-shm-usage
        Create WebDriver    Chrome    options=${chrome options}
        Go To     https://demoqa.com/upload-download
        Maximize Browser Window
        Go To    https://www.amazon.in/
        Sleep    2
        Go Back
        Sleep    5
        Reload Page
        Sleep    3



        Close Browser
