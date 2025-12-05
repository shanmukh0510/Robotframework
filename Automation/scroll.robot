*** Settings ***
Library    SeleniumLibrary
Library    ../.venv/Lib/site-packages/robot/libraries/Telnet.py

*** Variables ***
${url}    https://en.wikipedia.org/wiki/Main_Page  
${browser}    chrome
*** Test Cases ***
Scrollingpage
    Open Browser    ${url}    ${browser}
    #scroll page with pixals
    Execute Javascript        window.scrollTo(0,2500)  
    Sleep    3
    #scroll to element
    Scroll Element Into View    //img[@alt='Philippe Chaperon']
    Sleep    3
    Execute Javascript     window.scrollTo(0,document.body.scrollHeight)
    Sleep    3
    Execute Javascript    window.scrollTo(0,-document.body.scrollHeight)
    Sleep    3
    close browser
    