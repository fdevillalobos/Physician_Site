Feature: Search for doctors

  As a user
  so that I can get information about doctors
  I want to search for doctors and view the results how I want

Scenario: Search for existing doctors
    Given doctors are in the database
    Given I'm on the doctor search webpage
    When I search for a doctor who exists in the database
    Then show me the page
    Then I should see a list of doctors


Scenario: Search for non-existing doctors
    Given doctors are in the database
    Given I'm on the doctor search webpage
    When I search for a doctor who doesn't exist in the database
    Then I should not get any results

  Scenario: Search for doctors in comprehensive db with full UI returned
    Given the doctors database has many doctors
    Given I'm on the doctor search webpage
    When I search with search terms that will give me many results
    #(e.g. using specialty and/or location)
    Then I should see a table of the top 20 quality doctors
    Then I should see a map with the doctors' locations
    Then I should see a form whose default values equal my search parameters

  Scenario: Sort doctors by distance ascending
    Given I've searched for a doctor
    When I sort the doctors by distance ascending 
    Then I see the doctors table reorganized by distance ascending
  
  Scenario: Sort doctors by rating descending
    Given I've searched for a doctor
    When I sort the doctors by rating descending
    Then I see the doctors table reorganized by rating descending

  Scenario: Sort doctors by last name ascending
    Given I've searched for a doctor
    When I sort the doctors by last name ascending 
    Then I see the doctors table reorganized by last name ascending
