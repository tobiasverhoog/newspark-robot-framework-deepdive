# Oefening: Pas de test case aan zodat deze gebruik maakt van variabelen.
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
    [Documentation]    Test case om in the loggen bij Swag Labs en te controleren of de login succesvol is.
    Open Browser       https://www.saucedemo.com/    chrome
    Input Text         id=user-name    standard_user
    Input Text         id=password     secret_sauce
    Click Button       id=login-button
    Wait Until Element Is Visible    id=inventory_container    timeout=10s
    Element Should Be Visible        id=inventory_container
    [Teardown]         Close Browser