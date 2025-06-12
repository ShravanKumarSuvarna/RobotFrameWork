*** Settings ***
Library    DataDriver     C:/Users/shkum/PycharmProjects/RobotFrameWork1/dummy_data_v1.csv       sheet_name=dummy_data_v1
Library     SeleniumLibrary



Resource        ../Resources/LabDDTKeywords.robot

Suite Setup     Launch App
Suite Teardown      Close App
Test Template       StudentLogin


*** Test Cases ***
Fill with name ${name} and ${email} and ${gender} and ${mobile} and ${dob} and ${subject} and ${hobby} and ${path} and ${address} and ${state} and ${city}  Default UserData

*** Keywords ***
StudentLogin
        [Arguments]     ${name}     ${email}    ${gender}   ${mobile}   ${dob}  ${subject}  ${hobby}    ${path}     ${address}      ${state}    ${city}
        Sleep    2
        Set Name    ${name}
        Sleep    1
        Set Email    ${email}
        Sleep    1
        Set Gender    ${gender}
        Sleep    1
        Set Mobile    ${mobile}
        Sleep    1
        Set Date of Birth    ${dob}
        Sleep    1
        Set Subject    ${subject}
        Sleep    1
        Set Hobbies    ${hobby}
        Sleep    1
        Set Picture    ${path}
        Sleep    1
        Set Current Address    ${address}
        Sleep    1
        Set State    ${state}
        Sleep    1
        Set City    ${city}
        Sleep    1
        To Login


