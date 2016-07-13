# /features/editOpp.feature

Feature: Edit Opportunity
    I as an Account Executive want the ability to edit opportunities
    I should be able to cancel the editing process
    I should be able to edit fields inline


    Background:
        Given I am on the Visual Pipeline
        And an opportunity is being edited


    # Opportunity detail fields are inline editable
    # Note: Need more info on expected behavior
    #       The feature lacks a save/update button
    #       when editing inline
    Scenario Outline: I as an AE want to edit a single detail inline
        When I update the <Field> field to the value <Entry>
        Then the <Field> field value should be updated to <Entry>

        Examples:
        |  Field               |    Entry    |
        |  opportunity name    |    todo     |
        |  decision maker      |    todo     |
        |  next steps          |    todo     |
        |  sales stage         |    todo     |
        |  expected close date |    todo     |


    # Opportunity details can be edited "all at once"
    Scenario Outline: I as an AE want to edit multiple details at once
        When I update the field values to <OppName>,<DecisionMaker>,<Steps>,<Stage>,<Close>
        Then the field values should be updated to <OppName>,<DecisionMaker>,<Steps>,<Stage>,<Close>

        Examples:
        |  OppName  |  DecisionMaker  |  Steps  |  Stage  |  Close  |
        |  ""               |  ""  |  ""  |  ""  |  ""  |
        |  ""               |  ""  |  ""  |  ""  |  ""  |
        |  ""               |  ""  |  ""  |  ""  |  ""  |
        |  ""               |  ""  |  ""  |  ""  |  ""  |
        |  ""               |  ""  |  ""  |  ""  |  ""  |

    
    # The AE wants to cancel the edit process and discard all changes
    Scenario Outline: I as an AE want to cancel and discard inline changes
        When I update the <Field> field to the value <Entry>
        And discard the changes using the "X" button
        Then the <Field> field value should not be updated to <Entry>

        Examples:
        |  Field               |    Entry    |
        |  opportunity name    |    todo     |
        |  decision maker      |    todo     |
        |  next steps          |    todo     |
        |  sales stage         |    todo     |
        |  expected close date |    todo     |


    # Opportunity details can be edited "all at once"
    Scenario Outline: I as an AE want to cancel and discard all changes
        When I update the field values to <OppName>,<DecisionMaker>,<Steps>,<Stage>,<Close>
        And discard the changes using the "Cancel" button
        Then the field values should be updated to <OppName>,<DecisionMaker>,<Steps>,<Stage>,<Close>

        Examples:
        |  OppName  |  DecisionMaker  |  Steps  |  Stage  |  Close  |
        |  ""               |  ""  |  ""  |  ""  |  ""  |
        |  ""               |  ""  |  ""  |  ""  |  ""  |
        |  ""               |  ""  |  ""  |  ""  |  ""  |
        |  ""               |  ""  |  ""  |  ""  |  ""  |
        |  ""               |  ""  |  ""  |  ""  |  ""  |


    Scenario: I as an AE want to change the affiliated account
        When I select a new account to associate with the opportunity
        Then I should see the name of the new account displayed on the tile