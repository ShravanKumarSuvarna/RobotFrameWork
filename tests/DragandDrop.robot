

*** Settings ***

Library     SeleniumLibrary



*** Variables ***

${browser}      Chrome

${url}      https://the-internet.herokuapp.com/drag_and_drop




*** Test Cases ***

Verify the Action of Drag and Drop

        [Documentation]
        ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
        Call Method    ${chrome options}    add_argument    --headless
        Call Method    ${chrome options}    add_argument    --no-sandbox
        Call Method    ${chrome options}    add_argument    --disable-dev-shm-usage
        Create WebDriver    Chrome    options=${chrome options}
        Go To     https://the-internet.herokuapp.com/drag_and_drop
        Maximize Browser Window
        Drag And Drop    xpath://div[@id='column-a']    xpath://div[@id='column-b']
        Sleep    2



        Close Browser
