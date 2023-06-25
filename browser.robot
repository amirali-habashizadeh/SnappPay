*** Settings ***
Library           SeleniumLibrary
Suite Setup       Open Browser    https://stackoverflow.com/    googlechrome
Suite Teardown    Close Browser

*** Test Cases ***
Test Website 1
    Go To     https://meta.stackoverflow.com/
    Sleep    5 seconds
    Log    Do test with same session cookies.

Test Website 2
    Go To     https://meta.stackexchange.com/
    Sleep    5 seconds
    Log    Do test with same session cookies.

Test Website 3
    Go To     https://gardening.stackexchange.com/
    Sleep    5 seconds
    Log    Do test with same session cookies.

Test Website 4
    Go To     https://gardening.meta.stackexchange.com/
    Sleep    5 seconds
    Log    Do test with same session cookies.