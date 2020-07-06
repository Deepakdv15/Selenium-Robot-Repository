*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Test title
    #${var_key}  set variable  log to console
    #run keyword  ${var_key}  India Is great
    ${var}  set variable  No
    run keyword if  '${var}'=='Yes'  log to console  Value Found
    run keyword if  '${var}'=='No'  log to console  Value Not Found

