#*** Settings ***
#Documentation     This is a resource file, that can contain variables and keywords.
#...               Keywords defined here can be used where this Keywords.resource in loaded.
#Library           CustomLibrary.py
#
#
#*** Keywords ***
#Connect to Server
#    Connect    fe80::aede:48ff:fe00:1122
#
#Close Server Connection
#    Disconnect
#
#Login User
#    [Arguments]    ${login}    ${password}
#    Set Login Name    ${login}
#    Set Password    ${password}
#    Execute Login
#
#Verify Valid Login
#    [Arguments]    ${exp_full_name}
#    ${version}=    Get Server Version
#    Should Not Be Empty    ${version}
#    ${name}=    Get User Name
#    Should Be Equal    ${name}    ${exp_full_name}
#
#Verify Unauthorised Access
#    Run Keyword And Expect Error    PermissionError*    Get Server Version
#
#Login Admin
#    [Documentation]    'Login Admin' is a Keyword.
#    ...                It calls 'Login User' from 'CustomLibrary.py'
#    Login User    admin    @RBTFRMWRK@
#    Verify Valid Login    Administrator


*** Settings ***
Library    String
Library    Collections
Library    DateTime

*** Keywords ***
Store Text
    [Arguments]    ${text}
    log    The text "${text}" will be store in the variable \${stored_text}.
    Set Suite Variable    ${stored_text}    ${text}

Add Text To Stored Text
    [Arguments]    ${text}
    ${full_text}=    Set Variable    ${stored_text} ${text}
    Log    The resulting text is: ${full_text}
    Set Suite Variable    ${stored_text}    ${full_text}

Verify Stored Text Length
    [Arguments]    ${expected_length}
    Length Should Be    ${stored_text}    ${expected_length}

Get Stored Text
    [Return]    ${stored_text}

Check Correct Greeting
    [Arguments]    ${greeting}
    IF   $greeting == 'Hail Our Robot Overlords!'
        Log To Console    \nYou may proceed...
    ELSE
        Fail    Sorry. But that was the wrong answer... Bye Bye...
    END