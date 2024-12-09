*** Settings ***
Library   Browser
Library   FakerLibrary
Resource  Project_Keywords.resource
Resource  Project_Variables.resource


*** Test Cases ***

Verify User can create account successfully
         Navigate to create account page
         Enter user first name and last name
         Enter user email address
         Enter user password and confirm password
         Create account and assert that account has been created successfully







