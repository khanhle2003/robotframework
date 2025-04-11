*** Settings ***
Library    Browser
Variables    ${CURDIR}/../../variables/common_variables.py
Resource    ${CURDIR}/../../resources/page_objects/login_page.robot


*** Keywords ***

Sidebar Search
    Click       xpath=//a[contains(text(),'Giỏ hàng')]
     Click    xpath=//td[text()='BK17836']/parent::tr//span[text()='Xóa']
Delete in cart
    Sidebar Search
