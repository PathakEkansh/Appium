@home_screen
Feature: Tests for Home screen functionality

  @default
  Scenario: Default values on Home screen is Foot and Centimeter
    Given I land on Home screen
    Then Left Unit picker value should be "Foot"
    And Right unit picker value should be "Centimeter"

  Scenario: Show All button should be enabled at launch
    Given I land on Home screen
    Then Show All button should be enabled
    When I press on Clear button
    Then Show All button should be disabled

  @test
  Scenario Outline: Verify default conversion
    Given I land on Home screen
    When I type "<target>" to target text field
    Then I should see result as "<result>"
  Examples:
    |target|result|
    |1     |30.48 |
    |2     |60.96 |


  @wip1 @Test1
  Scenario: User able to add current conversion to Favorites list
    Given I land on Home screen
    Then I press on Add to Favorites icon
    When I press on Menu icon
    Then I press on Favorite conversions
    And I verify "Length" added to Favorite conversions list
    
   @wip1 @Test
    Scenario: User able to search by existing conversion type
      Given I land on Home screen
      Then I press the search icon
      Then I type "Temperature" in search field
      And I press return button n the soft keyboard
      Then I see "Temperature" as a current unit converter 
      Then Left Unit picker value should be "Celsius"
      And Right unit picker value should be "Fahrenheit"

