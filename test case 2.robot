*** Settings ***
Library    RobotFrameworkLibrary

*** Test Cases ***
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




*** Settings ***
Library    RobotFrameworkLibrary

*** Test Cases ***
Pay Upcoming Installment and Take Screenshot
    Open Application    snapppay
    Open Debts Tab
    Pay Upcoming Installment
    Capture Page Screenshot    Screenshot_After_Payment

*** Keywords ***
Open Application
    Open Browser    www.snapppay.ir    chrome

Open Debts Tab
    Click Link    //a[@href="/debts"]

Pay Upcoming Installment
    Click Button    //button[@id="pay-installment"]

Capture Page Screenshot
    Capture Page Screenshot    ${OUTPUT_DIR}/Screenshot_After_Payment.png
