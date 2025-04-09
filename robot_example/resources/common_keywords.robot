*** Settings ***
Library    String
Library    Collections

*** Keywords ***
Create User Dictionary
    [Arguments]    ${first_name}    ${last_name}    ${email}
    ${user}=    Create Dictionary
    ...    first_name=${first_name}
    ...    last_name=${last_name}
    ...    email=${email}
    RETURN    ${user}

Validate Email Format
    [Arguments]    ${email}
    ${is_valid}=    Run Keyword And Return Status
    ...    Should Match Regexp    ${email}    ^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$
    RETURN    ${is_valid}

Generate Random String
    [Arguments]    ${length}=8
    ${random_string}=    Evaluate    ''.join(random.choices(string.ascii_letters + string.digits, k=${length}))    random,string
    RETURN    ${random_string} 