*** Settings ***

Documentation    This file will store the configurations.

Library  Selenium2Library
Library  DateTime

#Import
Resource  ../testvariables/testvariables.robot
Resource  ../testkeywords/testkeywords.robot

*** Variables ***

${delay}  1
${baseURL}  about:blank
${headless}  Yes
${browser}  chrome

*** Keywords ***

TestCase Setup
  Set Selenium Speed  ${delay}
  Setup Chrome Browser
  Set Window Size  1366  720

Setup Chrome Browser
  ${headlessValue}  Run Keyword If  "${headless}"=="Yes"  Set Variable  --headless
  ${options}  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
  Call Method  ${options}  add_argument  disable-infobars
  Run Keyword If  "${headlessValue}"=="--headless"  Call Method  ${options}  add_argument  ${headlessValue}
  Call Method  ${options}  add_argument  --disable-notifications
  Call Method  ${options}  add_argument  --disable-gpu
  Create WebDriver  Chrome  chrome_options=${options}
