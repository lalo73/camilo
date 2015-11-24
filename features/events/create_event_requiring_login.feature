Feature: Create requires-login event
  As a speaker
  I want to create a event and require user to be logged-in

  Background:
    Given there are not events
    And I am logged in

  Scenario: Create a event without requiring auth by default
    Given I am on "the new event page"
    And I fill in "event[name]" with "My first event"
    And I fill in "event[max]" with "10"
    And I fill in "event[date]" with tomorrow
    And I fill in "event[members]" with "miembro1@gmail.com, miembro2@outlook.com, miembro3@yahoo.com"
    When I press "saveButton"
    Then I should see "myfirstevent1"
    And I should see "Require autenticacion: No"

  @wip
  Scenario: Create a requires-login event
    Given I am on "the new event page"
    And I fill in "event[name]" with "My first event"
    And I fill in "event[max]" with "10"
    And I fill in "event[date]" with tomorrow
    And I check "event[login_required]"
    And I fill in "event[members]" with "miembro1@gmail.com, miembro2@outlook.com, miembro3@yahoo.com"
    When I press "saveButton"
    Then I should see "myfirstevent1"
    And I should see "Require autenticacion: Si"
