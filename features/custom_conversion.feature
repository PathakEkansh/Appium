
@custom_conversion
Feature: User able to create and manage custom conversion
 @pipe

  Scenario: User able to create new conversion
    Given I land on Home screen
    Then I press on Menu icon
    Then I press on My conversions button
    Then I press on create your first conversion button
    And I typed "power" as custom conversion name
    When I press on new unit button
    Then I typed "Horsepower" as unit name
    Then I typed "HP" as unit symbol
    Then I typed "1" as unit value
    And I pressed submit check mark on Custom conversion screen
    Then I press on new unit button
    Then I typed "Mule Power" as unit name
    Then I typed "MP" as unit symbol
    Then I typed "0.5" as unit value
    And I pressed submit check mark on Custom conversion screen
    Then I press on OK button on Custom conversion screen
    And I verify "Power" added to Custom conversions list

