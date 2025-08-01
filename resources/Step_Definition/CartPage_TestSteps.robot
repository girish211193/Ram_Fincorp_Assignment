*** Settings ***
Resource    Step_Definition_Bundle.robot
Library    SeleniumLibrary

*** Keywords ***
Verify that "${item_name}" is present in the cart
    ${item_present_xpath}=    Custom Xpath    ${text_item_name}    ${item_name}
    Wait Until Page Contains Element    ${item_present_xpath}    ${timeout_20}
    Log    ${item_name}" is present in the cart.

Verify that quantity of "${item_name}" is ${quantity}
    ${item_quantity_xpath}=    Custom Xpath    ${text_item_quantity}    ${item_name}    ${quantity}
    Wait Until Page Contains Element    ${item_quantity_xpath}    ${timeout_20}
    Log    Quantity of "${item_name}" is ${quantity}.

User clicks on Checkout button
    Wait Until Page Contains Element    ${btn_checkout}    ${timeout_20}
    Click Element    ${btn_checkout}