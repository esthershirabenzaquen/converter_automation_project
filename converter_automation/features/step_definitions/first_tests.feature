Feature: User is able to convert area units
@wip
  Scenario: User is able to swap values
    Given I click on Got it button
    And I see "Sq Kilometre" in Form header
    And I see "Sq Metre" in To header
    When I click on Swap it button
    Then I see "Sq Metre" in Form header
    And I see "Sq Kilometre" in To header


