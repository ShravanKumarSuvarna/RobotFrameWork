*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
Varify login functionality
        [Tags]      Sanity
        Log    user enters yhe username
        Log    user enterns the password
        Log    user clicks on login page
        Log    User is redericted to home page


*** Test Cases ***
Varify login functionality with keywords
        Login




*** Keywords ***
Login
        Log    user enters yhe username
        Log    user enterns the password
        Log    user clicks on login page
        Log    User is redericted to home page
