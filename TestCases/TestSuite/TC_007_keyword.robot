*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/resources1.robot
Library  ../../Eternal_Keywords/locator.py
Documentation  This suit is for checking ABC functionality


*** Variables ***
${Browser}  Chrome
${url}  https://thetestingworld.com/testings/

*** Test Cases ***
Test title
    [Documentation]  Verifying the browser behaviour
    ${user_name}=  Read Data From JSON  Registration.username_textbox_name
    Open and Maximize Browser
    Input Text  name:${user_name}  Deepak Yadav


*** Keywords ***
Read Data From JSON
    [Arguments]  ${jsonPath}
    ${value}  read_locator_from_json  ${jsonPath}
    [return]  ${value}


