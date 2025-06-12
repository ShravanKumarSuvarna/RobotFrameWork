*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      FireFox
${url}      https://www.tutorialspoint.com/selenium/practice/register.php


*** Test Cases ***
Verify login sucess with valid credential

        [Documentation]     This test case is for a valid user login
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Wait Until Element Is Visible    xpath://input[@id='firstname']     timeout=5
        Input Text    xpath://input[@id='firstname']    Kaushik
        Input Text    xpath://input[@id='lastname']    Pandith
        Input Text    xpath://input[@id='username']    InfyBoy
        Input Text    xpath://input[@id='password']    AkashSlayer
        Click Element    xpath://input[@value='Register']
        #Wait Until Element Is Visible    xpath://h6[normalize-space()='Dashboard']
        #Element Should Be Visible    xpath://h6[normalize-space()='Dashboard']     timeout=5
        Close Browser