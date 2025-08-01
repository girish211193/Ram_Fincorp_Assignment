*** Settings ***
Resource    Step_Definition_Bundle.robot
Library    SeleniumLibrary

*** Keywords ***
User click Continue button
    Wait Until Page Contains Element    ${btn_continue}    ${timeout_20}
    Click Element    ${btn_continue}