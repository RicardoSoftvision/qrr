# /features/homepage.feature

@Smoke
Feature: Homepage Smoke Test
    In order to determine base functionality
    As part of the testing effort
    I want a quick Homepage smoke test

    Background:
        Given I am an Account Executive
        And I am logged in
        And I am on the homepage

    Scenario: I as an AE want to access <redacted> Links
        When I select a <redacted> Link
        Then I should be redirected to the link

    Scenario: I as an AE want to open the module menu
        When I click the stack icon
        Then the menu should slide open

    Scenario: I as an AE want to close the module menu
        And the menu is open
        When I click the stack icon
        Then the menu should slide close

    Scenario: I as an AE want to close a recommended action
        When I complete a recommended action
        Then the recommended action should be removed from view
        And the next pending action should be available for review

    Scenario: I as an AE want the option to edit an Opportunity
        When I edit an opportunity from the Homepage
        Then I should be redirected to the Visual Pipeline

    Scenario: I as an AE want the option to create an Opportunity
        When I create an opportunity from the homepage
        Then the opportunity should be immediately available

    Scenario: I as an AE want to access the Visual Pipeline
        When I click "Visual Pipeline"
        Then I should be redirected to the Visual Pipeline

    Scenario: I as an AE want to access the My Contacts page
        When I click "Contacts"
        Then I should be redirected to My Contacts

