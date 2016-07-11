@Smoke
Feature: Homepage Smoke Test

    Background:
        Given I am an Account Executive
        And I am logged in
        And I am on the homepage

    Scenario: I as an AE want to access Gartner Links
        When I click on the Gartner Link drop down
        And select a Gartner Link
        Then I should be navigated to the Gartner Link

    Scenario: I as an AE want to open the module menu
        When I click the stack icon
        Then the menu should slide open

    Scenario: I as an AE want to close the module menu
        And the menu is open
        When I click the stack icon
        Then the menu should slide close

    Scenario: I as an AE want to close a recommended action
        And I have more than five recommended actions
        When I click the checkbox for an action
        Then I should see the recommended action removed
        And I should see another recommended action take its place

    Scenario: I as an AE want the option to edit an Opportunity
        And opportunities exist
        When I click edit opportunity
        Then I should be taken to the Visual Pipeline
        And the edit form should be open

    Scenario: I as an AE want the option to create an Opportunity
        When I click Create New Opportunity
        Then a form should open
        And the form should save successfully

    Scenario: I as an AE want to access the Visual Pipeline
        When I click Visual Pipeline
        Then I should be taken to the Visual Pipeline

    Scenario: I as an AE want to access the My Contacts page
        When I click Contacts
        Then I should be taken to My Contacts

