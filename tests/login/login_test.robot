*** Settings ***
Resource    ${CURDIR}/../../resources/page_objects/login_page.robot
Resource    ${CURDIR}/../../resources/page_objects/teams_page.robot
Library    Browser
Test Setup    Set Browser Timeout    30 seconds
Test Teardown    Close Browser    ALL

*** Test Cases ***
Add new flight Test

    Login To System
    Sleep    2s    
    Add Flighter To System
    Sleep    2s    

 
