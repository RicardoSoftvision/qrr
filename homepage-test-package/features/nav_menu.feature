# /features/nav_menu.feature

Feature: Interact with the menu to navigate through the CRM
    The menu is a stack icon which slides opened
    The AE should be able to navigate to the Pipeline, Homepage
    and Contacts screen via the menu.


    Background:
        Given I am logged in as an AE


    Scenario Outline: I as an AE want to navigate using the Menu
        When I use the navigation menu to view the <Module> module
        Then I should be navigated to the <Module> screen

        Examples:
            |  Module         |
            |  Opportunities  |
            |  Contacts       |