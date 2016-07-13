# /features/createOpp.feature

Feature: Create Opportunity
    I as an Account Executive want the ability to create opportunities
    I want to be able to create an opportunity from Home or Pipeline
    I also want the ability to cancel opportunity creation


    Background:
        Given I am logged in as an AE
        And I am on the Visual Pipeline screen
        And I am creating an opportunity

    Scenario Outline: AE creates an opportunity
        When I supply account=<acct>, contact=<contact>, name=<name>
        Then I should have created an opportunity with name=<name>, account=<acct>, contact=<contact>
        And the opportunity is present in the db

        # Five examples. Check for "Required" fields covered.
        @Regression
        Examples:
        |  acct  |  contact |  name  |
        |  ''    |  todo    |  todo  |
        |  todo  |  ''      |  todo  |
        |  todo  |  todo    |  ''    |
        |  ''    |  ''      |  ''    |
        |  todo  |  todo    |  todo  |


    # Strictly the CANCEL buttons functionality
    # Preliminary check in the step definition for non-blank
    # fields. Date should wipe on cancel as well
    Scenario Outline: AE cancels an opportunity
        When I supply account=<acct>, contact=<contact>, name=<name>
        And I cancel the opportunity creation
        Then I should not have created an opportunity with name=<name>, account=<acct>, contact=<contact>
        And the opportunity is not present in the db
        And the form is cleared of previous values

        @Regression
        Examples:
        |  acct  |  contact |  name  |
        |  ''    |  todo    |  todo  |
        |  todo  |  ''      |  todo  |
        |  todo  |  todo    |  ''    |
        |  ''    |  ''      |  ''    |
        |  todo  |  todo    |  todo  |



    Scenario: AE soft ("X" button) cancels an opportunity
        When I supply account=<acct>, contact=<contact>, name=<name>
        And I cancel the opportunity creation using the "X"
        Then I should not have created an opportunity with name=<name>, account=<acct>, contact=<contact>
        And the opportunity is not present in the db
        And the form is cleared of previous values

        @Regression
        Examples:
        |  acct  |  contact |  name  |
        |  ''    |  todo    |  todo  |
        |  todo  |  ''      |  todo  |
        |  todo  |  todo    |  ''    |
        |  ''    |  ''      |  ''    |
        |  todo  |  todo    |  todo  |


