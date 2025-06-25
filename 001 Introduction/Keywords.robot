*** Settings ***
Library    SeleniumLibrary
Resource   Resources.robot

*** Keywords ***
I am at the Swag Lab homepage
    Open Browser    ${BaseUrl}    Edge
    
I login to the application
    Input Text    id=user-name    standard_user
    Input Text    id=password    secret_sauce
    Click Button    css=.btn_action

I am logged in
    Element Should Be Visible    class:app_logo
    Capture Page Screenshot