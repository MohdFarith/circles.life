*** Settings ***

Documentation   A test suite with various tests.

Library  AppiumLibrary

*** Test Cases ***

Test Appium One
  [tags]  appium1
  Open Application  http://localhost:4723/wd/hub  platformName=Android  platformVersion=5.1.1  deviceName=QVGA_API_22
  ...  app=com.facebook.katana  appActivity=com.facebook.katana.LoginActivity
  Wait Until Element Is Visible  //android.widget.ImageView[@resource-id='com.facebook.katana:id/login_fb_logo']  timeout=15
  Wait Until Element Is Visible  //android.widget.EditText[@resource-id='com.facebook.katana:id/login_username']  timeout=60
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

  Wait Until Page Does Not Contain Element  //android.widget.ProgressBar[@resource-id='com.facebook.katana:id/login_progress']  timeout=60
  Wait Until Element Is Visible  //android.widget.TextView[@resource-id='com.facebook.katana:id/title']  timeout=15
  Capture Page Screenshot

  Click Element  //android.widget.TextView[@resource-id='com.facebook.katana:id/dbl_off']
  Wait Until Page Does Not Contain Element  //android.widget.TextView[@text='Not Now']  timeout=15
  # Sleep  10
  Wait Until Element Is Visible  //android.widget.EditText[@resource-id='com.facebook.katana:id/search_edit_text']  timeout=15
  # Sleep  5
  Wait Until Page Contains Element  //android.widget.TextView[@resource-id='com.facebook.katana:id/feed_composer_hint']  timeout=15
  Capture Page Screenshot
  # ${activity1}  Get Activity

  # Wait Until Element Is Visible  //android.view.View[@resource-id='com.facebook.katana:id/bookmarks_tab']
  # Capture Page Screenshot
  # Click Element  //android.view.View[@resource-id='com.facebook.katana:id/bookmarks_tab']
  # Wait Until Element Is Visible  //android.view.View[@content-desc='Update Facebook']  timeout=15
  Click Element  //android.widget.ImageView[@resource-id='com.facebook.katana:id/feed_composer_profile_image']
  # Wait Until Page Does Not Contain Element  //android.widget.TextView[@resource-id='com.facebook.katana:id/feed_composer_hint']
  # Background App  30
  Wait Until Element Is Visible  //android.widget.ImageView[@resource-id='com.facebook.katana:id/standard_header_profile_pic']  timeout=15
  Element Should Be Visible  //android.view.View[@resource-id='com.facebook.katana:id/standard_header_titles_container']
  Sleep  5
  Element Should Be Visible  //android.widget.TextView[@text='Add featured photos']
  # Wait Until Element Is Visible  //android.widget.ImageView['com.facebook.katana:id/fb_logo_up_button']
  # Wait Until Element Is Visible  //android.widget.ImageView['com.facebook.katana:id/search_button']
  # ${activity2}  Get Activity
  # ${SessionId}  Get Appium SessionId
  # ${contexts}  Get Contexts
  # ${curContexts}  Get Current Context
  # ${source}  Get Source
  Capture Page Screenshot
  # Start Activity  appPackage=com.facebook.katana  appActivity=com.facebook.katana.activity.FbMainTabActivity
  # Sleep  10
  # ${source}  Get Source
  # Scroll Down  //android.view.View[@text="My Comment for 2018-05-14 12:42:59.781"]
  :FOR  ${INDEX}  IN RANGE  1  6
  \  Swipe  0  0  0  400  10
  \  Sleep  1
  \  Capture Page Screenshot
  \  ${count}  Get Matching Xpath Count  //android.view.View[@content-desc="My Comment for 2018-05-14 12:56:45.665"]
  \  Run Keyword If  ${count}>0  Exit For Loop
  # Element Should Be Visible  //android.view.View[text()="My Comment for 2018-05-14 12:42:59.781"]
  # Click Element  //android.view.View[0]
  # Wait Until Element Is Visible  //android.widget.ImageView[@resource-id='com.facebook.katana:id/standard_header_profile_pic']  timeout=15
  # Capture Page Screenshot
  # Quit Application
  # Open Application  http://localhost:4723/wd/hub  platformName=Android  platformVersion=5.1.1  deviceName=QVGA_API_22
  # ...  app=com.facebook.katana  appActivity=com.facebook.katana.activity.FbMainTabActivity

  # Launch Application
  # Sleep  60
  # Wait Until Element Is Visible  //android.widget.ImageView[@resource-id='com.facebook.katana:id/login_fb_logo']  timeout=15
  # Wait Until Element Is Visible  //android.widget.ProgressBar[@resource-id='com.facebook.katana:id/progress_bar']  timeout=15
  # Capture Page Screenshot

  # Wait Until Page Does Not Contain Element  //android.widget.ImageView[@resource-id='com.facebook.katana:id/login_fb_logo']  timeout=300
  # Wait Until Element Is Visible  //android.widget.TextView[@resource-id='com.facebook.katana:id/title']  timeout=15
  # Sleep  10
  # Scroll Down  //android.widget.LinearLayout[@index='6']
  Capture Page Screenshot
  Close Application
