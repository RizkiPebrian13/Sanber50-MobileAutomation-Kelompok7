*** Settings ***
Resource         ../base.robot
Variables        homepage-locators.yaml
Resource         ../SignInPage/signInPage.robot
*** Keywords ***
Verify Hompage Appears
    Wait Until Element Is Visible            ${appLogo}
    Wait Until Element Is Visible            ${signInButton}
    Wait Until Element Is Visible            ${checkIn}
    Wait Until Element Is Visible            ${search}

Verify Home Login Appears
    Wait Until Element Is Visible            ${appLogo}
    Wait Until Element Is Visible            ${signInButton}
    Wait Until Element Is Visible            ${homeLogin}
    Wait Until Element Is Visible            ${loginSearch}