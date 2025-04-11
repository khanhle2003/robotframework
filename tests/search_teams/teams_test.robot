*** Settings ***
Resource    ${CURDIR}/../../resources/page_objects/add_to_cart.robot
Resource    ${CURDIR}/../../resources/page_objects/teams_page.robot
Library    Browser
Test Setup    Set Browser Timeout    30 seconds
Test Teardown    Close Browser    ALL

*** Test Cases ***
Valid Search Test
    Login To System
    Sleep    2s    
    Add to cart
    Sleep    2s   