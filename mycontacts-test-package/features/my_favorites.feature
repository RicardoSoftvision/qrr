Feature: Filter favorite contacts
A contact should not return if it is not marked “favorite”.
The list view should unfilter when favorites is unmarked.
Searching should not ignore the active filter.
Contacts should immediately be removed from view when unfavorited.

    Background:
        Given I am logged in as AE
        And I am on the My Contacts view

    Scenario: AE filters to show his favorite contacts
        When I click the favorites star filter
        Then I should see all contacts marked favorites
        And the favorites star filter highlighted

    Scenario: AE searches through his favorite contacts
        And I filtered the view to show my favorite contacts
        When I search for a contact based on title
        Then I should see only contacts that are marked favorites

    Scenario: AE deactivates the filter show all contacts
        And I filtered the view to show my favorite contacts
        When I click the favorites star filter an additional time
        Then I should  see all the contacts belonging to AE
        And the favorites star filter is not highlighted

    Scenario: AE unfavorites a contact
        And I filtered the view to show my favorite contacts
        When I click the favorites star next to a contact
        Then I should not see the contact in the filtered list