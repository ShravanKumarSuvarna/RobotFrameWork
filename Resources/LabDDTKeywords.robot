*** Settings ***
Library     SeleniumLibrary
Library    String
*** Variables ***
${browser}      Edge
${url}      https://www.tutorialspoint.com/selenium/practice/selenium_automation_practice.php


*** Keywords ***
Launch App
    Open Browser        ${url}      ${browser}
    Maximize Browser Window

Close App
    Close Browser

Open Tutorial
    Go To    ${url}

Set Name
     [Arguments]        ${name}
     Input Text    xpath://input[@id='name']    ${name}

Set Email
    [Arguments]         ${email}
    Input Text    xpath://input[@id='email']    ${email}
    
    
Set Gender
    [Arguments]    ${gender}
    IF    '${gender}' == 'Male'
        Click Element    xpath://input[@id='gender']
    ELSE IF    '${gender}' == 'Female'
        Click Element    xpath://div[3]//div[1]//div[1]//div[2]//input[1]
    ELSE IF    '${gender}' == 'Other'
        Click Element    xpath://div[3]//div[1]//div[1]//div[3]//input[1]
    END


Set Mobile
        [Arguments]         ${mobile}
        Input Text    xpath://input[@id='mobile']    ${mobile}


Set Date of Birth
        [Arguments]         ${dob}
        Input Text    xpath://input[@id='dob']    ${dob}

Set Subject
        [Arguments]         ${subject}
        Input Text    xpath://input[@id='subjects']    ${subject}


Set Hobbies
    [Arguments]    ${hobby}
    ${hobbies}=    Split String    ${hobby}    separator=,
    FOR    ${hob}    IN    @{hobbies}
        ${trimmed}=    Strip String    ${hob}
        IF    '${trimmed}' == 'Sports'
            Click Element    xpath://input[@id='hobbies']
        ELSE IF    '${trimmed}' == 'Reading'
            Click Element    xpath://div[7]//div[1]//div[1]//div[2]//input[1]
        ELSE IF    '${trimmed}' == 'Music'
            Click Element    xpath://div[7]//div[1]//div[1]//div[3]//input[1]
        END
    END


Set Picture
        [Arguments]     ${path}
        Choose File    xpath://input[@id='picture']    ${path}


Set Current Address
            [Arguments]     ${address}
            Input Text    xpath:(//textarea[@id='picture'])[1]    ${address}

Set State
            [Arguments]         ${state}
            Select From List By Value    id:state       ${state}


Set City

            [Arguments]         ${city}
            Select From List By Value    id:city        ${city}
            
            
To Login
        Click Element    xpath://input[@value='Login']
        Reload Page