*** Settings ***
Library    Browser
Variables    ${CURDIR}/../../variables/common_variables.py

*** Variables ***
${LOGIN_BUTTON}    text="Đăng nhập"
${USERNAME_FIELD}    input[id="username"]
${PASSWORD_FIELD}    input[id="password"]

*** Keywords ***
Open Login Page
    New Browser    browser=${BROWSER}    headless=${HEADLESS}
    New Page    ${URL}
    Set Viewport Size    1920    1080
Click Login Button
    Click    ${LOGIN_BUTTON}
    
Input Username
    [Arguments]    ${username}
    Fill Text    ${USERNAME_FIELD}    ${username}
    
Input Password
    [Arguments]    ${password}
    Fill Text    ${PASSWORD_FIELD}    ${password}
    
Submit Login
    Click    xpath=//button[contains(text(),'ĐĂNG NHẬP')]
    
Login To System
    [Arguments]    ${username}=${USERNAME}    ${password}=${PASSWORD}
    Open Login Page
    Click Login Button
    Input Username    ${username}
    Input Password    ${password}
    Submit Login 