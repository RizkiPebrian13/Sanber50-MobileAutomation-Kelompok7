*** Settings ***
Resource     ../base.robot
Variables    bookpage-locators.yaml
Resource     ../Homepage/Homepage.robot
Resource     ../SignInPage/signInPage.robot

*** Keywords ***
Click Bookpage Button
    Click Element    ${bookButton}

Verify Bookpage Appears
    Wait Until Element Is Visible    ${appLogo2}
    Wait Until Element Is Visible    ${bookToolbar}
    Wait Until Element Is Visible    ${scrollView}
    Wait Until Element Is Visible    ${layout}

Click One Way
    Click Element    ${oneWay}

Click Round Trip
    Click Element    ${roundTrip}
    
Choose From City
    Click Element    ${fromCity}

Verify Choose From City Appears
    Wait Until Element Is Visible    ${listViewFrom}
    Wait Until Element Is Visible    ${chooseToronto}


Choose New York
    Click Element    ${chooseNewYork}
Choose Toronto
    Click Element    ${chooseToronto}
Choose Chicago
    Click Element    ${chooseChicago}



Choose To City
    Click Element    ${toCity}

Verify Choose To City Appears
    Wait Until Element Is Visible    ${listViewFrom}
    Wait Until Element Is Visible    ${chooseOttawa}

Choose Ottawa 
    Click Element    ${chooseOttawa}
    
Choose Class Flight
    Click Element    ${classFlight}

Verify Choose Class Flight Appears
    Wait Until Element Is Visible    ${listViewFrom}
    Wait Until Element Is Visible    ${chooseBusiness}

Choose Bussines
    Click Element    ${chooseBusiness}

Choose Start Date
    Click Element    ${startDate}
Verify Start Date Appears
    Wait Until Element Is Visible    ${chooseOkDate}
    Wait Until Element Is Visible    ${chooseStartDate}

Choose Start Date Flight
    Click Element    ${chooseStartDate}
    Click Element    ${chooseOkDate}
    
Choose End Date
    Click Element    ${endDate}

Verify End Date Appears
    Wait Until Element Is Visible    ${frameEndDate}
    Wait Until Element Is Visible    ${chooseEndDate}

Choose End Date Flight
    Click Element    ${chooseEndDate}
    Click Element    ${chooseOkDate}

Choose Flight Only
    Click Element    ${onlyFlight}

Choose Flight and Hotel
    Click Element    ${flightHotel}
    
Choose 1 Day Only 
    Click Element    ${1Day}

Click Booking Button
    Click Element    ${clickBookButton}

Verify ConfirmPage Appears
    Wait Until Element Is Visible    ${appLogo}
    Wait Until Element Is Visible    ${toolbar}
    Wait Until Element Is Visible    ${viewBookingGroup}
    Wait Until Element Is Visible    ${startReturn}

Choose Price Flight
    Click Element    ${price1860}

Click Confirm Booking Button
    Click Element    ${confirmBookButton}