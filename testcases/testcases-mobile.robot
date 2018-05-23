*** Settings ***

Documentation   A test suite with various tests.

Library  AppiumLibrary

Resource  ../testvariables/testvariables.robot

*** Keywords ***

Launch Facebook Application
  Open Application  http://localhost:4723/wd/hub  platformName=Android  platformVersion=5.1.1  deviceName=QVGA_API_22
  ...  app=com.facebook.katana  appActivity=com.facebook.katana.LoginActivity

Facebook Login Landing
  Wait Until Element Is Visible  //android.widget.ImageView[@resource-id='com.facebook.katana:id/login_fb_logo']  timeout=15
  Wait Until Element Is Visible  //android.widget.EditText[@resource-id='com.facebook.katana:id/login_username']  timeout=60
  Element Should Be Visible   //android.widget.EditText[@resource-id='com.facebook.katana:id/login_password']
  Element Should Be Visible   //android.widget.Button[@resource-id='com.facebook.katana:id/login_login']
  Capture Page Screenshot

Fill Up Credential
  Clear Text  //android.widget.EditText[@resource-id='com.facebook.katana:id/login_username']
  Click Element  //android.widget.EditText[@resource-id='com.facebook.katana:id/login_username']
  Input Text  //android.widget.EditText[@resource-id='com.facebook.katana:id/login_username']  yeddy_test1@protonmail.com
  Click Element  //android.widget.EditText[@resource-id='com.facebook.katana:id/login_password']
  Input Text  //android.widget.EditText[@resource-id='com.facebook.katana:id/login_password']  df478444
  Capture Page Screenshot

Login To Facebook
  Click Element  //android.widget.Button[@resource-id='com.facebook.katana:id/login_login']
  Wait Until Element Is Visible  //android.widget.ImageView[@resource-id='com.facebook.katana:id/login_progress_fb_logo']  timeout=15
  Element Should Be Visible  //android.widget.ProgressBar[@resource-id='com.facebook.katana:id/login_progress']
  Capture Page Screenshot

Login Confirmation Landing
  Wait Until Page Does Not Contain Element  //android.widget.ProgressBar[@resource-id='com.facebook.katana:id/login_progress']  timeout=60
  Wait Until Element Is Visible  //android.widget.TextView[@resource-id='com.facebook.katana:id/title']  timeout=15
  Capture Page Screenshot

Handle Login Confirmation
  Click Element  //android.widget.TextView[@resource-id='com.facebook.katana:id/dbl_off']
  Wait Until Page Does Not Contain Element  //android.widget.TextView[@text='Not Now']  timeout=15

Facebook Main Landing
  Wait Until Element Is Visible  //android.widget.EditText[@resource-id='com.facebook.katana:id/search_edit_text']  timeout=15
  Wait Until Page Contains Element  //android.widget.TextView[@resource-id='com.facebook.katana:id/feed_composer_hint']  timeout=15
  Capture Page Screenshot

Access To Own Profile
  Click Element  //android.widget.ImageView[@resource-id='com.facebook.katana:id/feed_composer_profile_image']
  Wait Until Element Is Visible  //android.widget.ImageView[@resource-id='com.facebook.katana:id/standard_header_profile_pic']  timeout=15
  Element Should Be Visible  //android.view.View[@resource-id='com.facebook.katana:id/standard_header_titles_container']
  Sleep  5
  Element Should Be Visible  //android.widget.TextView[@text='Add featured photos']
  Capture Page Screenshot

Validate Posted Comment
  :FOR  ${INDEX}  IN RANGE  1  6
  \  Swipe  100  280  100  160  1000
  \  Sleep  1
  \  Capture Page Screenshot
  \  ${count}  Get Matching Xpath Count  //android.view.View[@content-desc="${fb_text_comment}"]
  \  Run Keyword If  ${count}>0  Exit For Loop
  Capture Page Screenshot

Close Facebook Application
  Close Application

*** Test Cases ***

Test Appium One
  [tags]  appium1
  Launch Facebook Application
  Facebook Login Landing
  Fill Up Credential
  Login To Facebook
  Login Confirmation Landing
  Handle Login Confirmation
  Facebook Main Landing
  Access To Own Profile
  Validate Posted Comment
  Close Facebook Application
