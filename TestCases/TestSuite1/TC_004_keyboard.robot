*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://thetestingworld.com/

*** Test Cases ***
Test title
    Open Browser  ${url}  Chrome
    Maximize Browser Window
    set selenium timeout  10 seconds
    Wait Until Element Contains  xpath=//a[text()="Login"]  Login
    #wait until page contains  VIDEOS
    #wait until page contains element  xpath=//a[text()="Login"]
    #Click Element  xpath=//a[text()="Login"]
    #Press Key  id:username  Deepak Yadav
    #Press Key  xpath=//button[@type='submit']  \\13