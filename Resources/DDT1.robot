
** Settings ***
Library        SeleniumLibrary
Resource    ../Resources/resourse.robot
Suite Setup    opening browser
Suite Teardown    closing browser
Test Template    invalid login

*** Test Cases ***           username                password
right user wrng pwd          standard_user           xyxrsdhjd           
wrng user rgt pswd           saucedemo               secret_sauce
wrng user wrng pwd           saucedemo                xyxrsdhjd 
right user empty pwd         standard_user            ${EMPTY}
empty user right pwd          ${EMPTY}                secret_sauce

*** Keywords ***
invalid login
    [Arguments]    ${username}    ${password}
    inputting username    ${username}
    inputting password    ${password}
    click login
    error message should be visible

        


