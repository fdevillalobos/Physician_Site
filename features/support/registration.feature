Feature: registration

  As a user
  so that I can register to the site.

  Scenario: Create new user
    Given I'm on the registration page
    When I create a new user
    Then should be redirected to my dashboard

  Scenario: Test errors for user creation
    Given I'm on the registration page
    When I complete only the email and password fields
    Then I should see an error on the user creation

  Scenario: Test password length
    Given I'm on the registration page
    When I complete the email and password fields with less than eight chars
    Then I should see password error