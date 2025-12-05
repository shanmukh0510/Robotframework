*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}    https://www.google.co.in/
${url2}    https://www.flipkart.com/
${browser}    chrome
*** Test Cases ***
closingebrowser
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    3

    Open Browser    ${url2}    ${browser}
    Maximize Browser Window
    Sleep    3
    #it closes only latest window
    #Close Browser
    #it closes all browser windows
    Close All Browsers

    
        