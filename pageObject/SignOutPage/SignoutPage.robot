*** Settings ***
Resource    ../base.robot
Resource    ../Homepage/Homepage.robot
Resource    ../SignInPage/signInPage.robot
Variables   signout-locators.yaml
*** Keywords ***
 Click Sign Out Button
     Click Element    ${signoutButton}