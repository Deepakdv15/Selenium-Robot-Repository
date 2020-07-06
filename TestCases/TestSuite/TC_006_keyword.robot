*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/resources1.robot
Documentation  This suit is for checking ABC functionality
Test Setup  Open and Maximize Browser
Test Teardown  close Browser
#Suite Setup  Before each test suite
#Suite Teardown  After each test suite
#default tags  DEFT
#force tags  ALL_TC
*** Variables ***
${Browser}  Chrome
${url}  https://thetestingworld.com/

*** Test Cases ***
Test title
    [Tags]  smoke  sanity
    [Documentation]  Verifying the browser behaviour
    #Open and Maximize Browser
    #[Timeout]  2s  Failed because of timeout
    #${res}=  Open and Maximize Browser with arg  ${url}  ${Browser}
    #log  ${res}
    click element  xpath=//a[text()="Login"]

Test2
   click element  xpath=//a[text()="Login"]


