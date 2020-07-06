*** Settings ***
Library  Selenium2Library

*** Variables ***
${Browser}  Chrome
${url}  http://demo.guru99.com/test/newtours/index.php

*** Test Cases ***
Robot First Test Case
    Open_Browser  ${url}  ${Browser}
    Maximize Browser Window
    Enter UserName and Password  Mercury  Mercury

*** Keywords ***
Enter UserName and Password
    [Arguments]  ${userName}  ${Password}
    Input Text  name:userName  ${userName}
    Input Text  xpath://input[@type='password']  ${Password}
    Click Element  xpath=//input[@value='Submit']

