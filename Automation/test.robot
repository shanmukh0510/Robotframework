*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}  https://www.google.co.in/
${browser}  chrome


*** Test Cases ***
Google
    insidegoogle


*** Keywords ***
insidegoogle
    open browser    ${url}   ${browser}
    Maximize Browser Window
    Sleep   10
    Close Browser
