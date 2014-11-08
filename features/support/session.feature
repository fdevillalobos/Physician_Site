Feature: session

  As a user
  so that I can manage my user account
  I want to access my account, change preferences, and delete my account

  Scenario: Test login for user
    Given I have an existing user
    And I'm on the session page
    When I fill sign in fields
    Then I should see signed in message

  Scenario: Test user is able to change password
    Given I have an existing user
    And I'm on the session page
    And I sign in with my credentials
    And I'm on the edit user webpage
    When I fill the new password fields
    And I fill the current password field and update
    Then I should see account successfully updated

  Scenario: Test for requirement of current password to change password
    Given I have an existing user
    And I'm on the session page
    And I sign in with my credentials
    When I'm on the edit user webpage
    And I fill the new password fields
    And I don't fill the current password field and update
    Then show me the page
    Then I should see account not updated error

  Scenario: Delete a user account
    Given I have an existing user
    And I'm on the session page
    And I sign in with my credentials
    When I'm on the edit user webpage
    When I cancel my account
    Then I should see account successfully cancelled
