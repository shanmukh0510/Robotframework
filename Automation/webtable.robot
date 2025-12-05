*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://testautomationpractice.blogspot.com/
${browser}    chrome

*** Test Cases ***
webtable
    Open Browser    ${url}    ${browser}
    ${rows}    Get Element Count    xpath://table[@name='BookTable']/tbody/tr
    ${column}    Get Element Count    xpath://table[@name='BookTable']/tbody/tr[1]/th
    Log To Console    ${rows}
    Log To Console    ${column}

    ${data}    Get Text    xpath://table[@name='BookTable']/tbody/tr[5]/td[2]
    Log To Console    ${data}
    ${alldata}    Get Text    xpath://table[@name='BookTable']/tbody
    Log To Console    ${alldata}

    Table Column Should Contain    xpath://table[@name='BookTable']    3    Selenium
    Table Row Should Contain    xpath://table[@name='BookTable']    6    JAVA
    Table Cell Should Contain    XPATH://table[@name='BookTable']    5    4    3000
    Table Header Should Contain    xpath://table[@name='BookTable']    Author
    
    Close Browser
