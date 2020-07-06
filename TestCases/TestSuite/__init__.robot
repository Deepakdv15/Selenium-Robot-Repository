*** Settings ***
Suite Setup  Before each test suite
Suite Teardown  After each test suite


*** Keywords ***
Before each test suite
    log  Execution Started

After each test suite
    log  Execution ended
