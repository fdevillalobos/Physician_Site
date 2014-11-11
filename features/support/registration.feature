Feature: registration

  As a user
  so that I can use the site's features available to registered users
  I want to be able to register a new account

  Scenario: Create new user
    Given I'm on the registration page
    When I create a new user
    Then should be redirected to my dashboard

  Scenario: Create new user without password confirmation
    Given I'm on the registration page
    When I complete only the email and password fields
    Then I should see an error on the user creation

  Scenario: Create new user with short password
    Given I'm on the registration page
    When I complete the email and password fields with less than eight chars
    Then I should see password error