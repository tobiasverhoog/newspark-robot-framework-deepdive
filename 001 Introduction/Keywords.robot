*** Settings ***
Library    SeleniumLibrary
Resource   Resources.robot

*** Keywords ***
Initiate browser
    Open Browser    Chrome

I am at the Swag Lab homepage
    Go To    ${BaseUrl}
    
I login to the application
    Input Text    id=user-name    standard_user
    Input Text    id=password    secret_sauce
    Click Button    css=.btn_action

I am logged in
    Element Should Be Visible    .app_logo
    Capture Page Screenshot