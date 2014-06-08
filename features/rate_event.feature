Feature: Rate event
  As an attendee
  I want to rate an event
  So the speaker can improve his performance

  Background:
    Given event named "the first event" with date today
    And event named "the second event" with date tomorrow

  Scenario: Happy path
    Given I want to rate "the first event"
    And I fill in "comment" with "Great!"
    When I follow "happyButton"
    And I wait a while    
    Then I should see "Gracias"

  Scenario: Rate future event
    Given I want to rate "the second event"
    And I wait a while    
    Then I should see "El evento no se encuentra disponible para evaluar porque no ha sido dictado"
