*** Settings ***
Resource    Step_Definition_Bundle.robot

Library    SeleniumLibrary

*** Keywords ***

User enter login credential and enter Inventory Page
    [Arguments]    ${username}=${username}    ${password}=${password}
    User enter text in following field    Username    ${username}
    User enter text in following field    Password    ${password}
    Wait Until Page Contains Element    ${btn_login}    ${timeout_20}
    Click Element    ${btn_login}

Validate that Login page is open
    ${url}=    Get Location
    Should Be Equal As Strings    ${url}    ${application_url}