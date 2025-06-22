*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}                     https://www.saucedemo.com/
${USERNAME}                standard_user
${PASSWORD}                secret_sauce
${USERNAMEPATH}            id=user-name
${PASSWORDPATH}            id=password
${LOGINBUTTONPATH}         id=login-button
${INVENTORYCONTAINERPATH}  id=inventory_container

*** Test Cases ***
Open Swag Labs and Login
    [Documentation]    Test case om in te loggen bij Swag Labs en te controleren of de login succesvol is.
    Open Browser       https://www.saucedemo.com/    chrome
    Fill Login Form
    Verify Login Successful
    [Teardown]         Close Browser

*** Keywords ***
Fill Login Form
    [Documentation]    Vul het login formulier in met gebruikersnaam en wachtwoord.
    Input Text         id=user-name    standard_user
    Input Text         id=password     secret_sauce
    Click Button       id=login-button

Verify Login Successful
    [Documentation]    Controleer of de login succesvol is door te kijken of de inventory container zichtbaar is.
    Wait Until Element Is Visible    id=inventory_container    timeout=10s
    Element Should Be Visible        id=inventory_container