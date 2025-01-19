*** Settings ***
Library    Browser

*** Keywords ***
Initiate browser
    New Browser    headless=no

I am at the Swag Lab homepage
    New Page    ${BaseUrl}
    
I login to the application
    Type Text    id=user-name    standard_user
    Type Text    id=password    secret_sauce
    Click    css=.btn_action

I am logged in
    Get Element States    .app_logo    contains    visible
    Take Screenshot