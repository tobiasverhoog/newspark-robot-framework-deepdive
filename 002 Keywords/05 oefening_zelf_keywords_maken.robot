# Oefening: 
# Maak een eigen keyword in dit bestand.
# Maak een eigen keyword dat heet Controleer dat People First op de pagina staat.
# Controleer of de pagina is geopend door de tekst "People First" te controleren met een keyword uit de SeleniumLibrary.
# Roep dit keyword aan in de test case samen met een keyword om de browser te openen en te sluiten.

*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Controleer tekst op een pagina
    Open Browser    https://www.newspark.nl/    Chrome
    Controleer dat People First op de pagina staat
    Close Browser

*** Keywords ***