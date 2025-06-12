*** Keywords ***
loginintoapplication
        Log    user enters yhe username
        Log    user enterns the password
        Log    user clicks on login page
        Log    User is redericted to home page

Launch Browser
        #Log    launching the browser
        Log To Console    open browser

Close the Browser
        #Log    Close the browser
        Log To Console    Close browser
        
Open DB connection
        #Log    Open the db connection
        Log To Console    Execute testcase1
        
Close the DB connection
        #Log    Close the db connection
        Log To Console    Execute testcase1