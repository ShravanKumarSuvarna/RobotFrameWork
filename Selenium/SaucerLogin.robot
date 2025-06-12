*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      FireFox
${url}      https://www.saucedemo.com/


*** Test Cases ***
Verify login sucess with valid credential

        [Documentation]     This test case is for a valid user login
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Wait Until Element Is Visible    xpath://input[@id='user-name']     timeout=5
        Input Text    xpath://input[@id='user-name']    standard_user
        Input Text    xpath://input[@id='password']     secret_sauce
        Click Element    xpath://input[@value='Login']
        Wait Until Element Is Visible    xpath://div[@class='app_logo']
        Element Should Be Visible    xpath://div[@class='app_logo']     timeout=5
        Close Browser