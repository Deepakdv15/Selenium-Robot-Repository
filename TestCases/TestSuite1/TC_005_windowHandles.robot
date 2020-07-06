*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url1}  https://thetestingworld.com/
${url2}  https://www.facebook.com/

*** Test Cases ***
TC_001
    Open Browser  ${url1}  Chrome
    Maximize Browser Window
    Open Browser  ${url2}  Chrome
    Maximize Browser Window
    switch browser  1

    ${var}=  get location
    log to console  ${var}
    click element  xpath=//a[text()="Login"]
    switch browser  2
    ${var}=  get location
    log to console  ${var}
    Input Text  xpath://input[@type='email']  Hello India