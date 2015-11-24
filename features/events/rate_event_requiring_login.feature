Feature: Rate event
  As an anonymous attendee
  I want to rate an event which requires authentication
  and should be redirect to login page before rate

  Background:
    Given event named "event with requires_auth" with date today and 2 members and requires auth

  Scenario: Redirect to login page
    Given I want to rate "event with requires_auth"
    Then I should see "Este evento requiere autenticacion"

  Scenario: Login and rate
    Given I am logged in
    Given I want to rate "event with requires_auth"
    Then I should see "Evaluación de evento"
