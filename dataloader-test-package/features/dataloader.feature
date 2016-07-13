# /features/dataloader.feature

@Smoke
Feature: Data Loader

    Background:
        Given I am logged in as "admin"
        And I entered the admin panel
        And selected "DataLoader" in the data loader section


    Scenario Outline: I as the Data Admin want to install the a screen package
        When I upload the <Package> package
        Then the <Package> package should be accessible in the database

        Examples:
            |  Package           |
            |  sidecar-homepage  |
            |  homepage-angular  |
            |  my-contacts       |
            |  pipelines         |


    Scenario: I as the Data Admin want to wipe all previous data
        When I wipe all previous data
        Then the data should be removed from the database

