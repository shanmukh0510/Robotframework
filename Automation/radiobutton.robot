*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://testautomationpractice.blogspot.com/
${browser}  chrome
*** Test Cases ***
RadioButton
    open browser    ${url}  ${browser}
    Maximize browser window
    #name and value to click radio button
    Select Radio Button         gender   female
    sleep   3


*** Keywords ***
