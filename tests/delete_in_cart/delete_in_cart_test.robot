*** Settings ***
Resource    ${CURDIR}/../../resources/page_objects/login_page.robot
Resource    ${CURDIR}/../../resources/page_objects/delete_in_cart.robot
Library    Browser
Test Setup    Set Browser Timeout    30 seconds
Test Teardown    Close Browser    ALL

*** Test Cases ***
Login Test

    Login To System
    Sleep    2s       
    Delete in cart
    Sleep    2s    
