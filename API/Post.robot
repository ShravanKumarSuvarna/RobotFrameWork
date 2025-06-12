*** Settings ***
Library    RequestsLibrary

*** Variables ***
${Base_Url}        https://videogamedb.uk:443
${EndPoint}        /api/videogame
&{Headers}         Content-Type=application/json
&{Body}            name=morpheus    job=leader

*** Test Cases ***
Post To VideoGameDB Without API Key
    Create Session    videogame_session    ${Base_Url}    verify=False
    ${response}=      Post On Session    videogame_session    ${EndPoint}    json=${Body}    headers=${Headers}

    Log    Status Code: ${response.status_code}
    Log    Response Body: ${response.content}
    Should Be Equal As Numbers    ${response.status_code}    201
