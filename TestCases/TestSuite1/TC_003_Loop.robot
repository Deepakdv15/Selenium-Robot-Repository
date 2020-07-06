*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Test Cases ***
Test title
    @{list}  create list  deep  ram  sach23  krnat23  34
    : FOR  ${i}  IN  @{list}
    \  log to console  ${i}
    #: FOR  ${i}  IN RANGE  1  10
    #\  log to console  ${i}


