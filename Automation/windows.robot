*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://robotframework.org/
${browser}    chrome
*** Test Cases ***
wondoeshandle
    Open Browser    ${url}    ${browser}
    Sleep    2
    Click Element    xpath://span[normalize-space()='NAVIGATE 2025']
    Sleep    2
    Switch Window    Robot Framework
    Sleep    2
    Close Window
    Sleep    2
    Close Browser       