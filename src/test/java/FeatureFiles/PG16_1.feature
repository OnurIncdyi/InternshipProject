Feature: Human Resources Setup

  Background:
    Given Navigate to basqar
    When Enter username and password and click login button
    And Click on the element in the Left Navigation
      | humanResourcesMenu  |
      | humanResourcesSetup |
      | positionCategories  |

  Scenario: Add Position Categories
    And Click on the element in the Dialog Content
      | addButton |
    And User sending the key in Dialog Content
      | nameInput | AliKemal |
    And Click on the element in the Dialog Content
      | saveButton |
    Then Success message should be displayed

  Scenario: Edit Position Categories
    And Click on the element in the Dialog Content
      | editButton |
    And User sending the key in Dialog Content
      | nameInput | aliKemalInal |
    And Click on the element in the Dialog Content
      | saveButton |
    Then Success message should be displayed

  Scenario: Delete Position Categories
    And Click on the element in the Dialog Content
      | deleteButton    |
      | deleteDialogBtn |
    Then Success message should be displayed


