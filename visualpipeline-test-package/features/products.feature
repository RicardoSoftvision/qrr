# /features/products.feature

Feature: Opportunity Products
    I as an Account Executive want to associate products
    with opportunities
    I should be able to add a product
    I should be able to delete a product
    I should be able to edit a product
    The products should be driven on a dependency heirarchy


    Background:
        Given I am on the Visual Pipeline
        And I am on an opportunities product tab


    # One happy path; One sad path
    # Note: Need more info - Add Product should
    #       be available prior to clicking the
    #       edit button
    Scenario Outline: AE wants to add a GML/non-GML product
        When I enter Market=<market>, Service=<service>, Access=<access>, Quality=<quality>, Price=<price>
        Then the product should be added to the opportunity
        And the product should be in the db

        # Market and Price are REQUIRED
        # Service and Access are dependent on Market
        # Last two rows are GML and non-GML items
        @Regression
        Examples:
        |  market  |  service  |  access  |  quality  |  price  |
        |  todo    |  todo     |  todo    |  todo     |  todo   |


    Scenario Outline: AE wants to add a GML/non-GML product - missing required fields
        When I enter Market=<market>, Service=<service>, Access=<access>, Quality=<quality>, Price=<price>
        Then the product should not be added to the opportunity
        And the product should not be in the db

        @Regression
        Examples:
        |  market  |  service  |  access  |  quality  |  price  |
        |  ""      |  ""       |  ""      |  todo     |  ""     |
        |  ""      |  ""       |  ""      |  todo     |  todo   |
        |  todo    |  todo     |  todo    |  todo     |  ""     |


    Scenario: AE wants to delete a product
        When I delete a product using the trashcan
        Then I should no longer see the product on the opportunity
        And the product should no longer be in the db


    Scenario: AE wants to edit a product
        When I edit the field <Field>
        And enter the value <Value>
        Then the product should update with <Field> set to <Value>
        And the product should update in the db

        @Regression
        Examples:
        |  Field            |  Value    |
        |  Client Market    |  todo     |
        |  Service Name     |  todo     |
        |  Level of Access  |  todo     |
        |  Quality          |  todo     |
        |  Price            |  todo     |