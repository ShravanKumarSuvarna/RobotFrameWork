*** Settings ***
Library    RequestsLibrary

*** Variables ***
${Base_Url}        https://reqres.in/
${EndPoint}        api/users/2
${body}            {"name": "akash", "job": "RCB IT Cell"}
&{Headers}         Content-Type=application/json
...                x-api-key=reqres-free-v1

*** Test Cases ***
Delete
    Create Session    reqres    ${Base_Url}    headers=${Headers}
    ${response}=      Delete On Session    reqres    ${EndPoint}    data=${body}    headers=${Headers}

    Log    ${response.status_code}
    Log    ${response.content}
    Should Be Equal As Numbers    ${response.status_code}    204
