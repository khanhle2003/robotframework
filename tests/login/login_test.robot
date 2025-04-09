*** Settings ***
Resource    ${CURDIR}/../../resources/page_objects/login_page.robot
Library    Browser
Test Setup    Set Browser Timeout    30 seconds
Test Teardown    Close Browser    ALL

*** Test Cases ***
Valid Login Test
    Login To System
    Sleep    2s    
Invalid Login Test
    Login To System    username=invalid    password=invalid
    Sleep    2s    