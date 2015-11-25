Feature: Rate event twice
  As an autenticated user
  I want to rate an event twice

  Background:
    Given event named "event rated twice" with date today
    And event named "event with members" with date today and 2 members

  Scenario: Notify previous rate
    Given I am logged in
    Given I want to rate "event rated twice"
    When I follow "sadButton"
    And I wait a while
    And I want to rate "event rated twice"
    When I follow "happyButton"
    And I wait a while
    Then I should see "Tu valoracion anterior era: :-("
    And I should see "Ahora tu valoracion es: :-)"
