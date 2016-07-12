# /features/createContact.feature

Feature: Create Contact

    Scenario Outline: The AE clicks the create button

        Given I selected an Account [acct]
        And I entered the Contact [fname] [lname] [title] [email]
        When I click the save button
        Then the form should close
        And the new contact should appear

        # Five examples. Check for "Required" fields covered.
        @Regression @Smoke
        Examples:
        |    fname    |    lname    |    title    |    email    |
        |    ''    |    todo    |    todo    |    |
        |    todo    |    ''    |    todo    |    |
        |    todo    |    todo    |    ''    |    |
        |    ''    |    ''    |    ''    |    |
        |    todo    |    todo    |    todo    |    |