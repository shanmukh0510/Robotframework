*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${url}      https://testautomationpractice.blogspot.com/
${browser}      chrome
*** Test Cases ***
Speedtest
    open browser    ${url}      ${browser}
    maximize browser window
    Set Selenium Speed    1 seconds
    Set Selenium Timeout    5 seconds
    Wait Until Page Contains    Automation Testing Practice
    input text      xpath://input[@id='name']       shanmukh
    input text      xpath://input[@id='email']      shanmukharao@gmail.com
    input text      xpath://input[@id='phone']      1234567890
    input text      xpath://textarea[@id='textarea']        pune,india
    click element       xpath://input[@id='male']
    sleep   5
    close browser

*** Keywords ***
