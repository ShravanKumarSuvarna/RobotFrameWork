*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Edge
${url}      https://admin-demo.nopcommerce.com/login?returnurl=%2Fadmin%2F


*** Keywords ***
Launch App
    Open Browser        ${url}      ${browser}
    Maximize Browser Window

Close App
    Close Browser

Open Login Page
    Go To    ${url}

SET Email
    [Arguments]     ${username}
    Input Text    //input[@id='Email']    ${username}

SET Password
    [Arguments]     ${password}
    Input Text    //input[@id='Password']     ${password}

Click Login
    Click Element    //button[@type='submit']

Error Message should be visible
    Element Text Should Be    //span[@id='Email-error']    Wrong email