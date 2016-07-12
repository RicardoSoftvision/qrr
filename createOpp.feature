# /features/createOpp.feature

Feature: Create Opportunity

    Scenario Outline: The AE clicks the create button

        Given I want to create from the [screen]
        When I click the Create New Opportunity button
        Then I should be taken to the [destination] screen
        And the create form should be open

        @Regression @Smoke
        Examples:
        |    screen    |    destination    |
        |    Homepage    |    Visual Pipeline    |
        |    Visual Pipeline    |    Visual Pipeline    |



    Scenario Outline: The AE saves the new opportunity

        Given I selected the Account [acct]
        And I selected the Contact [contact]
        And I assigned an Opportunity [name]
        When I click the save button
        Then the form should close
        And I should be on the Visual Pipeline Screen
        And the opportunity should exist in the db

        # Five examples. Check for "Required" fields covered.
        @Regression @Smoke
        Examples:
        |    acct    |    contact    |    name    |
        |    ''    |    todo    |    todo    |
        |    todo    |    ''    |    todo    |
        |    todo    |    todo    |    ''    |
        |    ''    |    ''    |    ''    |
        |    todo    |    todo    |    todo    |


    # Strictly the CANCEL buttons functionality
    Scenario Outline: The AE cancels the new opportunity

        Given I selected the Account [acct]
        And I selected the Contact [contact]
        And I assigned an Opportunity [name]
        When I click the cancel button
        Then the form should close
        And I should be on the Visual Pipeline Screen
        And the opportunity should not exist in the db

        @Regression @Smoke
        Examples:
        |    acct    |    contact    |    name    |
        |    todo    |    todo    |    todo    |



    Scenario: The AE clicks the cancel X

        Given I am on the create form
        When I click the X
        Then the form should close
        And I should be on the Visual Pipeline



    Scenario: The AE selects an Account

        Given I am on the create form
        When I click account
        Then the Account module should open
        And I should be able to select an account
        And the account should display on the form


    Scenario: The AE selects a Contact

        Given I am on the create form
        When I click contact
        Then the Contact module should open
        And I should be able to select a contact
        And the contact should display on the form

