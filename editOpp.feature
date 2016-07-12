# /features/editOpp.feature

Feature: Edit Opportunity

    Scenario Outline: The AE clicks the edit button

        Given I want to edit from the [screen]
        When I click the edit button
        Then I should be taken to the [destination] screen
        And the edit form should be open

        @Regression @Smoke
        Examples:
        |    screen    |    destination    |
        |    Homepage    |    Visual Pipeline    |
        |    Visual Pipeline    |    Visual Pipeline    |


    Scenario: Add a product - GML/non-GML

    Scenario: