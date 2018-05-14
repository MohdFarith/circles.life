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
  Wait Until Page Does Not Contain Element  ${main_sign_up_button}  timeout=15

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

My Account Landing
  Wait Until Page Contains Element  ${my_account_header}  timeout=15
  Title Should Be  ${my_account_title}
  Mouse Over  ${my_account_header}

Verify Registered Email Displayed In My Account
  Mouse Over  ${my_account_email_text}
  Wait Until Element Is Visible  ${my_account_email_text}
  Wait Until Element Is Visible  //input[@value='${test_mail}']

Access To Facebook Login Page
  Go To  ${fb_main_url}
  Wait Until Element Is Visible  ${fb_main_header}

Fill In Email And Password To Login
  Input Text  ${fb_main_email_input}  ${test_mail}
  Input Text  ${fb_main_password_input}  ${test_pass}
  Click Element  ${fb_main_login_button}

Facebook Home Landing
  Wait Until Element Is Visible  ${fb_home_header}
  Wait Until Element Is Visible  ${fb_home_search_input}  timeout=15

Access To Profile Timeline
  Mouse Over  ${fb_home_left_nav_profile}
  Click Element  ${fb_home_left_nav_profile}

Profile Timeline Landing
  Wait Until Element Is Visible  ${fb_timeline_cover_image}  timeout=10
  Wait Until Element Is Visible  ${fb_timeline_top_nav_timeline}

Post A Comment On Own Profile  [Arguments]  ${comment}
  Wait Until Page Contains Element  ${fb_timeline_make_a_post}  timeout=30
  Mouse Over  ${fb_timeline_make_a_post}
  Click Element  ${fb_timeline_make_a_post}
  Wait Until Element Is Visible  ${fb_timeline_post_comment_container}
  Click Element  ${fb_timeline_post_comment_container_input}
  Input Text  ${fb_timeline_post_comment_container_input}   ${comment}
  Sleep  1
  Click Element  ${fb_timeline_post_comment_container_post_button}
  Wait Until Page Does Not Contain Element  ${fb_timeline_post_comment_container_close}  timeout=30

Validate Successfully Post A Comment  [Arguments]  ${comment}
  Mouse Over  //div[@id='recent_capsule_container']//p[text()='${comment}']
  Wait Until Element Is Visible  //div[@id='recent_capsule_container']//p[text()='${comment}']
