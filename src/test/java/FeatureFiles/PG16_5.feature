Feature: Human Resources Setup

  Background:
    Given Navigate to basqar
    When Enter username and password and click login button
    And Click on the element in the Left Nav Panel
      | humanResourcesMenu  |
      | humanResourcesSetup |
      | positions           |

  @Regression
  Scenario: Add Positions
    And User Clicks on the element in the Dialog Content
      | addButton |
    And User sends key to the Dialog Content
      | nameInput | technicalManager |
      | shortName | TM               |
    And User Clicks on the element in the Dialog Content
      | saveButton |
    Then Success message displays

  @Regression
  Scenario: Edit Positions
    And User Clicks on the element in the Dialog Content
      | editButton |
    And User sends key to the Dialog Content
      | nameInput | sinanInceUpdated |
      | shortName | sInceUpdated     |
    And User Clicks on the element in the Dialog Content
      | saveButton |
    Then Success message displays

  @Regression
  Scenario: Delete Positions
    And User Clicks on the element in the Dialog Content
      | deleteButton    |
      | deleteDialogBtn |
    Then Success message displays