*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://thetestingworld.com/testings/

*** Test Cases ***
Test title
    Open Browser  ${url}  Chrome
    go to  http://demo.guru99.com/test/newtours/index.php
    go back
    ${url}=  Get Location
    log to console  ${url}