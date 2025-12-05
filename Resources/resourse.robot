*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${Url}    https://www.saucedemo.com/
${browser}    chrome

*** Keywords ***
opening browser
    open browser    ${url}  ${browser}
    Maximize Browser Window

closing browser
    Close Browser

logging into page 
    go to ${url}

inputting username
    [Arguments]        ${username}
    Input Text    xpath://input[@id='user-name']    ${username}
inputting password
    [Arguments]    ${password}
    Input Text    xpath://input[@id='password']    ${password}
click login
    Click Button    xpath://input[@id='login-button']
click menu
    Click Element    xpath://button[@id='react-burger-menu-btn']
click logout
    Click Element    xpath://a[@id='logout_sidebar_link']

error message should be visible
    Page Should Contain    Epic sadface: Username and password do not match any user in this service

home page should be visible
    Page Should Contain    Swag Labs





