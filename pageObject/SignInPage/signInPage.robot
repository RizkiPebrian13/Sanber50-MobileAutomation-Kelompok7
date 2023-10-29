*** Settings ***
Resource        ../Homepage/Homepage.robot
Resource        ../base.robot
Variables       signInPage-locators.yaml

*** Keywords ***
Click SignIn
    Click Element    ${signInButton}

Verify Loginpage Appears
    Wait Until Element Is Visible            ${toolbar}
    Wait Until Element Is Visible            ${viewgroup}
    Wait Until Element Is Visible            ${linearLayout}
    Wait Until Element Is Visible            ${username_login}

Input Username
    Click Element    ${username_login}
    Input Text    ${username_login}    support@ngendigital.com

Wrong Input Username
    Click Element    ${username_login}
    Input Text    ${username_login}    mobile@ngendigital.com

Input Password    
    Click Element    ${username_login}
    Input Text   ${password_login}    abc123

Wrong Input Password
    Click Element    ${username_login}
    Input Text   ${password_login}    dceww123

Click Login
    Click Element    ${loginButton}
