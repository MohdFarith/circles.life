*** Settings ***

Documentation  This file will only store keywords.

*** Keywords ***

Access To Cycles Life Main Page
  Go To  ${main_url}
  Title Should Be  ${main_title}

Access To Sign In/Create Account Page
  Mouse Over  ${main_sign_up_button}
  Wait Until Element Is Visible  ${main_sign_up_button}
  Click Element  ${main_sign_up_button}
  Wait Until Element Is Not Visible  ${main_sign_up_button}  timeout=15

Sign In/Create Account Page Landing
  Title Should Be  ${sign_in/create_acc_title}
  Wait Until Element Is Visible  ${sign_in/create_acc_header}

Handle Facebook Sign In Window
  Select Window  title=${sign_in_facebook_title}
  Close Window
  Select Window  title=${sign_in/create_acc_title}

Sign In To Existing Account
  Mouse Over  ${sign_in_email_text}
  Wait Until Element Is Visible  ${sign_in_email_text}
  Wait Until Element Is Visible  ${sign_in_email_input}
  Input Text  ${sign_in_email_input}  ${test_mail}
  Mouse Over  ${sign_in_pass_text}
  Wait Until Element Is Visible  ${sign_in_pass_text}
  Wait Until Element Is Visible  ${sign_in_pass_input}
  Input Text  ${sign_in_pass_input}  ${test_pass}
  Mouse Over  ${sign_in_button}
  Wait Until Element Is Visible  ${sign_in_button}
  Click Element  ${sign_in_button}

Successful Signed In Landing
  Title Should Be  ${signed_in_title}
  Wait Until Element Is Visible  ${signed_in_header}

Access To My Account
  Mouse Over  ${signed_in_menu_my_account}
  Wait Until Element Is Visible  ${signed_in_menu_my_account}
  Click Element  ${signed_in_menu_my_account}
  Wait Until Element Is Not Visible  ${signed_in_menu_my_account}

My Account Landing
  Title Should Be  ${my_account_title}
  Wait Until Element Is Visible  ${my_account_header}

Verify Registered Email Displayed In My Account
  Mouse Over  ${my_account_email_text}
  Wait Until Element Is Visible  ${my_account_email_text}
  Wait Until Element Is Visible  //input[@value='${test_mail}']
