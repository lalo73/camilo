Feature: Change rate

  Background:
    Given I am logged in
    And I am on "the new event page"
    And I fill in "event[name]" with "nuevo evento"
    And I fill in "event[date]" with today
    And I fill in "event[max]" with "5" 
    And I press "saveButton"
    And I am logged out

  Scenario: Change my rate
    Given I login as "somebody" "somebody@gmail.com"
    And I rate "nuevo evento" choosing "happyButton"
    And I rate "nuevo evento" choosing "sadButton" 
    And I am logged out
    And I wait a while
    Then I am logged in
    And I am browsing the ratings page for event with slug "nuevoevento1"
    Then should see "Total de evaluaciones: 1"
    And should see "Promedio de evaluaciones: 0"