***Settings***
Documentation       BDD Automation Practice Test Suite
...                 Navigates to AUT, adds item to Cart, proceeds to Checkout, completes sign up process, completes order.
Library             SeleniumLibrary
Resource            ./objects/objects.robot
Resource            ./keywords/keywords.robot
Resource            ./variables/variables.robot
Suite Setup         Start Browser
Suite Teardown      Exit Browser



***Test Cases***
Must Signup To Order Item As A New Customer
    Given a new user visits the site
    When the new user adds an item to cart
    And attempts to checkout
    Then new user can signup and complete order



***Keywords***
# Setup 
Start Browser
    Set Suite Metadata              Browser    _Running ${BROWSER} version ${VER}_     append=${true}
    Set Selenium Speed              ${DELAY}
    Open Browser    about:blank     ${BROWSER}

# Teardown
Exit Browser
    Close Browser

a new user visits the site
    Navigate To Home Page

the new user adds an item to cart
    Locate Item
    Add Item To Cart
    Proceed To Summary

attempts to checkout
    Check Correct Item Added
    Confirm Item Is In Stock
    Check Product Price
    Check Product Quantity
    Check Total Product Cost
    Check Total Shipping Cost
    Check Total Tax Is Zero
    Check Correct Grand Total
    Proceed To Check Out

new user can signup and complete order
    Generate A Random Email
    Enter Email Address and Continue
    Select Gender Male
    Generate A Random Male Name
    Enter First Name
    Generate A Random Last Name
    Enter Last Name
    Enter Password
    Provide DOB
    Provide Address
    Submit Details
    Check Delivery and Billing Address
    Check Shipping
    Pay For Order
    Check Payment Details And Confirm Order
    Check Order Complete Screen



