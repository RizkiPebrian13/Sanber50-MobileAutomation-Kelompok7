*** Settings ***
Resource    ../pageObject/SignOutPage/SignoutPage.robot

*** Test Cases ***
Successfully Sign Out
    Open Flight Application
    Verify Hompage Appears
    Click SignIn
    signInPage.Verify Loginpage Appears
    signInPage.Input Username
    signInPage.Input Password
    signInPage.Click Login
    Homepage.Verify Home Login Appears
    signoutpage. Click Sign Out Button