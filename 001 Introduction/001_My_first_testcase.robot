*** Settings ***
Documentation     A test suite with a single test for valid login.

Library           SeleniumLibrary

Resource          Resources.robot
Resource          Keywords.robot

Suite Setup       Initiate browser
Suite Teardown    Close All Browsers

*** Test Cases ***
Log in to Swag Lab
    Given I am at the Swag Lab homepage
    When I login to the application
    Then I am logged in