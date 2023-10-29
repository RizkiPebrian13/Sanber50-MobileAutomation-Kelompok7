*** Settings ***
Resource    ../pageObject/SignInPage/signInPage.robot
Resource    ../pageObject/base.robot

*** Test Cases ***
Verify Failed Login (Wrong Username)
    Open Flight Application
    Homepage.Verify Hompage Appears  
    signInPage.Click SignIn
    signInPage.Verify Loginpage Appears
    signInPage.Wrong Input Username
    signInPage.Input Password
    signInPage.Click Login
    
Verify Failed Login (Wrong Password)
    Open Flight Application
    Homepage.Verify Hompage Appears  
    signInPage.Click SignIn
    signInPage.Verify Loginpage Appears
    signInPage.Input Username
    signInPage.Wrong Input Password
    signInPage.Click Login

Successfully login
    Open Flight Application
    Homepage.Verify Hompage Appears  
    signInPage.Click SignIn
    signInPage.Verify Loginpage Appears
    signInPage.Input Username
    signInPage.Input Password
    signInPage.Click Login