*** Settings ***
Resource    ../pageObject/Searchpage/searchPage.robot

*** Test Cases ***
Successfully Search Flight Number
    Open Flight Application
    Verify Hompage Appears
    Click SignIn
    signInPage.Verify Loginpage Appears
    signInPage.Input Username
    signInPage.Input Password
    signInPage.Click Login
    Homepage.Verify Home Login Appears
    searchPage.Click Search
    searchPage.Verify Search Page Appears
    searchPage.Enter Flight Number
    searchPage.CLick Search Button