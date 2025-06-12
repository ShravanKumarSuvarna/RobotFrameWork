*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      FireFox
${url}      https://www.tutorialspoint.com/selenium/practice/login.php


*** Test Cases ***
Verify login sucess with valid credential

        [Documentation]     This test case is for a valid user login
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Wait Until Element Is Visible    xpath://input[@id='email']     timeout=5
        Input Text    xpath://input[@id='email']    Kaushik@infy.com
        Input Text    xpath://input[@id='password']    AntiAIBRO
        Click Element    xpath://input[@value='Login']
        #Wait Until Element Is Visible    xpath://h6[normalize-space()='Dashboard']
        #Element Should Be Visible    xpath://h6[normalize-space()='Dashboard']     timeout=5
        Close Browser