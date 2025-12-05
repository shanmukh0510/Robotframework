*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.flipkart.com/
${BROWSER}    chrome
${EMAIL_FIELD}    xpath://input[@class='r4vIwl BV+Dqf']
${LOGIN_BUTTON}    xpath://span[normalize-space()='Login']

*** Test Cases ***
ValidationTest
    Open Browser    ${URL}    ${BROWSER}
    Wait Until Page Contains    Flipkart
    Maximize Browser Window
    Title Should Be    Online Shopping Site for Mobiles, Electronics, Furniture, Grocery, Lifestyle, Books & More. Best Offers!
    sleep   2
    Click Button    ${LOGIN_BUTTON}
    sleep  3
    Close Browser
