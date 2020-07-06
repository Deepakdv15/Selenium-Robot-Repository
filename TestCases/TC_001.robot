*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/resources1.robot

*** Variables ***
${var1}  https://thetestingworld.com/

*** Test Cases ***
Test title
    Open Browser  ${var1}  Chrome
    maximize browser window
    click element  xpath://a[text()='Login']
    ${row}=  Read Number Of Row In Excel  TestData
    log  ${row}
    #${var}=  Read Excel data By Cell  TestData  1  3
    #log  ${var}
    : FOR  ${i}  IN RANGE  1  ${row}+1
    \  ${userName}=  Read Excel data By Cell  TestData  ${i}  1
    \  ${password}=  Read Excel data By Cell  TestData  ${i}  2
    \  Input Text  name:username  ${userName}
    \  Input Text  name:password  ${password}
    \  click element  xpath://button[@type="submit"]
    \  sleep  5  second
