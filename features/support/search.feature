Feature: Search for doctors

  As a user
  so that I can get information about doctors
  I want to search for doctors and view the results how I want

  Scenario: Search for doctors
    Given I'm on the doctor search page
    When I search for a doctor 
    #(using specialty and/or location)
    Then I should see a table of the top 20 quality doctors
    Then I should see a map with the doctors' locations
    Then I should see a form whose default values equal my search parameters

  Scenario: Sort doctors by distance ascending
    Given I'm on the doctor results page
    When I sort the doctors by distance ascending 
    Then I see the doctors table reorganized by distance ascending
  
  Scenario: Sort doctors by rating descending
    Given I'm on the doctor results page
    When I sort the doctors by rating descending
    Then I see the doctors table reorganized by rating descending

  Scenario: Sort doctors by last name ascending
    Given I'm on the doctor results page
    When I sort the doctors by last name ascending 
    Then I see the doctors table reorganized by last name ascending
