*** Settings ***
Resource        ../pageObject/Bookpage/Bookpage.robot
Resource        ../pageObject/Homepage/Homepage.robot
Resource        ../pageObject/SignInPage/signInPage.robot

*** Test Cases ***
Successfully Book Flight
    Open Flight Application
    Verify Hompage Appears
    Click SignIn
    signInPage.Verify Loginpage Appears
    signInPage.Input Username
    signInPage.Input Password
    signInPage.Click Login
    Homepage.Verify Home Login Appears
    Bookpage.Click Bookpage Button
    Bookpage.Verify Bookpage Appears
    Bookpage.Click One Way    
    Bookpage.Choose From City
    Bookpage.Verify Choose From City Appears
    Bookpage.Choose Toronto
    Bookpage.Choose To City
    Bookpage.Verify Choose To City Appears
    Bookpage.Choose Ottawa
    Bookpage.Choose Class Flight
    Bookpage.Verify Choose Class Flight Appears
    Bookpage.Choose Bussines
    Bookpage.Choose Start Date
    Bookpage.Verify Start Date Appears
    Bookpage.Choose Start Date Flight
    Bookpage.Choose End Date
    Bookpage.Verify End Date Appears
    Bookpage.Choose End Date Flight
    Bookpage.Choose Flight and Hotel
    Bookpage.Click Booking Button
    Bookpage.Verify ConfirmPage Appears
    Bookpage.Choose Price Flight
    Bookpage.Click Confirm Booking Button
