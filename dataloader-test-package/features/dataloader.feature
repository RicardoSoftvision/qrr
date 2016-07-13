# /features/dataloader.feature

@Smoke
Feature: Data Loader

    Background:
        Given I am logged in as "admin"
        When I enter the admin panel
        And select "DataLoader" in the data loader section


    Scenario: I as the Data Admin want to install the Homepage package
        And click the "Choose File" button
        And select the "sidecar_homepage" package
        And click the "Submit" button
        Then the system should upload the package
        And the database should have new homepage tables


    Scenario: I as the Data Admin want to install the Homepage package
        And click the "Choose File" button
        And select the "homepage-angular" package
        And click the "Submit" button
        Then the system should upload the package
        And the database should have new homepage tables


    Scenario: I as the Data Admin want to install the Contacts package
        And click the "Choose File" button
        And select the "my-contacts" package
        And click the "Submit" button
        Then the system should upload the package
        And the database should have new contact tables


    Scenario: I as the Data Admin want to install the Pipeline package
        And click the "Choose File" button
        And select the "pipelines" package
        And click the "Submit" button
        Then the system should upload the package
        And the database should have new contact tables


    Scenario: I as the Data Admin want to wipe all previous data
        And click the "Wipe previous data" button
        Then the system should prompt that data is being wiped
        And to request confirmation
        And wipe the previous data

