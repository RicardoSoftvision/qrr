# /features/mycontacts.feature

@Smoke
Feature: My Contacts Smoke Test
    In order to determine base functionality
    As part of the testing effort
    I want a quick My Contacts smoke test

    Background:
        Given I am an Account Executive
        And I am logged in
        And I am on My Contacts

    Scenario: I as an AE want to create a contact
        When I click the "+New Contact" button
        And complete the form
        Then the new contact should be visible

    Scenario: I as an AE want to edit a contact
        When I select a contact
        And edit the contacts information
        Then the contact should update successfully

    Scenario: I as an AE want to delete a contact
        When I select a contact
        And delete the contact
        Then the contact should be successfully removed

    Scenario: I as an AE want to favorite contacts
        When I select a contact as a favorite
        Then the contact should be set as a favorite

    Scenario: I as an AE want to only view Seat Holders
        When I click the "Seat Holders" button
        Then I should only see Seat Holders

    Scenario: I as an AE want to only view my favorites
        When I click the "My Contacts" button
        Then I should only see My Contacts