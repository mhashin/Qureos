Feature: Qureos login

Scenario :Login with valid credentials
  Given launch the url "https://app.qureos.com/"
  When  user enter "Admin" in the username field
  And user enter "admin123" in the password field
  And user click on login button
  Then user should login successfully

Scenario Outline: Login with invalid credentials
  Given Launch the url "https://app.qureos.com/"
  When  user enter <email> in the username field
  And user enter <passowrd> in the password field
  And user click on login button
  Then user should not login successfully

  Examples:
  |email|password|
  |invalid|valid |
  |valid  |invalid|
  |invalid|invalid|
