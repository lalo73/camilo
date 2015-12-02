Feature: Event with video
  As an assistant
  When I go to rate an event with video
  I should see the video the event in the page

  Background:
    Given event named "evento con video" with date today and the video link "https://www.youtube.com/watch?v=EwmI5NDKLBo"
    And event named "first event" with date today

  Scenario: Page to rate event with video
    Given I want to rate "evento con video" 
    Then I should see the video the event in the page
  @wip
  Scenario: Page to rate event without video
    Given I want to rate "first event" 
    Then I should not see any video in the page