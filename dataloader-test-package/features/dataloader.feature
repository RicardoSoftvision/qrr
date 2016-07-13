# /features/dataloader.feature

@Smoke
Feature: Data Loader

    Background:
        Given I am logged in as "admin"
        And I entered the admin panel
        And selected "DataLoader" in the data loader section


    Scenario: I as the Data Admin want to install the Homepage package
        When I upload the "sidecar-homepage" package
        Then the package should be accessible in the database


    Scenario: I as the Data Admin want to install the Homepage package
        When I upload the "homepage-angular" package
        Then the package should be accessible in the database


    Scenario: I as the Data Admin want to install the Contacts package
        When I upload the "my-contacts" package
        Then the package should be accessible in the database


    Scenario: I as the Data Admin want to install the Pipeline package
        When I upload the "pipelines" package
        Then the package should be accessible in the database


    Scenario: I as the Data Admin want to wipe all previous data
        When I wipe all previous data
        Then the data should be removed from the database

