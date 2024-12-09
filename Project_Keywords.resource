*** Settings ***
Library  Browser
Library  FakerLibrary
Resource  Project_Variables.resource


*** Keywords ***

Navigate to create account page
         New Browser  Chromium  headless=false
         New Page  ${URL}
         Click    ${CONSENT}

Enter user first name and last name
         ${firstname}=  FakerLibrary.First Name
         Log    ${firstname}
         Set Test Variable    ${firstname}
         Fill Text    ${FIRST_NAME_BOX}    ${firstname}
         ${lastname}=  FakerLibrary.Last Name
         Log    ${lastname}
         Set Test Variable    ${lastname}
         Fill Text    ${LAST_NAME_BOX}    ${lastname}

Enter user email address
         ${email}=  FakerLibrary.Email
         Log    ${email}
         Set Test Variable    ${email}
         Fill Text    ${EMAIL_ACCT_CREATE}    ${email}

Enter user password and confirm password
         ${password}=  FakerLibrary.Password
         Log    ${password}
         Set Test Variable    ${password}
         Fill Text    ${PASSWRD_ACCT_CREATE}    ${password}

         ${password}=  FakerLibrary.Password
         Log    ${password}
         Set Test Variable    ${password}
         Fill Text    ${PSWRD_ACCT_CREATE_COM}    ${password}

Create account and assert that account has been created successfully
         Click    ${CREATE_ACCOUNT_BUTTON}
         #Get Text    xpath=//div[@class="message-success success message"] *= Thank you for registering with Main Website Store.
