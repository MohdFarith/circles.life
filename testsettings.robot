*** Settings ***

Documentation    This file will store the configurations.

Library  Selenium2Library
Library  DateTime
Library  AppiumLibrary

#Import
Resource  testvariables.robot
Resource  testkeywords.robot

*** Variables ***

${delay}  1
${baseURL}  about:blank
${platform}  linux
${remote_url}  None
${headless}  Yes
${browser}  chrome

*** Keywords ***

TestCase Setup
  Set Selenium Speed  ${delay}
  Setup Chrome Browser
  Set Window Size  1366  720

Setup Chrome Browser
  Run Keyword If  "${remote_url}"=="None"  Run Chrome In Local
  ...  ELSE  Run Chrome In Remote

Run Chrome In Local
  ${headlessValue}  Run Keyword If  "${headless}"=="Yes"  Set Variable  --headless
  ${options}  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
  Call Method  ${options}  add_argument  disable-infobars
  Run Keyword If  "${headlessValue}"=="--headless"  Call Method  ${options}  add_argument  ${headlessValue}
  Call Method  ${options}  add_argument  --disable-notifications
  Create WebDriver  Chrome  chrome_options=${options}

Run Chrome In Remote
  ${headlessValue}  Run Keyword If  "${headless}"=="Yes"  Set Variable  --headless
  ${options}  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
  Call Method  ${options}  add_argument  disable-infobars
  Run Keyword If  "${headlessValue}"=="--headless"  Call Method  ${options}  add_argument  ${headlessValue}
  Call Method  ${options}  add_argument  --disable-notifications
  ${options}  Call Method  ${options}  to_capabilities
  ${executor}  Evaluate  str("http://${remote_url}:4444/wd/hub")
  Create Webdriver  Remote  command_executor=${executor}  desired_capabilities=${options}
