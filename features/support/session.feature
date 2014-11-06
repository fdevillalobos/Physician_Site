Feature: session

  As a user
  So that I can access my account and preferences

  Scenario: Test login for user
    Given I have an existing user
    And I'm on the session page
    When I fill sign in fields
    Then I should see signed in message