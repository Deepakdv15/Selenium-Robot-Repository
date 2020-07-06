*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Test title
    ${var}  set variable  Hello India
    log to console  ${var}

