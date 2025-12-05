*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://testautomationpractice.blogspot.com/
${browser}  chrome

*** Test Cases ***
SelectDropdown
    open browser    ${url}   ${browser}
    maximize browser window
    select from list by label   id:country      Canada
    sleep   3
    select from list by index   xpath://select[@id='country']       5
    sleep   3
    select from list by value   xpath://select[@id='country']       india
    sleep   3



*** Keywords ***
