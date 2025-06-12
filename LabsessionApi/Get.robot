*** Settings ***
Library         RequestsLibrary



*** Variables ***
${Base_Url}         https://videogamedb.uk:443
${EndPoint}         /api/videogame


*** Test Cases ***
Get request example
        Create Session      jsonlaceholder      ${Base_Url}
        ${response}=        Get On Session      jsonlaceholder      ${EndPoint}

        Log    ${response.status_code}
        Log    ${response.content}
        Should Be Equal As Numbers    ${response.status_code}    200


