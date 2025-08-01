*** Settings ***
Resource    Step_Definition_Bundle.robot
Library    SeleniumLibrary

*** Keywords ***
User click Finish button
    Wait Until Page Contains Element    ${btn_finish}    ${timeout_20}
    Click Element    ${btn_finish}

Get prize value of following field
    [Arguments]    ${field_name}
    ${text_prize_xpath}=    Custom Xpath    ${text_prize}    ${field_name}
    Wait Until Page Contains Element    ${text_prize_xpath}    ${timeout_20}
    ${prize_value}=    Get Text    ${text_prize_xpath}
    Set Test Variable    ${${field_name} value}    ${prize_value}

Verify that ${prize} value is displayed
    Get prize value of following field    ${prize}
    Log    ${prize} value is ${${prize} value}.
    

Verify that total amount is the sum of item total + tax
    Get prize value of following field    Item total
    Get prize value of following field    Tax
    Get prize value of following field    Total
    ${sum}=    Evaluate    int(${Item total value}) + int(${Tax value})
    Should Be Equal As Strings    ${sum}    ${Total value}
