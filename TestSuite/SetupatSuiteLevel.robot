*** Settings ***

Suite Setup     Open DB connection
Suite Teardown      Close the DB connection
Resource        ./../Resources/Resource.robot

*** Test Cases ***
Testcase1
        #Log    Extecute testcase1
        Log To Console    Execute testcase1



Testcase2
        #Log    Extecute testcase2
        Log To Console    Execute testcase2

        

Testcase3
        #Log    Extecute testcase1
        Log To Console    Execute testcase3
