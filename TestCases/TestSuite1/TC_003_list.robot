*** Settings ***
Library  Collections
Library  SeleniumLibrary

*** Test Cases ***
Test title
    @{list}  create list  hello  33  gmail.com  abc#123  uhf
    ${list_lenght}  Get Length  ${list}
    log to console  ${list_lenght}
    ${list_Data}=  Get From List  ${list}  3
    log to console  ${list_Data}
