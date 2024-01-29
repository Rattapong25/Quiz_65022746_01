*** Settings ***
Library    SeleniumLibrary
 
*** Variables ***
${LOGIN_URL}    https://automationexercise.com/login
${LOGOUT_URL}   https://automationexercise.com
${BROWSER}      chrome
 
*** Test Cases ***
Logout User Test
    Open Browser    ${LOGIN_URL}    ${BROWSER}
    Input Text      id=ratapong    ${USERNAME}
    Input Text      id=Ptqmz657    ${PASSWORD}
    Click Button    id=loginButton
    Page Should Contain    Welcome, ${USERNAME}
   
    # Perform logout
    Click Link    Logout
    Page Should Contain    Login  # Assuming the login page has a text "Login" indicating that the user is logged out
   
    [Teardown]    Close Browser
 
*** Variables ***
${USERNAME}    demo_user
${PASSWORD}    demo_password
 