*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/resources1.robot
Documentation  This suit is for checking ABC functionality
Test Setup  Open and Maximize Browser
Test Teardown  close Browser

*** Variables ***
${Browser}  Chrome
${url}  https://thetestingworld.com/testings/

*** Test Cases ***
Test title
    [Documentation]  Verifying the browser behaviour
    #Create folder at run time  Deepak  Ravi
    fullname data  Deepak  yadav
    #Open Browser  ${url}  ${Browser}
    #Maximize Browser Window
    #${url}=  get location
    #log  ${url}
    ##${source}=  get source
    #log  ${source}
    #${attribute}=  get element attribute  name:fld_username  class
    #log  ${attribute}
    #${count}=  Get Element Count  class:field
    #log  ${count}
    #Select From List By Index  name:sex  1
    #${select}=  Get Selected List Label  name:sex
    #log  ${select}
    #${text}=  Get Selected List Value  name:sex
    #log  ${text}
    #${All_value}=  Get List Items  name:sex
    #log  ${All_value}
    #${title}=  get title
    #${speed}=  get selenium speed
    #log  ${speed}
    #${value}=  get value  xpath://input[@type='submit']
    #log  ${value}
    #${text}=  get text  xpath://a[@class='displayPopup']
    #log  ${text}
    #Input Text  name:fld_username  Deepak Yadav
    #Input Text  name:fld_email  Deepak.Yadav@ltts.com
    #Input Text  name:fld_password  Deepak

