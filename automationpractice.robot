***Settings***
Documentation       Automation Practice Test Suite
...                 Navigates to AUT, adds item to Cart, proceeds to Checkout, completes sign up process, completes order.
Library             SeleniumLibrary
Resource            ./objects/objects.robot
Resource            ./keywords/keywords.robot
Resource            ./variables/variables.robot
Suite Setup         Start Browser
Suite Teardown      Exit Browser



***Test Cases***
Order Item As A New Customer
    Navigate To Web Site
    Add Order To Cart
    Confirm Checkout Details Are Correct
    Create An Account
    Check Details
    Order Item
    Check Order Success Screen



***Keywords***
# Setup 
Start Browser
    Set Suite Metadata              Browser    _Running ${BROWSER} version ${VER}_     append=${true}
    Set Selenium Speed              ${DELAY}
    Open Browser    about:blank     ${BROWSER}

# Teardown
Exit Browser
    Close Browser

Navigate To Web Site
    Navigate To Home Page

Add Order To Cart
    Locate Item
    Add Item To Cart
    Proceed To Summary

Confirm Checkout Details Are Correct
    Check Correct Item Added
    Confirm Item Is In Stock
    Check Product Price
    Check Product Quantity
    Check Total Product Cost
    Check Total Shipping Cost
    Check Total Tax Is Zero
    Check Correct Grand Total
    Proceed To Check Out

Create An Account
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

Check Details
    Check Delivery and Billing Address
    Check Shipping

Order Item
    Pay For Order
    Check Payment Details And Confirm Order

Check Order Success Screen
    Check Order Complete Screen



