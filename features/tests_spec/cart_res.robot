*** Settings ***
Library  SeleniumLibrary
Library  ../pages/ProductPage.py
Library  ../pages/HomePage.py


*** Keywords ***

that the informed region is eligible
    Gate Yes
    Set Test Variable  ${ADDRESS}  Avenida Guilherme Perereca Guglielmo, 676, Barueri -SP, Brasil
    Inform Address  ${ADDRESS}

the user select amount of products
    Page Should Contain  Cervejas
    Select Product
    Add Amount Product
    Page Should Contain  06
    Add One Product
    Page Should Contain  07
    Add Products
    
the purchase price must be updated in the cart
    Element Should Contain  css=span[id=pre-checkout-cold-drink-tag]   Suas bebidas já vão geladinhas!
    Calculate Cart
    Capture Page Screenshot