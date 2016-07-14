# /features/filter_timeline.feature

Feature: Filter the homepage list view to show records by timeframe
    Account Executives are able to filter their records to only view thoses that
    are in the selected date range
    The filter function and search function should work in unison.
    Stages are:
        Next 120 Days, Next 60 Days, Next 30 Days, Out of Date


    Background:
        Given I am logged in as an AE


    Scenario Outline: I as an AE want to filter records by stage
        When I activate the filter by <Time>
        Then I should only see records in the range of <Time>

        Examples:
        |  Time           |
        |  Next 30 Days   |
        |  Next 60 Days   |
        |  Next 120 Days  |
        |  Out of Date    |