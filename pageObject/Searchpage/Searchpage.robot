*** Settings ***
Resource       ../Homepage/Homepage.robot
Resource       ../SignInPage/signInPage.robot
Resource       ../base.robot
Variables      search-locators.yaml

*** Keywords ***
Click Search
    Click Element    ${searchButton}

Verify Search Page Appears
    Wait Until Element Is Visible    ${insertFlightNumber}
    Wait Until Element Is Visible    ${searchFlightButton}
    Wait Until Element Is Visible    ${message}

Enter Flight Number 
    Click Element    ${insertFlightNumber}
    Input Text    ${insertFlightNumber}   ${flightCode}

CLick Search Button
    Click Element    ${searchFlightButton}