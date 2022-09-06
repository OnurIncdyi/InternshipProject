Feature: Human Resources Setup

  Background:
    Given Navigate to basqar
    When Enter username and password and click login button
    And Click on the element in the Left Nav Panel
      | humanResourcesMenu  |
      | humanResourcesSetup |
      | positions           |

  Scenario: Add Positions
    And User Clicks on the element in the Dialog Content
      | addButton |
    And User sends key to the Dialog Content
      | nameInput | sinanInce |
      | shortName | sInce     |
    And User Clicks on the element in the Dialog Content
      | saveButton |
    Then Success message displays

  Scenario: Edit Positions
    And User Clicks on the element in the Dialog Content
      | editButton |
    And User sends key to the Dialog Content
      | nameInput | sinanInce2 |
      | shortName | sInce2     |
    And User Clicks on the element in the Dialog Content
      | saveButton |
    Then Success message displays

  Scenario: Delete Positions
    And User Clicks on the element in the Dialog Content
      | deleteButton    |
      | deleteDialogBtn |
    Then Success message displays