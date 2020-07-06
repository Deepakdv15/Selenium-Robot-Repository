*** Settings ***
Library  SeleniumLibrary

*** Variable ***
${Browser}  Chrome
${url}  https://thetestingworld.com/testings/

*** Test Cases ***
Third Test Case
    Open_Browser  ${url}  ${Browser}
    Maximize Browser Window
    Set Selenium Speed  2sec
    Select From List By Value  name:country  5
    Select From List By Label  name:sex  Female