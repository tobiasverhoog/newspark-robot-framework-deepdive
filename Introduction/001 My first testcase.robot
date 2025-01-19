*** Settings ***
Documentation     A test suite with a single test for valid login.

Library           Browser

Resource          Resources.robot
Resource          Keywords.robot

Suite Setup       Initiate browser

*** Test Cases ***
Log in to Swag Lab
    Given I am at the Swag Lab homepage
    When I login to the application
    Then I am logged in