***Settings***
Documentation       Keywords file
Library             String
Library             ../functions/functions.py

***Keywords***
Navigate To Home Page
    Maximize Browser Window
    Go To   ${URL}


Locate Item
    Wait Until Element Is Visible                           ${ITEM_IMG}
    Scroll Element Into View                                ${ITEM_IMG}


Add Item To Cart
    Mouse Over                                              ${ITEM_IMG}
    Wait Until Element Is Visible                           ${ITEM_ADD_TO_CART_BTN}
    Scroll Element Into View                                ${ITEM_ADD_TO_CART_BTN}
    Click Element                                           ${ITEM_ADD_TO_CART_BTN}


Proceed To Summary
    Wait Until Element Is Visible                           ${PROCEED_TO_SUMMARY}
    Click Element                                           ${PROCEED_TO_SUMMARY}


Check Correct Item Added
    Wait Until Element Is Visible                           ${PRODUCT_NAME_CHECKOUT}
    ${item_name}=                   Get Text                ${PRODUCT_NAME_CHECKOUT}
    Should Contain                  ${item_name}            ${CHOSEN_ITEM_NAME}
    Should Contain                  ${item_name}            ${CHOSEN_ITEM_COLOUR}
    Should Contain                  ${item_name}            ${CHOSEN_ITEM_SIZE}


Confirm Item Is In Stock
    Wait Until Element Is Visible                           ${IN_STOCK_LABEL}
    ${label_text}=                  Get Text                ${IN_STOCK_LABEL}
    Should Be Equal As Strings      ${label_text}           ${TEXT_IN_STOCK}


Check Product Price
    Wait Until Element Is Visible                           ${PRODUCT_PRICE_SPAN}
    ${product_price}=               Get Text                ${PRODUCT_PRICE_SPAN}
    Should Contain                  ${product_price}        ${EXPECTED_PRODUCT_PRICE}


Check Product Quantity
    Wait Until Element Is Visible                           ${PRODUCT_QTY}
    ${product_qty}=                 Get Value               ${PRODUCT_QTY}
    Should Be Equal As Integers     ${product_qty}          ${1}


Check Total Product Cost
    Wait Until Element Is Visible                                       ${TOTAL_PRODUCT}
    ${total_product}=               Get Text                            ${TOTAL_PRODUCT}
    Should Be Equal As Strings      ${total_product}                    ${EXPECTED_PRODUCT_PRICE}
    ${total_product_float}=         Strip Dollar Sign Return Float      ${total_product}
    Should Be Equal                 ${total_product_float}              ${16.51}
    Set Suite Variable              ${TOTAL_PRODUCT_COST}               ${total_product_float}


Check Total Shipping Cost
    Wait Until Element Is Visible                                       ${TOTAL_SHIPPING}
    ${total_shipping}=              Get Text                            ${TOTAL_SHIPPING}
    Should Be Equal As Strings      ${total_shipping}                   ${EXPECTED_SHIPPING_COST}
    ${total_shipping_float}=        Strip Dollar Sign Return Float      ${total_shipping}
    Should Be Equal                 ${total_shipping_float}             ${2.00}
    Set Suite Variable              ${TOTAL_SHIPPING_COST}              ${total_shipping_float}


Check Total Tax Is Zero
    Wait Until Element Is Visible                                       ${TOTAL_TAX}
    ${total_no_tax}=                Get Text                            ${TOTAL_TAX}
    Should Be Equal As Strings      ${total_no_tax}                     ${TEXT_ZERO_USD}


Check Correct Grand Total
    ${total_all_expected}=          Evaluate                            (${TOTAL_PRODUCT_COST} + ${TOTAL_SHIPPING_COST} + 0)
    ${total_all_given}=             Get Text                            ${TOTAL_ALL}
    ${total_all_float}=             Strip Dollar Sign Return Float      ${total_all_given}
    Should Be Equal                 ${total_all_float}                  ${total_all_expected}
    Set Suite Variable              ${TOTAL_COST_ALL}                   ${total_all_expected}


