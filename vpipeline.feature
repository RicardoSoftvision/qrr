# /features/vpipeline.feature

@Smoke
Feature: My Contacts Smoke Test

    Background:
        Given I am an Account Executive
        And I am logged in
        And I am on Visual Pipeline

    ### Pipeline By Time View

    Scenario: I as an AE want to view Pipeline By Time
        When I navigate to the Visual Pipeline
        Then I should be viewing Pipeline By Time

    ### Pipeline By Stage View

    Scenario: I as an AE want to view Pipeline By Stage
        When I click the Pipeline By Stage tab
        Then I should be viewing Pipeline By Stage

    Scenario: I as an AE want to display all Out Of Date opportunities
        When I click Out of Date
        Then the opportunities in view should be out of date

    ### Independent of View

    Scenario: I as an AE want the option to edit an Opportunity
        And opportunities exist
        When I click edit opportunity
        Then the edit form should be open
        And the form should save successfully

    Scenario: I as an AE want the option to create an Opportunity
        When I click Create New Opportunity
        Then a form should open
        And the form should save successfully

    Scenario: I as an AE want to soft delete an opportunity
        When I click the X
        Then the tile should be removed from view

    Scenario: I as an AE want to move an opportunity to another column
        When I click and hold a tile
        and drag the tile right
        and release the tile
        Then I should have updated the tiles location