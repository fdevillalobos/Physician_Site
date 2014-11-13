Feature: session

  As a user
  so that I can manage my user account
  I want to access my account, change account settings, and delete my account

  Scenario: Login with email
    Given I have an existing user
    And I'm on the session page
    When I fill sign in fields
    Then I should see signed in message

  Scenario: Change password
    Given I have an existing user
    And I'm on the session page
    And I sign in with my credentials
    And I'm on the edit user webpage
    When I fill the new password fields
    And I fill the current password field and update
    Then I should see account successfully updated

  Scenario: Change password without current password
    Given I have an existing user
    And I'm on the session page
    And I sign in with my credentials
    When I'm on the edit user webpage
    And I fill the new password fields
    And I don't fill the current password field and update
    Then I should see account not updated error

  Scenario: Change name
    Given I have an existing user
    And I'm on the session page
    And I sign in with my credentials
    And I'm on the edit user webpage
    When I fill in the name
    And I fill the current password field and update
    Then I should see account successfully updated

Scenario: Change email
    Given I have an existing user
    And I'm on the session page
    And I sign in with my credentials
    And I'm on the edit user webpage
    When I fill in the email
    And I fill the current password field and update
    Then I should see account successfully updated

  Scenario: Delete a user account
    Given I have an existing user
    And I'm on the session page
    And I sign in with my credentials
    When I'm on the edit user webpage
    When I cancel my account
    Then I should see account successfully cancelled

  Scenario: Login with Facebook
    Given I have a Facebook account
    And I'm currently on the Facebook authentication webpage
    When I sign in with my credentials
    Then I should see successful Facebook authentication message
