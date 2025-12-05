*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resourse.robot
Library        DataDriver        C:/Users/shanm/PycharmProjects/RobotFrameWork/Resources/LoginData.xlsx
Suite Setup    opening browser
Suite Teardown    closing browser
Test Template    invalid login

*** Test Cases ***
LoginTestUsingExcel using ${username} and ${password}
    

*** Keywords ***
invalid login
    [Arguments]    ${username}    ${password}
    inputting username    ${username}
    inputting password    ${password}
    click login
    error message should be visible





        


