*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://thetestingworld.com/testings/

*** Test Cases ***
Test title
    Open Browser  ${url}  Chrome
    maximize browser window
    Title Should be   Login & Sign _Up Forms