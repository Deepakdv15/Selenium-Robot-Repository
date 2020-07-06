*** Settings ***
Library  Selenium2Library

*** Variables ***
${Browser}  Chrome
${url}  https://thetestingworld.com/testings/

*** Test Cases ***
Robot Second Test Case
    Open Browser  ${url}  ${Browser}
    Maximize Browser Window
    set selenium timeout  20 second
    ${tm}=  get selenium timeout
    log to console  ${tm}
    Wait Until Page Contains  Testing
    #${speed}  get selenium speed
    #log to console  ${speed}
    set selenium speed  2 second
    Select Radio Button  add_type  home
    Select Checkbox  name:terms
    Click Link  xpath://a[text()='Read Detail']
    #${speed}  get selenium speed
    #log to console  ${speed}
    Capture Page Screenshot  ./Snapshots/deepak.png
