*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}        chrome
${DELAY}          0.5s
${URL}            https://pl.snapp.ir/home?openedVia=snappSuperAppPWA&token=DL.37Z_aHcr%3ATG87vqdtaDThbVutGqJ1WPnjtAh-ke5qwOxaGm1rpBTQ70swH8p0F_soh41qU5WLiklKCYL6Z4o6Nw&utm_campaign=PWA&utm_medium=CreditIcon&utm_source=SuperApp&app_version=v17.1.0
${FILTER_NAME}    دسته‌بندی‌ها
${TEXT}           متوجه شدم


*** Test Cases ***
Open SnappPay Application and View Purchase Orders
    Open Application
    Maximize Browser Window
    Click Button    xpath=//p[${TEXT}]
    Wait Until Page Contains Element    xpath=//p[${FILTER_NAME}]
    Capture Page Screenshot

Pay Upcoming Installment and Take Screenshot
    Open Application
    Maximize Browser Window
    Open Debts Tab
    Pay Upcoming Installment
    Capture Page Screenshot

*** Keywords ***
Open Application
    Open Browser  ${URL}    ${BROWSER}

Open Debts Tab
    Click Link    //a[@href="/debt/ongoing"]

Pay Upcoming Installment
    Click Button    //button[@id=""]

Log
    Log To Console    Purchase Orders