Proceed To Check Out
    Wait Until Element Is Visible        ${PROCEED_TO_CHECKOUT_FROM_SUMMARY}
    Click Element                        ${PROCEED_TO_CHECKOUT_FROM_SUMMARY}


Generate A Random Email
    ${email} =                      Generate Random Email
    ${EMAIL} =                      Set Suite Variable      ${email}


Generate A Random Male Name  
    ${fname} =                      Generate Random Male Name
    ${FNAME} =                      Set Suite Variable      ${fname}


Generate A Random Last Name  
    ${lname} =                      Generate Random Last Name
    ${LNAME} =                      Set Suite Variable      ${lname}


Enter Email Address and Continue
    Wait Until Element Is Visible                   ${LOGIN_CREATE_EMAIL_INPUT}
    Input Text                                      ${LOGIN_CREATE_EMAIL_INPUT}     ${EMAIL}           
    Wait Until Element Is Visible                   ${LOGIN_CREATE_CREATEANACCOUNT_BUTTON}
    Click Element                                   ${LOGIN_CREATE_CREATEANACCOUNT_BUTTON}


Select Gender Male
    Wait Until Element Is Visible                   ${SIGNUP_MALE_RADIO_BUTTON}
    Click Element                                   ${SIGNUP_MALE_RADIO_BUTTON}


Enter First Name
    Wait Until Element Is Visible                   ${SIGNUP_FIRSTNAME}
    Input Text                                      ${SIGNUP_FIRSTNAME}     ${FNAME}


Enter Last Name
    Wait Until Element Is Visible                   ${SIGNUP_LASTNAME}
    Input Text                                      ${SIGNUP_LASTNAME}     ${LNAME}


Enter Password
    Wait Until Element Is Visible                   ${SIGNUP_PASSWORD}
    Input Text                                      ${SIGNUP_PASSWORD}     ${PASSWORD}


Provide DOB
    Wait Until Element Is Visible                   ${SIGNUP_DOB_DAY}
    Select From List By Value                       ${SIGNUP_DOB_DAY}       ${DOB_DAY}
    Wait Until Element Is Visible                   ${SIGNUP_DOB_MONTH}
    Select From List By Value                       ${SIGNUP_DOB_MONTH}     ${DOB_MONTH}
    Wait Until Element Is Visible                   ${SIGNUP_DOB_YEAR}
    Select From List By Value                       ${SIGNUP_DOB_YEAR}      ${DOB_YEAR}


Provide Address 
    Wait Until Element Is Visible                   ${SIGNUP_ADDRESS}
    Scroll Element Into View                        ${SIGNUP_ADDRESS}
    Input Text                                      ${SIGNUP_ADDRESS}       ${TEXT_STREET}
    Wait Until Element Is Visible                   ${SIGNUP_CITY}
    Scroll Element Into View                        ${SIGNUP_CITY}
    Input Text                                      ${SIGNUP_CITY}          ${TEXT_CITY}
    Wait Until Element Is Visible                   ${SIGNUP_STATE_2}
    Scroll Element Into View                        ${SIGNUP_STATE_2}
    Select From List By Value                       ${SIGNUP_STATE}         ${STATE_SELECTION}
    Wait Until Element Is Visible                   ${SIGNUP_POSTCODE}
    Scroll Element Into View                        ${SIGNUP_POSTCODE}
    Input Text                                      ${SIGNUP_POSTCODE}      ${ZIPCODE}
    Wait Until Element Is Visible                   ${SIGNUP_HOME_PHONE}
    Scroll Element Into View                        ${SIGNUP_HOME_PHONE}
    Input Text                                      ${SIGNUP_HOME_PHONE}    ${HOME_PHONE}


