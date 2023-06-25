*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Login
    Open Browser                        https://www.saucedemo.com/          chrome
    Maximize Browser Window
    Wait Until Element Is Visible       id:user-name
    Input Text                          id:user-name                        standard_user
    Input Password                      id:password                         secret_sauce
    Click Element                       id:login-button
    Sleep                               5s
    Close Browser

Open SnappPay Application and View Purchase Orders
    Open Application    snapppay
    Log    Purchase Orders
    Capture Page Screenshot    Screenshot_Purchase_Orders

*** Keywords ***
Open Application
    Open Browser    www.snapppay.ir    chrome

Log
    Log To Console    Purchase Orders

Capture Page Screenshot
    Capture Page Screenshot    ${OUTPUT_DIR}/Screenshot_Purchase_Orders.png
