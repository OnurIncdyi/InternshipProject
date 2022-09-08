Feature: Parameters

  Background:
    Given Navigate to basqar
    When Enter username and password and click login button
    And Click on the element in the Left Navigation
      | setupOneMenu      |
      | parametersSubMenu |
      | documentTypes     |


  Scenario: Add Document Types
    And Click on the element in the Dialog Content
      | addButton     |
      | acceptCookies |
    And User sending the key in Dialog Content
      | nameInput   | artemisNasa |
      | description | Nasa        |
    And Click on the element in the Dialog Content
      | stageInput          |
      | studentRegistration |
    And Click on the tab
    And Click on the element in the Dialog Content
      | saveButton |
    Then Success message should be displayed

  Scenario: Edit Document Types
    And Click on the element in the Dialog Content
      | editButton    |
      | acceptCookies |
    And User sending the key in Dialog Content
      | nameInput   | artemisNasa82 |
      | description | Nasa          |
    And Click on the element in the Dialog Content
      | saveButton          |
    Then Success message should be displayed
#   //TODO

  Scenario: Delete Document Types
    And Click on the element in the Dialog Content
      | acceptCookies   |
      | deleteButton    |
      | deleteDialogBtn |
    Then Success message should be displayed


