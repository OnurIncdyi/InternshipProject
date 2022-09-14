Feature: PG16-2 Feature

  Background:
    Given Navigate to basqar
    When Enter username and password and click login button
    Then User should login successfuly
    Given user goes to page with LeftNav Menu
      | humanResourcesMenu  |
      | humResourcesSetup1  |
      | attestations        |
@Regression
  Scenario: Add Attestation Categories
    And Click on the element in the Dialog Content
      | addButton |
    And User sending the key in Dialog Content
      | nameInput | testonay |
    And Click on the element in the Dialog Content
      | saveButton |
    Then Success message should be displayed
  @Regression
  Scenario: Edit Attestation Categories
    And Click on the element in the Dialog Content
      | editButton |
    And User sending the key in Dialog Content
      | nameInput | OnayTEST |
    And Click on the element in the Dialog Content
      | saveButton |
    Then Success message should be displayed
  @Regression
  Scenario: Delete Attestation Categories
    And Click on the element in the Dialog Content
      | deleteButton    |
      | deleteDialogBtn |
    Then Success message should be displayed