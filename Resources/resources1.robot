*** Settings ***
Library  SeleniumLibrary
Library  ../Eternal_Keywords/user.py
Library  ../TestData/ReadData.py

*** Variables ***
${Browser}  Chrome
${url}  https://thetestingworld.com/testings/


*** Keywords ***
Open and Maximize Browser
    Open_Browser  ${url}  ${Browser}
    Maximize Browser Window

Open and Maximize Browser with arg
    [Documentation]  Keyword of opening and maximizing browser
    [Arguments]  ${url}  ${Browser}
    Open_Browser  ${url}  ${Browser}
    Maximize Browser Window
    ${title}  Get Title
    [Return]  ${title}

close Browser
    ${title}=  get title
    log  ${title}
    Close Window

Before each test suite
    log  execute before each test suite

After each test suite
    log  execute after each test suite

Create folder at run time
    [Arguments]  ${foldername1}  ${foldername2}
    create_dir  ${foldername1}
    create_subdir  ${foldername2}
    log  task done successfully

fullname data
    [Arguments]  ${first}  ${last}
    ${res}=  concatinate  ${first}  ${last}
    log  ${res}

Read Number Of Row In Excel
    [Arguments]  ${sheetName}
    ${rows}=  fetch_number_of_row  ${sheetName}
    [Return]  ${rows}

Read Excel data By Cell
    [Arguments]  ${sheetName}  ${row}  ${col}
    ${value}=  fetch_cell_data  ${sheetName}  ${row}  ${col}
    [Return]  ${value}