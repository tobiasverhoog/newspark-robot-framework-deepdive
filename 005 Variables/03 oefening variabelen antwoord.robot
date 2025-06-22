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
    Open Browser       ${URL}    chrome
    Input Text         ${USERNAMEPATH}    ${USERNAME}
    Input Text         ${PASSWORDPATH}     ${PASSWORD}
    Click Button       ${LOGINBUTTONPATH}
    Wait Until Element Is Visible    ${INVENTORYCONTAINERPATH}    timeout=10s
    Element Should Be Visible        ${INVENTORYCONTAINERPATH}
    [Teardown]         Close Browser