*** Settings ***
Resource    Step_Definition_Bundle.robot
Library    SeleniumLibrary

*** Keywords ***
User open Login Page
    Open Browser    ${application_url}    Chrome    executable_path=${chrome_path}
    Maximize Browser Window

User enter text in following field
    [Arguments]    ${field_name}    ${text}
    ${input_field_xpath}=    Custom Xpath    ${textarea_input_field}    ${field_name}
    Wait Until Page Contains Element    ${input_field_xpath}    ${timeout_20}
    Input Text    ${input_field_xpath}    ${text}