*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}    https://testautomationpractice.blogspot.com/
${browser}    chrome
*** Test Cases ***
alerthandle
    Open Browser    ${url}    ${browser}
    Click Button    xpath://button[@id='alertBtn']
    #press the ojk button
    Handle Alert    accept
    Click Button    xpath://button[@id='confirmBtn']
    #press cancel button
    Handle Alert    dismiss
    #verify the text on the alert window
    Alert Should Be Present    Press a button!
    #virify the texyt is not there on alert window
    Alert Should Not Be Present    Press a button!
*** Keywords ***
