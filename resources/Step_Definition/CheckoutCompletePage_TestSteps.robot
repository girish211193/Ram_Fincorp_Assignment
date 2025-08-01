*** Settings ***
Resource    Step_Definition_Bundle.robot
Library    SeleniumLibrary

*** Keywords ***
User click Back Home button
    Wait Until Page Contains Element    ${btn_back_home}    ${timeout_20}
    Click Element    ${btn_back_home}