*** Settings ***
Library    DataDriver     C:/Users/shkum/PycharmProjects/RobotFrameWork1/ddtLogindataCSV.csv       sheet_name=ddtLogindataCSV
Library     SeleniumLibrary



Resource        ../Resources/DDTKeywors.robot

Suite Setup     Launch App
Suite Teardown      Close App
Test Template       InvalidLogin

*** Test Cases ***
Login with user ${username} and ${password}     Default UserData

*** Keywords ***
InvalidLogin
        [Arguments]     ${username}     ${password}
        Sleep    2
        SET Email    ${username}
        Sleep    2
        SET Password    ${password}
        Sleep    2
        Click Login
        Sleep    2
        Error Message should be visible


