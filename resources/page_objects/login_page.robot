*** Settings ***
Library    Browser
Variables    ${CURDIR}/../../variables/common_variables.py

*** Variables ***
${LOGIN_BUTTON}    text="Đăng nhập"
${USERNAME_FIELD}    input[name="txtusername"]
${PASSWORD_FIELD}    input[name="txtpassword"]

*** Keywords ***
Open Login Page
    New Browser    browser=${BROWSER}    headless=${HEADLESS}
    New Page    ${URL}
    
Click Login Button
    Click    ${LOGIN_BUTTON}
    
Input Username
    [Arguments]    ${username}
    Fill Text    ${USERNAME_FIELD}    ${username}
    
Input Password
    [Arguments]    ${password}
    Fill Text    ${PASSWORD_FIELD}    ${password}
    
Submit Login
    Click    ${LOGIN_BUTTON}
    
Login To System
    [Arguments]    ${username}=${USERNAME}    ${password}=${PASSWORD}
    Open Login Page
    Click Login Button
    Input Username    ${username}
    Input Password    ${password}
    Submit Login 