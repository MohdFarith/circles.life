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

${fb_main_url}  https://en-gb.facebook.com/
${fb_main_header}  //h1//u[text()='Facebook']
${fb_main_email_input}  //form[@id='login_form']//input[@type='email']
${fb_main_password_input}  //form[@id='login_form']//input[@type='password']
${fb_main_login_button}  //form[@id='login_form']//input[@value='Log In']

${fb_home_header}  //h1//span[text()='Facebook']
${fb_home_search_input}  //div[@class='wrap']//input[@placeholder='Search']
${fb_home_left_nav_profile}  //div[@id='userNav']//div[@class='linkWrap noCount']

${fb_timeline_cover_image}  //div[@id='fbCoverImageContainer']
${fb_timeline_top_nav_timeline}  //div[@id='fbTimelineHeadline']//a[text()='Timeline']
${fb_timeline_make_a_post}  //a[@label='Make Post']//span[text()='Make Post']
${fb_timeline_post_comment_container}  //div[@id='timeline_composer_container']
${fb_timeline_post_comment_container_close}  //div[@id='timeline_composer_container']//div[@aria-label='Dismiss']
${fb_timeline_post_comment_container_input}  //div[@id='timeline_composer_container']//div[@data-testid='status-attachment-mentions-input']
${fb_timeline_post_comment_container_post_button}  //div[@id='timeline_composer_container']//button//span[text()='Post']
