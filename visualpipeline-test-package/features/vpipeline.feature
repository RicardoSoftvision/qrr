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
        When I edit an opportunity
        Then the opportunity should successfully update

    ## Create Opportunity Smoke
    Scenario: I as an AE want the option to create an Opportunity
        When I create a new opportunity
        Then the opportunity should exist

    ## Add a Product Smoke
    Scenario: I as an AE want to add a product to an Opportunity
        When I open an Opportunities detail view
        And view the Products tab
        Then I should be able to successfully add a product

    Scenario: I as an AE want to soft delete an opportunity
        When I click the "X" button in the tiles top right corner
        Then the tile should be removed from view


    Scenario: I as an AE want to move an opportunity to another column
        When I drag and drop a tile to the next column over
        Then I should have updated the opportunity