*** Settings ***
Resource    Step_Definition_Bundle.robot
Library    SeleniumLibrary
Library    String
Library    OperatingSystem

*** Keywords ***

Verify that Inventory Page Title is "${inventory_title}"
    Title Should Be    ${inventory_title}
    
Verify that user has successfully entered Inventory Page
    Verify that Inventory Page Title is "${inventory_page_title}"
    ${current_url}=    Get Location
    Should Be Equal As Strings    ${current_url}    ${application_url}${inventory_page_url}

User add "${item_name}" to cart
    ${add_to_cart_xpath}=    Custom Xpath    ${btn_add_to_cart}    ${item_name}
    Wait Until Page Contains Element    ${add_to_cart_xpath}    ${timeout_20}
    Click Element    ${add_to_cart_xpath}

User click on cart icon
    Wait Until Page Contains Element    ${icon_cart}    ${timeout_20}
    Click Element    ${icon_cart}

User click on Open menu button
    Wait Until Page Contains Element    ${hamburger_menu}    ${timeout_20}
    Click Element    ${hamburger_menu}

User click on Logout button
    Wait Until Page Contains Element    ${btn_sidebar_logout}    ${timeout_20}
    Click Element    ${btn_sidebar_logout}

