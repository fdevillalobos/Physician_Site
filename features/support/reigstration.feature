Feature: registration

  As an admin
  so that I can track all the users in the database.

  Scenario: Create new user
    Given I'm on the registration page
    When I create a new user
    Then should be redirected to my dashboard

  Scenario: Test errors for user creation
    Given I'm on the registration page
    When I complete the email and password fields
#    Then show me the page
    Then I should see an error on the user creation