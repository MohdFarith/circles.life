*** Settings ***

Documentation  This file will only store variables.

*** Variables ***

${test_mail}  yeddy_test1@protonmail.com
${test_pass}  df478444

${main_url}  https://pages.circles.life/
${main_title}  Circles.Life | Unlimit your telco. Now.

${main_sign_up_button}  //div[contains(@class,'relative')]//a[@href='https://shop.circles.life/login?auto_facebook_login=true' and text()='Sign up']
${sign_in/create_acc_title}  Unlimit your telco. Now.
${sign_in/create_acc_header}  //div[@class='row']/div[text()='The Best No-contract Mobile Plan'][2]
${sign_in_facebook_title}  Facebook

${sign_in_email_text}  //form[@class='form-signin']//div[@class='hidden-small-device']//div[text()='Email address']
${sign_in_email_input}  //form[@class='form-signin']//input[@name='email']
${sign_in_pass_text}  //form[@class='form-signin']//div[@class='hidden-small-device']//div[text()='Password']
${sign_in_pass_input}  //form[@class='form-signin']//input[@name='password']
${sign_in_button}  //button[text()='Sign In']

${signed_in_title}  Unlimit your telco. Now.
${signed_in_header}  //div[@class='hidden-small-device']//h5//center[text()='The Best No-contract Mobile Plan']
${signed_in_menu_my_account}  //div[text()='MY ACCOUNT']

${my_account_title}  Unlimit your telco. Now.
${my_account_header}  //div[@class='hidden-small-device']//h5//div[text()='My Account']
${my_account_email_text}  //label[text()='Email']
