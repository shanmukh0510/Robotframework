*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}  https://testautomationpractice.blogspot.com/
${browser}  chrome
*** Test Cases ***
screenshot
    Open Browser    ${url}    ${browser}
    Capture Element Screenshot    xpath://input[@id='name']    fname.png
    Sleep    2
    Capture Page Screenshot    page.png
    Sleep    2
    Close Browser
