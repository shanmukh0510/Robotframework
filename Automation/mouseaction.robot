*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}  https://testautomationpractice.blogspot.com/
${browser}  chrome
*** Test Cases ***
rightclick
    open browser    ${url}  ${browser}
    Open Context Menu    xpath://button[normalize-space()='START']
    Sleep    2
    Close Browser

doubleclick
    open browser    ${url}  ${browser}
    Double Click Element    xpath://button[normalize-space()='Copy Text']
    Sleep    2
    Close Browser
    
    
