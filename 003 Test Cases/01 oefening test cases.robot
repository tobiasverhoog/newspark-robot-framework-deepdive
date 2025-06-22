# Maak een test case die inlogt bij Swag Labs en controleert of de login succesvol is.
# Maak de test case af die hieronder staat.
# Gebruik de URL en inloggegevens die hieronder staan.
# Je kunt de variabelen ${URL}, ${USERNAME} en ${PASSWORD} gebruiken in je test case,
# maar je kunt ook de waarden direct gebruiken in de stappen.
# Selenium keywords die je kunt gebruiken zijn:
# - Open Browser
# - Input Text
# - Click Button
# - Wait Until Element Is Visible
# - Een selenium keyword om te controleren of een element zichtbaar is.

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
    # Maak de test case af met stappen om de browser te openen, in te loggen en de login te verifiëren.

*** Keywords ***
# Zet hier eventueel keywords die je nodig hebt voor de test case.