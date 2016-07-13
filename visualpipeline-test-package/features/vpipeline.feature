# /features/vpipeline.feature

@Smoke
Feature: Visual Pipeline Smoke Test
    In order to determine base functionality
    As part of the testing effort
    I want a quick Visual Pipeline smoke test

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
        When I click the "Pipeline By Stage" tab
        Then I should be viewing Pipeline By Stage


    Scenario: I as an AE want to display all Out Of Date opportunities
        When I click the "Out of Date" button
        Then the opportunities in view should be out of date


    ### Independent of View

    ## Edit Opportunity Smoke
    Scenario: I as an AE want the option to edit an Opportunity
        And opportunities exist
        When I click the Account Name on the Opportunity
        Then the edit form should open
        And the edit form should save successfully after alteration

    ## Create Opportunity Smoke
    Scenario: I as an AE want the option to create an Opportunity
        When I click "Create New Opportunity"
        Then the create form should open
        And the create form should save successfully

    ## Add a Product Smoke
    Scenario: I as an AE want to add a product to an Opportunity
        And opportunities exist
        When I click the Account Name on the Opportunity
        And I click the "Product" tab
        And I click the edit button
        And I click the "Add a Product" button
        And complete the product form
        And click the "Save" button
        Then the product should save successfully

    Scenario: I as an AE want to soft delete an opportunity
        When I click the "X" button in the tiles top right corner
        Then the tile should be removed from view


    Scenario: I as an AE want to move an opportunity to another column
        When I click and hold a tile
        And drag the tile right
        And release the tile
        Then I should have updated the tiles location