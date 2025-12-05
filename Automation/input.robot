*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}  https://www.google.co.in/
${browser}  chrome


*** Test Cases ***
inputBox
    Set Selenium Speed    5 seconds
    Open Browser    ${url}  ${browser}
    Input Text    xpath://textarea[@id='APjFqb']    google
    Click Button    xpath://div[@class='lJ9FBc']//input[@name='btnK']
    Wait Until Page Contains    google    
    Clear Element Text  //textarea[@id='APjFqb']
    Sleep   5
    Input Text    xpath://textarea[@id='APjFqb']    facebook
    Click Element    xpath://span[@class='KlpaXd z1asCe MZy1Rb']//*[name()='svg']//*[name()='path' and contains(@d,'M15.5 14h-')]


*** Keywords ***
