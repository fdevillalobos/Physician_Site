Feature: visitor

  As a visitor
  Check for access levels

  Scenario: Test for visitors access restriction to view user list
    Given I'm not a user of the site
    And I'm on the root
    When I try to access the user list
    Then I should be redirected to login page