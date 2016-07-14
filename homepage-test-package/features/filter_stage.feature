# /features/filter_stage.feature

Feature: Filter the homepage list view to show records by stage
    Account Executives are able to filter their records to only view thoses that
    are in the selected stage.
    The filter function and search function should work in unison.
    Stages are:
        A/Commit, B/Develop, C/Qualify, D/Identify, S/Suspect


    Background:
        Given I am logged in as an AE


    Scenario Outline: I as an AE want to filter records by stage
        When I activate the filter by <stage> stage
        Then I should only see records of the stage <stage>

        Examples:
        |  stage       |
        |  A/Commit   |
        |  B/Develop  |
        |  C/Qualify  |
        |  D/Identify |
        |  S/Suspect  |