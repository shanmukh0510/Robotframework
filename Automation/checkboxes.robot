*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${url}  https://testautomationpractice.blogspot.com/
${browser}  chrome
*** Test Cases ***
checkboxes
    open browser    ${url}  ${browser}
    #selecting checkboxes
    select checkbox     xpath://input[@id='sunday']
    select checkbox     id:monday
    sleep   2
    #uncheck checkboxes
    unselect checkbox    id:monday
    sleep   5

*** Keywords ***
