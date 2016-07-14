# /features/recommended_actions.feature

Feature: Recommended actions
    The AE should be able to close recommended actions.
    The recommend actions should display five actions unless
    there are less than five items.
    If the recommended actions section is empty it should
    display as such.
    Each recommended action should be assessible via Outlook
    to streamline workflow.


    Background:
        Given I am logged in as an AE


    Scenario: I as an AE want to close a recommended action
        When I close a recommended action
        Then I should not see the action in the list
        But a new action should populate for a total of five


    Scenario: I as an AE have less than five recommended actions
        And I have exactly five recommended actions
        When I close a recommended action
        Then I should not see the action in the list
        And a new action should not populate


    Scenario: I as an AE no recommended actions
        When I look at the recommended actions section
        Then I should see a "No Recommended Actions" message