
*** Test Cases ***

Login
    Login
    
AddToCart
        AddToCart

*** Keywords ***
Login
        [Setup]     Launch Browser
        [Teardown]      Close Browser
        Log To Console    Logging into application
        Log To Console    user enters the username
        Log To Console    user enters the password
        Log To Console    user clicks on the login button
        Log To Console    User is navigated to home page
        
      

AddToCart
      
        [Setup]     Launch Browser
        [Teardown]      Close Browser
        Log To Console    Adding product to cart
        Log To Console    Logging into application
        Log To Console    user enters the username
        Log To Console    user enters the password
        Log To Console    user clicks on the login button
        Log To Console    User adds product to cart
        
Launch Browser
        Log To Console    Open Browser

Close Browser
        Log To Console    Close Browser
      

