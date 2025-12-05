*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://testautomationpractice.blogspot.com/
${browser}    chrome

*** Test Cases ***
fillformtest
    ${pagetitle}    launchingbrowser    ${url}    ${browser}
    Log To Console    ${pagetitle}
    Log    ${pagetitle}
    inputtingvalues    shanmukharao    shanmukharao@gmail.com
   
*** Keywords ***
launchingbrowser
    [Arguments]    ${weburl}    ${webbrowser}
    Open Browser    ${weburl}    ${webbrowser}
    Maximize Browser Window
    Sleep    2
    ${title}    Get Title
    [Return]    ${title}


inputtingvalues
    [Arguments]    ${firstname}    ${gmail}
    Input Text    xpath://input[@id='name']    ${firstname}
    Input Text    xpath://input[@id='email']    ${gmail}
    

    


