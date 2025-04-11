*** Settings ***
Library    Browser
Variables    ${CURDIR}/../../variables/common_variables.py
Resource    ${CURDIR}/../../resources/page_objects/login_page.robot


*** Keywords ***

Sidebar Search
    Click       xpath=//a[contains(text(),'Danh sách chuyến bay')]
Search flight
    Fill Text    xpath=//input[@placeholder='Nhập từ khóa tìm kiếm']    112233
    Click    xpath=//span[contains(text(),'Tìm kiếm')]
    Click    xpath=//span[contains(text(),'Detail')]
    Click    xpath=//span[contains(text(),'Thêm vào giỏ hàng')]
Add in to cart
    # Click    xpath=//button[@id='nz-tabs-0-tab-0'] 
    Click    xpath=//button[@id='nz-tabs-0-tab-1']
    Click    xpath=//span[contains(text(),'A-002')]
    Click    xpath=//span[contains(text(),'OK')]
    Click       xpath=//a[contains(text(),'Danh sách chuyến bay')]
Add to cart
    Sidebar Search
    Search flight
    Add in to cart