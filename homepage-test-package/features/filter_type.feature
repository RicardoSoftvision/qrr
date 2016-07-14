# /features/filter_type.feature

Feature: Filter the homepage list view to show records by stage (growth, renewal)
    Account Executives are able to filter their records to only view thoses that
    are in the growth phase or renewal phase.
    The filter function and search function should work in unison.


    Background:
        Given I am logged in as an AE


    Scenario Outline: I as an AE want to filter records by type
        When I activate the filter by <Type> type
        Then I should only see records of the type <Type>

        Examples:
        |  Type      |
        |  Growth    |
        |  Renewal   |