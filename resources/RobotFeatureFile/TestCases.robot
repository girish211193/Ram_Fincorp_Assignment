*** Settings ***
Resource    ../Step_Definition/Step_Definition_Bundle.robot
Suite Setup    User open Login Page
Suite Teardown    Close Browser

*** Test Cases ***
End-to-End flow on the SauceDemo website
    # Login Flow
    Given User enter login credential and enter Inventory Page
    Sleep    5
    Then Verify that user has successfully entered Inventory Page
    
    # Product Interaction
    When User add "Sauce Labs Backpack" to cart
    And User add "Sauce Labs Bolt T-Shirt" to cart
    When User click on cart icon
    Then Verify that "Sauce Labs Backpack" is present in the cart
    And Verify that quantity of "Sauce Labs Backpack" is 1
    And Verify that "Sauce Labs Bolt T-Shirt" is present in the cart
    And Verify that quantity of "Sauce Labs Bolt T-Shirt" is 1

    # Checkout Flow
    When User clicks on Checkout button
    And User enter text in following field    First Name    John
    And User enter text in following field    Last Name    Doe
    And User enter text in following field    Zip/Postal Code    12345
    And User click Continue button
    Then Verify that Item total value is displayed
    And Verify that Tax value is displayed
    And Verify that total amount is the sum of item total + tax

    # Finish Checkout
    And User click Finish button

    # Logout Flow
    And User click Back Home button
    And User click on Open menu button
    And User click on Logout button