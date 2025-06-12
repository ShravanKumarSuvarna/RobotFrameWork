*** Settings ***
Library     RequestsLibrary
Library    String

*** Variables ***
${BASE_URL}     https://videogamedb.uk:443
${Servicename}     /api/videogame
${sample_json}         {"name": "morpheus","job": "leader"}
&{BODY}
&{HEADERS}
&{response}


*** Test Cases ***
Get request example
    RequestsLibrary.Create Session  baseURI  ${BASE_URL}  verify=False
    &{BODY}=        Create Dictionary   name=morpheus    job=leader
    ${HEADERS}=     Create Dictionary   Content-type=application/json

    ${response}=    PUT On Session    baseURI    ${Servicename}    json=${BODY}    headers=${HEADERS}

    Log    ${response}
    Log    ${response.status_code}
