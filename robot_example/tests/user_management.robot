*** Settings ***
Documentation     Example test suite demonstrating Robot Framework features
Resource          ../resources/common_keywords.robot
Library           BuiltIn
Test Setup        Log    Starting test execution
Test Teardown     Log    Test execution completed

*** Variables ***
${VALID_EMAIL}    test@example.com
${INVALID_EMAIL}    not_an_email

*** Test Cases ***
Create Valid User
    [Documentation]    Creates a user with valid information
    ${user}=    Create User Dictionary
    ...    first_name=John
    ...    last_name=Doe
    ...    email=${VALID_EMAIL}
    Dictionary Should Contain Key    ${user}    first_name
    Dictionary Should Contain Key    ${user}    last_name
    Dictionary Should Contain Key    ${user}    email
    Should Be Equal    ${user}[first_name]    John
    Should Be Equal    ${user}[last_name]    Doe
    Should Be Equal    ${user}[email]    ${VALID_EMAIL}

Validate Email Addresses
    [Documentation]    Tests email validation functionality
    ${valid_result}=    Validate Email Format    ${VALID_EMAIL}
    ${invalid_result}=    Validate Email Format    ${INVALID_EMAIL}
    Should Be True    ${valid_result}
    Should Not Be True    ${invalid_result}

Generate Random Data
    [Documentation]    Tests random string generation
    ${random_string}=    Generate Random String    length=10
    Should Not Be Empty    ${random_string}
    Length Should Be    ${random_string}    10
    ${another_random}=    Generate Random String
    Should Not Be Equal    ${random_string}    ${another_random} 