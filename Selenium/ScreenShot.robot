

*** Settings ***

Library     SeleniumLibrary
Library    OperatingSystem
Library    Collections


*** Variables ***

${browser}      Chrome

${url}      https://demoqa.com/upload-download




*** Test Cases ***

Verify login success with valid credentials

        [Documentation]     this for screen shot testing
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Capture Page Screenshot         C:/Users/shkum/Downloads/robo.png
        Sleep    2
        Capture Element Screenshot    xpath://a[@id='downloadButton']      C:/Users/shkum/Downloads/robo1.png
        Sleep    5




        Close Browser
