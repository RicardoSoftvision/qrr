# /features/editOpp.feature

Feature: Edit Opportunity
    I as an Account Executive want the ability to edit opportunities
    I should be able to cancel the editing process
    I should be able to edit fields inline
    I should be able to add or delete products


    Background:
        Given I am on the Visual Pipeline
        And I opened an opportunity for edit


    # Opportunity detail fields are inline editable
    # Note: Need more info on expected behavior
    #       The feature lacks a save/update button
    #       when editing inline
    Scenario: I want to edit a single detail inline

        When I click <Field>
        And enter the value <Entry>
        And click away from the form
        Then <Field> value should be updated to <Entry>

        Examples:
        |  Field               |    Entry    |
        |  opportunity name    |    todo     |
        |  decision maker      |    todo     |
        |  next steps          |    todo     |
        |  sales stage         |    todo     |
        |  expected close date |    todo     |


    # Opportunity details can be edited "all at once"
    Scenario: I want to edit multiple details at once

        When I click the edit pencil button
        And enter opportunity name ""
        And decision maker ""
        And next steps ""
        And sales stage ""
        And expected close date ""
        And click save
        Then the field values should be updated
        And the form remains open
