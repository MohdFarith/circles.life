*** Settings ***

Documentation   A test suite with various tests.

#Import
Resource  testsettings.robot

#Setup/Tear Down
Test Setup  TestCase Setup
Test Teardown  Close Browser

*** Test Cases ***

Test Login To Circles Life
  Access To Cycles Life Main Page
  Access To Sign In/Create Account Page
  Sign In/Create Account Page Landing
  Handle Facebook Sign In Window
  Sign In To Existing Account
  Successful Signed In Landing
  Access To My Account
  My Account Landing
  Verify Registered Email Displayed In My Account
  Capture Page Screenshot
