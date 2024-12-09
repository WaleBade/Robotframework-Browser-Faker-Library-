*** Settings ***
Library  Browser
Library  FakerLibrary
Resource  Project_Keywords.resource

*** Variables ***
${URL}                      https://magento.softwaretestingboard.com/customer/account/create/
${CONSENT}                  xpath=//button[@aria-label="Consent"]
${CREATE_ACCT}              xpath=//ul[@class="header links"]/li[3]/a
${FIRST_NAME_BOX}           xpath=//input[@name="firstname"]
${LAST_NAME_BOX}            xpath=//input[@name="lastname"]
${EMAIL_ACCT_CREATE}        xpath=//input[@name="email"]
${PASSWRD_ACCT_CREATE}      xpath=//input[@name="password"]
${PSWRD_ACCT_CREATE_COM}    xpath=//input[@name="password_confirmation"]
${CREATE_ACCOUNT_BUTTON}    xpath=//button[@title="Create an Account"]