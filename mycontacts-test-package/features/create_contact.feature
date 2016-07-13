# /features/createContact.feature

Feature: Create Contact

    Background:
        Given I am logged in as an AE
        And I am on the My Contacts screen
        And I am creating a contact
        When I supply First=<first>, Last=<last>, title=<title>, email=<email>

    Scenario Outline: The AE creates a new contact
        # When I supply First=<first>, Last=<last>, title=<title>, email=<email>
        Then I should have created an contact with First=<first>, Last=<last>, title=<title>, email=<email>
        And the contact is present in the db

        # Five examples. Check for "Required" fields covered.
        @Regression
        Examples:
        |  first |  last  |  title |  email |
        |  ''    |  todo  |  todo  |  ""    |
        |  todo  |  ''    |  todo  |  ""    |
        |  ''    |  ''    |  ''    |  ""    |
        |  todo  |  todo  |  todo  |  ""    |


    Scenario Outline: The AE cancels a new contact
        # When I supply First=<first>, Last=<last>, title=<title>, email=<email>
        And I cancel the contact creation
        Then I should have created an contact with First=<first>, Last=<last>, title=<title>, email=<email>
        And the contact is not present in the db
        And the form is cleared of previous values

        # Five examples. Check for "Required" fields covered.
        @Regression
        Examples:
        |  first |  last  |  title |  email |
        |  ''    |  todo  |  todo  |  ""    |
        |  todo  |  ''    |  todo  |  ""    |
        |  ''    |  ''    |  ''    |  ""    |
        |  todo  |  todo  |  todo  |  todo  |


    Scenario Outline: The AE soft ("X" button) cancels a new contact
        # When I supply First=<first>, Last=<last>, title=<title>, email=<email>
        And I cancel the contact creation using the "X"
        Then I should have created an contact with First=<first>, Last=<last>, title=<title>, email=<email>
        And the contact is not present in the db
        And the form is cleared of previous values

        # Five examples. Check for "Required" fields covered.
        @Regression
        Examples:
        |  first |  last  |  title |  email |
        |  ''    |  todo  |  todo  |  ""    |
        |  todo  |  ''    |  todo  |  ""    |
        |  ''    |  ''    |  ''    |  ""    |
        |  todo  |  todo  |  todo  |  todo  |