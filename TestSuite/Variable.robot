*** Settings ***
Library     SeleniumLibrary
Variables       ./../variables.py


*** Variables ***
${name}     Nallin
${city}     Mangalore
@{list1}     red    green   blue
&{dict}     username=Admin      password=admin123


*** Test Cases ***
Define variables
        Log    ${name}
        Log    ${city}
        Log    ${list1}
        Log    ${list1[0]}
        FOR     ${element}      IN      @{LIST1}
            Log    ${element}
        END
        Log    ${dict}[username]
        Log    ${dict}[password]



Set variables at Testcase level
    [Tags]      Sanity
    Set Test Variable    ${address}     Pumpwell
    Log     ${address}


Set variables at Suite level
    Log    ${username}
    Log    ${password}