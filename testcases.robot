*** Settings ***

Documentation   A test suite with various tests.

#Import
Resource  testsettings.robot

#Setup/Tear Down
Test Setup  TestCase Setup
Test Teardown  Close Browser

*** Test Cases ***

Test Login To Circles Life
  [tags]  one
  Access To Cycles Life Main Page
  Access To Sign In/Create Account Page
  Sign In/Create Account Page Landing
  Handle Facebook Sign In Window
  Sign In To Existing Account
  Successful Signed In Landing
  Access To My Account
  My Account Landing
  Verify Registered Email Displayed In My Account
  Selenium2Library.Capture Page Screenshot

Test Login To Facebook And Post Comment
  [tags]  two
  ${currentDate}  Get Current Date
  Set Test Variable  ${currentDate}  ${currentDate}
  Access To Facebook Login Page
  Fill In Email And Password To Login
  Facebook Home Landing
  Access To Profile Timeline
  Profile Timeline Landing
  Post A Comment On Own Profile  My Comment for ${currentDate}
  Validate Successfully Post A Comment  My Comment for ${currentDate}
  Selenium2Library.Capture Page Screenshot
