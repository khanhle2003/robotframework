*** Settings ***
Library    Browser
Variables    ${CURDIR}/../../variables/common_variables.py
Resource    ${CURDIR}/../../resources/page_objects/login_page.robot

*** Variables ***


*** Keywords ***

Sidebar Search
    Click       xpath=//a[@id='them-chuyen-bay']
  

Add New Fighter
    Click       xpath=//button[@class='ant-btn ant-btn-primary']
    
Fill Fighter Information
    Fill Text    xpath=//input[@name='flightCode']    112233


    Click         xpath=//select[@name='departureAirport']
    ${elements}=    Get Elements    xpath=//select[@name='departureAirport']/option
    ${departureAirport}=    Set Variable        Sân bay Nội bài
    ${found}=    Set Variable    ${FALSE}
    FOR    ${element}    IN    @{elements}
       ${text}=    Get Text    ${element}
       IF    '${text}' == '${departureAirport}'
        ${found}=    Set Variable    ${TRUE}
        Select Options By    xpath=//select[@name='departureAirport']    text    ${departureAirport}
        BREAK
       END
    END



    Click    xpath=//select[@name='arrivalAirport']
    ${elements}=    Get Elements    xpath=//select[@name='arrivalAirport']/option
    FOR    ${element}    IN    @{elements}
        ${text}=    Get Text    ${element}
        ${value}=    Get Attribute    ${element}    value
      
    END
    Select Options By    xpath=//select[@name='arrivalAirport']    value    2


    Fill Text    xpath=//input[@name='departureTime']    2025-12-25T14:30 
    Fill Text    xpath=//input[@name='arrivalTime']      2025-12-25T22:30
    Fill Text    xpath=//input[@name='basePrice']        1300000
    Fill Text    xpath=//input[@name='status']           1


    
    Click    xpath=//select[@name='aircraft']
    ${elements}=    Get Elements    xpath=//select[@name='aircraft']/option
    FOR    ${element}    IN    @{elements}
        ${text}=    Get Text    ${element}
        ${value}=    Get Attribute    ${element}    value
      
    END
    Select Options By    xpath=//select[@name='aircraft']   value    1



    Click    xpath=//select[@name='airline']
      ${elements}=    Get Elements    xpath=//select[@name='airline']/option
          FOR    ${element}    IN    @{elements}
        ${text}=    Get Text    ${element}
        ${value}=    Get Attribute    ${element}    value
      
    END
    Select Options By    xpath=//select[@name='airline']   value    1


    Click    xpath=//span[normalize-space()='Thêm']
    Click    xpath=//span[@class='ant-modal-close-x']


Back to welcome
    Click    xpath=//a[contains(text(),'Trang chủ')]
Add Flighter To System

    Sidebar Search
    Add New Fighter
    Fill Fighter Information
    Back to welcome
