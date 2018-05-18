*** Settings ***

Documentation   A test suite with various tests.

Library  AppiumLibrary

*** Test Cases ***

Test Appium One
  [tags]  appium1
  Open Application  http://localhost:4723/wd/hub  platformName=Android  platformVersion=5.0.1  deviceName=jfltexx
  ...  app=com.facebook.katana  appActivity=com.facebook.katana.LoginActivity
  Wait Until Element Is Visible  //android.widget.ImageView[@resource-id='com.facebook.katana:id/login_fb_logo']  timeout=15
  Wait Until Element Is Visible  //android.widget.EditText[@resource-id='com.facebook.katana:id/login_username']  timeout=300
  Element Should Be Visible   //android.widget.EditText[@resource-id='com.facebook.katana:id/login_password']
  Element Should Be Visible   //android.widget.Button[@resource-id='com.facebook.katana:id/login_login']

  Clear Text  //android.widget.EditText[@resource-id='com.facebook.katana:id/login_username']
  Click Element  //android.widget.EditText[@resource-id='com.facebook.katana:id/login_username']
  Input Text  //android.widget.EditText[@resource-id='com.facebook.katana:id/login_username']  yeddy_test1@protonmail.com
  Click Element  //android.widget.EditText[@resource-id='com.facebook.katana:id/login_password']
  Input Text  //android.widget.EditText[@resource-id='com.facebook.katana:id/login_password']  df478444
  Capture Page Screenshot

  Click Element  //android.widget.Button[@resource-id='com.facebook.katana:id/login_login']
  Wait Until Element Is Visible  //android.widget.ImageView[@resource-id='com.facebook.katana:id/login_progress_fb_logo']  timeout=15
  Element Should Be Visible  //android.widget.ProgressBar[@resource-id='com.facebook.katana:id/login_progress']
  Capture Page Screenshot

  Wait Until Page Does Not Contain Element  //android.widget.ProgressBar[@resource-id='com.facebook.katana:id/login_progress']
  Wait Until Element Is Visible  //android.widget.TextView[@resource-id='com.facebook.katana:id/title']  timeout=15
  Capture Page Screenshot

  Click Element  //android.widget.TextView[@resource-id='com.facebook.katana:id/dbl_off']
  Wait Until Page Does Not Contain Element  //android.widget.TextView[text()='Not Now']  timeout=15
  Wait Until Element Is Visible  //android.widget.EditText[@resource-id='com.facebook.katana:id/search_edit_text']  timeout=15
  # Sleep  10
  # Wait Until Page Contains Element  //android.widget.ImageView[@resource-id='com.facebook.katana:id/feed_composer_profile_image']  timeout=15
  Capture Page Screenshot

  Click Element  //android.view.View[@resource-id='com.facebook.katana:id/bookmarks_tab']
  Wait Until Element Is Visible  //android.view.View[@content-desc='Update Facebook']  timeout=15
  Capture Page Screenshot

  Click Element  //android.view.View[0]
  Wait Until Element Is Visible  //android.widget.ImageView[@resource-id='com.facebook.katana:id/standard_header_profile_pic']  timeout=15
  Capture Page Screenshot
  Close Application
