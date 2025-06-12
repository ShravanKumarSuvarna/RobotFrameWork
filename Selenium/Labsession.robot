*** Settings ***
Library     SeleniumLibrary

*** Variables ***

${browser}      Chrome

${url}      https://omayo.blogspot.com/

${path}     C:\\Users\\shkum\\Downloads\\sampleFile (3).jpeg
*** Test Cases ***

Multi Select option

        [Documentation]     this for screen shot testing
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Select From List By Value    id:multiselect1        volvox
        Sleep    2
        Select From List By Value    id:multiselect1        audix
        Sleep    2


*** Test Cases ***
DropDown Testcase
        ${option_elements}=    Get WebElements    xpath=//select[@id='drop1']/option
        FOR    ${option}    IN    @{option_elements}
            Click Element    ${option}
            Sleep    1
        END

*** Test Cases ***
Text Extraction
        ${text_extracted}=      Get Text    css:div[id='Text1'] div[class='widget-content']
        Log To Console    ${text_extracted}
        Log    ${text_extracted}

*** Test Cases ***
Input Text TestCase
        Input Text    xpath://textarea[@id='ta1']    Pumpwell Bale Ft Nallin Kumar Kattel
        Sleep    5

*** Test Cases ***
Testcase Selenium Click

        Click Element    xpath://a[@id='link1']
        Sleep    2
        Page Should Contain Element    xpath://a[normalize-space()="'Public' Access specifier"]
        Go Back
        Sleep    2
        
*** Test Cases ***
Testcase Preloaded TextBox

        Input Text    xpath://input[@id='textbox1']    Feb 29 Inaugration
        Sleep    2
        
*** Test Cases ***
Click Buuton And Fill Text
        Click Element    xpath://button[@id='but2']
        Sleep    1
        Clear Element Text    xpath://textarea[normalize-space()='The cat was playing in the garden.']
        Sleep    1
        Input Text    css:div[id='HTML11'] textarea    All are invited
        Sleep    2
     
*** Test Cases ***   
testCase Buutons
        Click Element    xpath://button[normalize-space()='Submit']
        Sleep    1
        Click Element    xpath://button[normalize-space()='Login']
        Sleep    1
        Click Element    xpath://button[normalize-space()='Register']
        Sleep    1
        
*** Test Cases ***
Selenium 143

        Click Element    xpath://div[@id='HTML27']//a[@id='link2']
        Sleep    2
        Page Should Contain Element    xpath://a[normalize-space()="'Public' Access specifier"]
        Go Back
        Sleep    2
        
*** Test Cases ***
HTML Form
        Input Text    xpath://form[@name='form1']//input[@type='text']    Nallin Kumar
        Sleep    2
        Input Text    xpath://form[@name='form1']//input[@type='password']    Pumpwell Flyover
        Sleep    2
        Click Element    xpath://button[normalize-space()='LogIn']
        Sleep    2
        
        


        
*** Test Cases ***
FoorLoop
        @{list1}=       Get WebElements    css:div[id='HTML25'] div[class='widget-content']
        FOR    ${element}    IN    @{list1}    
            ${text}=    Get Text    ${element}     
            Log    ${text}
        END
        Sleep    2
        @{list2}=       Get WebElements    css:div[id='HTML26'] div[class='widget-content']
        FOR    ${element}    IN    @{list2}
        ${text}=    Get Text    ${element}    
        Log To Console    ${text}
        END
        Sleep    2

*** Test Cases ***
Alert

        Click Element    xpath://input[@id='alert2']
        Sleep    2
        Handle Alert        action=ACCEPT       timeout=2
        
*** Test Cases ***
Upload
        Choose File    xpath://input[@id='uploadfile']    ${path}
        Sleep    2


*** Test Cases ***
Try It
        Click Element    xpath://button[normalize-space()='Try it']
        Sleep    4
        
        
*** Test Cases ***
Wait 10 sec
        Click Element    xpath://button[normalize-space()='Check this']
        Sleep    11
        Click Element    xpath://input[@id='dte']
        Sleep    3
        
*** Test Cases ***
Radio options
        Click Element    xpath://input[@id='radio1']
        Sleep    1
        Click Element    xpath://input[@id='radio2']
        Sleep    2
        
        
*** Test Cases ***
Simple LOgin
        Input Text    xpath://input[@name='userid']    Nallin Anna
        Sleep    1
        Input Text    xpath://input[@name='pswrd']    PumpWell
        Sleep    1
        Click Element    xpath://input[@value='Login']
        Sleep    2
        Handle Alert        action=ACCEPT       timeout=3
        Sleep    3
        
        
*** Test Cases ***
Multi Handle
    ${handles}=            Get Window Handles
    ${original_handle}=    Set Variable    ${handles[0]}
    Log To Console         Original window handle: ${original_handle}

    Click Link             Click Here
    Sleep                  3s

    ${all_windows}=        Get Window Handles
    Log To Console         All windows: ${all_windows}
    Length Should Be       ${all_windows}    2

    Switch Window          handle=${all_windows[1]}
    #Title Should Be        New Window

    Close Window
    Sleep                  1s

    Switch Window          handle=${original_handle}
    #Title Should Be        The Internet

        Close Browser
