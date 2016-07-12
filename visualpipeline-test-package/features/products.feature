# /features/products.feature

Feature: Opportunity Products
    I as an Account Executive want the ability associate products
    with opportunities
    I should be able to add a product
    I should be able to delete a product
    I should be able to edit a product
    The products should be driven on a dependency heirarchy


    Background:
        Given I am on the Visual Pipeline
        And I opened an opportunity for edit
        And I opened the product panel
        And I clicked the edit product button


    # One happy path; One sad path
    # Note: Need more info - Add Product should
    #       be available prior to clicking the
    #       edit button
    Scenario: I want to add a product

    Scenario: I want to delete a product

    Scenario: I want to edit a product

    Scenario: I want to change the affiliated account