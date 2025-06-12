
*** Test Cases ***

Login
        Setup
        Log To Console    Execute testcase1
        Teardown

AddToCart
        Setup
        Log To Console    Extecute textcase2
        Log To Console    Adding product to cart
        Teardown

*** Keywords ***
Setup
        Log To Console    Launch browser

Teardown
        Log To Console    Close Browser