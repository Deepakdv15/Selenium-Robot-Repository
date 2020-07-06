*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://thetestingworld.com/
*** Test Cases ***
Test title
    Open Browser  ${url}  Chrome
    Maximize Browser Window
    #execute javascript  window.scrollTo(0,1000)
    #Open Context Menu  xpath=//span[contains(text(),'VIDEOS')]
    #sleep  5
    #Double Click Element  xpath=//a[text()="Login"]
    #Mouse Down  xpath=//a[text()="Login"]
    #Mouse Up  xpath=//a[text()="Login"]
    Mouse Over  xpath=//span[contains(text(),'VIDEOS')]
