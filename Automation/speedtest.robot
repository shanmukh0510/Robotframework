*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${url}      https://testautomationpractice.blogspot.com/
${browser}      chrome
*** Test Cases ***
Speedtest
    ${speed}    get selenium speed
    log to console  ${speed}
    open browser    ${url}      ${browser}
    maximize browser window

    input text      xpath://input[@id='name']       shanmukh
    input text      xpath://input[@id='email']      shanmukharao@gmail.com
    input text      xpath://input[@id='phone']      1234567890
    input text      xpath://textarea[@id='textarea']        pune,india
    click element       xpath://input[@id='male']
    sleep   5
    ${speed}    get selenium speed
    log to console  ${speed}
    close browser


*** Keywords ***
