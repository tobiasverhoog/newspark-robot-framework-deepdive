*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Bekijk de website
    Comment    Dit is mijn eerste test case!
    Open Browser    https://www.newspark.nl/    Chrome
    Close Browser