Submit Details
    Wait Until Element Is Visible                   ${SIGNUP_REGISTER_BTN}
    Scroll Element Into View                        ${SIGNUP_REGISTER_BTN}
    Click Element                                   ${SIGNUP_REGISTER_BTN}


Check Delivery and Billing Address
    Wait Until Element Is Visible                           ${ADDRESSES_DELIVERY}
    ${delivery}=                    Get Text                ${ADDRESSES_DELIVERY}
    Should Contain                  ${delivery}             ${FNAME}
    Should Contain                  ${delivery}             ${LNAME}
    Should Contain                  ${delivery}             ${TEXT_STREET}
    Should Contain                  ${delivery}             ${TEXT_CITY}
    Should Contain                  ${delivery}             ${STATE}
    Should Contain                  ${delivery}             ${ZIPCODE}
    Should Contain                  ${delivery}             ${COUNTRY}
    Should Contain                  ${delivery}             ${HOME_PHONE}
    Wait Until Element Is Visible                           ${ADDRESSES_BILLING}
    ${billing}=                     Get Text                ${ADDRESSES_DELIVERY}
    Should Contain                  ${billing}              ${FNAME}
    Should Contain                  ${billing}              ${LNAME}
    Should Contain                  ${billing}              ${TEXT_STREET}
    Should Contain                  ${billing}              ${TEXT_CITY}
    Should Contain                  ${billing}              ${STATE}
    Should Contain                  ${billing}              ${ZIPCODE}
    Should Contain                  ${billing}              ${COUNTRY}
    Should Contain                  ${billing}              ${HOME_PHONE}
    Scroll Element Into View                                ${ADDRESSES_PROCEED}
    Wait Until Element Is Visible                           ${ADDRESSES_PROCEED}
    Click Element                                           ${ADDRESSES_PROCEED}


Check Shipping
    Wait Until Element Is Visible                           ${SHIPPING_TOS}
    ${shipping_price}=              Get Text                ${SHIPPING_PRICE}
    Should Contain                  ${shipping_price}       ${EXPECTED_SHIPPING_COST}
    Wait Until Element Is Visible                           ${SHIPPING_TOS}
    Click Element                   ${SHIPPING_TOS}
    Wait Until Element Is Visible                           ${SHIPPING_PROCEED}
    Click Element                                           ${SHIPPING_PROCEED}


Pay For Order
    Wait Until Element Is Visible                                       ${PAY_TOTAL}
    ${total_price}=                 Get Text                            ${PAY_TOTAL}
    ${total_price_float}=           Strip Dollar Sign Return Float      ${total_price}
    Should Be Equal                 ${total_price_float}                ${TOTAL_COST_ALL}
    Wait Until Element Is Visible                                       ${PAY_BANKWIRE}
    Click Element                                                       ${PAY_BANKWIRE}


Check Payment Details And Confirm Order
    Wait Until Element Is Visible                           ${PAYMENT_DETAILS}
    ${details}=                     Get Text                ${PAYMENT_DETAILS}
    Should Contain                  ${details}              ${TEXT_BY_BANK_WIRE}
    ${expected_total}=              Evaluate                str(${TOTAL_COST_ALL})
    Should Contain                  ${details}              ${expected_total}
    Wait Until Element Is Visible                           ${PAYMENT_CONFIRM}
    Click Element                                           ${PAYMENT_CONFIRM}


Check Order Complete Screen
    Wait Until Element Is Visible                          ${COMPLETE_ORDER_HEADING}
    ${header}=                      Get Text               ${COMPLETE_ORDER_HEADING}
    Should Contain                  ${header}              ${TEXT_CONFIRM}
    Wait Until Element Is Visible                          ${COMPLETE_DETAILS}
    ${details}=                     Get Text               ${COMPLETE_DETAILS}
    Should Contain                  ${details}             ${TEXT_AMOUNT} 
    Should Contain                  ${details}             ${TEXT_ORDER_COMPLETE}