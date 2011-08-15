Feature: View the homepage

  So that I can test cucumber with sinatra
  As a developer
  I want to run a cucumber scenario

  Scenario: go to the homepage
    Given a new user goes to the homepage
    Then I should see "Sinatra template" within "body"
