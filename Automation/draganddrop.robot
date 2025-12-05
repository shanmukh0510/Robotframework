*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://testautomationpractice.blogspot.com/
${browser}    chrome
*** Test Cases ***
draganddrop
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    2
    Drag And Drop    xpath://p[normalize-space()='Drag me to my target']    xpath://div[@id='droppable']
    Sleep    2
    Close Browser
    


 