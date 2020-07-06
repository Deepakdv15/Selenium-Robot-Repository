*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://robotframework.org/

*** Test Cases ***
Test title
    Open Browser  ${url}  Chrome
    Maximize Browser Window
    Click Element  xpath://a[text()='Public API']
    @{url_list}  get window handles
    : For  ${var}  IN  @{url_list}
    \  select window  ${var}
    \  ${url}=  get location
    \  log to console  ${url}
    #Select Window  Robot Framework
    #${url}=  get location
    #log to console  ${url}
    #Select Window  Robot Framework API documentation — Robot Framework 3.2.1 documentation
    #${url}=  get location
    #log to console  ${url}

