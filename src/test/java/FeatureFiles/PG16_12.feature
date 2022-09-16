Feature: Nationalities

  Background:
    Given Navigate to basqar
    When Enter username and password and click login button
    And Click on the element in the Left Navigation
      | setupOneMenu      |
      | parametersSubMenu |
      | nationalities     |

  @Regression
  Scenario: Add Nationalities
    And Click on the element in the Dialog Content
      | acceptCookies |
      | addButton     |

    And User sending the key in Dialog Content
      | nameInput | spacex |
    And Click on the element in the Dialog Content
      | saveButton |
    Then Success message should be displayed

  @Regression
  Scenario: Edit Nationalities
    And Click on the element in the Dialog Content
      | acceptCookies |
      | editButton    |
    And User sending the key in Dialog Content
      | nameInput | nasa |
    And Click on the element in the Dialog Content
      | saveButton |
    Then Success message should be displayed

  @Regression
  Scenario: Delete Nationalities
    And Click on the element in the Dialog Content
      | acceptCookies   |
      | deleteButton    |
      | deleteDialogBtn |
    Then Success message should be displayed

