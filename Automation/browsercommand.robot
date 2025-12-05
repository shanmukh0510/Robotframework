*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}    https://www.google.co.in/
${url2}    https://testautomationpractice.blogspot.com/
${browser}    chrome
*** Test Cases ***
browsercommands
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Sleep    2
    Go To     ${url2}
    Sleep    2
    Go Back
    Sleep    2
    Close Browser
    