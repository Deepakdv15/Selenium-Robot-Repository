*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://thetestingworld.com/

*** Test Cases ***
Test title
    Open Browser  ${url}  Chrome
    Maximize Browser Window
    #page should contain  VIDEOS1
    click element  xpath://a[text()="Login"]
    select checkbox  xpath=//input[@type='checkbox']
    checkbox should be selected  xpath=//input[@type='checkbox']
    click element  xpath=//input[@type='checkbox']
    checkbox should not be selected  xpath=//input[@type='checkbox']
    #Page Should Contain Textfield  name:username1
    #Press Key  name:username  Deepak Yadav