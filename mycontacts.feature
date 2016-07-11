@Smoke
Feature: My Contacts Smoke Test

    Background:
        Given I am an Account Executive
        And I am logged in
        And I am on My Contacts

    Scenario: I as an AE want to create a contact
        When I click +New Contact
        And enter contact information
        Then the form should save
        And the new contact should be visible

    Scenario: I as an AE want to edit a contact
        When I click on a contact
        And click edit contact
        And save the contact
        Then the contact should save successfully

    Scenario: I as an AE want to delete a contact
        When I click on a contact
        And click delete contact
        Then I should be warned
        And the contact should be removed

    Scenario: I as an AE want to favorite contacts
        When I set a contact
        Then the contact should remain set

    Scenario: I as an AE want to only view Seat Holders
        When I click Seat Holders
        Then I should only see Seat Holders

    Scenario: I as an AE want to only view my favorites
        When I click My Contacts
        Then I should only see My Contacts