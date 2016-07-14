# /features/search.feature

Feature: Search for a Contact, Opportunity, or Account from Homepage
    Account Executives are able to search for any record affiliated with
    them or their team. The search should not return records that are
    not affiliated with the AE.


    Background:
        Given I am logged in as an AE


    Scenario Outline: I as an AE want to search for a record
        When I search for the <Module> record <Record>
        Then the record should be <Result>

        Examples:
        |  Module       |  Record  |  Result      |
        |  Account      |          |  found       |
        |  Account      |          |  not found   |
        |  Contact      |          |  found       |
        |  Contact      |          |  not found   |
        |  Opportunity  |          |  found       |
        |  Opportunity  |          |  not found   |