*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      FireFox
${url}      https://opensource-demo.orangehrmlive.com/web/index.php/auth/login


*** Test Cases ***
Verify login sucess with valid credential

        [Documentation]     This test case is for a valid user login
        ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
        Call Method    ${chrome options}    add_argument    --headless
        Call Method    ${chrome options}    add_argument    --no-sandbox
        Call Method    ${chrome options}    add_argument    --disable-dev-shm-usage
        Create WebDriver    Chrome    options=${chrome options}
        Go To     https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
        Maximize Browser Window
        Wait Until Element Is Visible    xpath://input[@placeholder='Username']     timeout=10
        Input Text    xpath://input[@placeholder='Username']    Admin
        Input Text    xpath://input[@placeholder='Password']    admin123
        Click Element    xpath://button[normalize-space()='Login']
        Wait Until Element Is Visible    xpath://h6[normalize-space()='Dashboard']
        Element Should Be Visible    xpath://h6[normalize-space()='Dashboard']     timeout=10
        Close Browser
