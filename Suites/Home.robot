*** Settings ***
Resource            ../pageObject/Homepage/Homepage.robot

*** Test Cases ***
Successfully Open Flight Homepage
    Open Flight Application
    Verify Hompage Appears
    Close Flight Application
