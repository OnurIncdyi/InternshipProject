Feature: Add-Edit-Delete Subject Categories Under Education Setup

  Background:
    Given Navigate to basqar
    When Enter username and password and click login button
    Then User should login successfuly
  @Regression
  Scenario:Add Subject Categories
    Given Click on the element in the Left Navigation Panel
      | educationMenu         |
      | setupFour         |
      | subjectCategories |

    When Click on the element in the Dialog Content
      | addButton |

    And User sends the keys in the Dialog Content
      | nameInput | Chemistry101 |
      | codeInput | Chem101        |

    And Click on the element in the Dialog Content
      | saveButton |

    Then Success message should be displayed
  @Regression
  Scenario: Edit Subject Categories
    Given Click on the element in the Left Navigation Panel
      | educationMenu     |
      | setupFour         |
      | subjectCategories |

    When User searches for the desired item in the Dialog Content
      | searchInput | Chemistry101 |

    And Click on the element in the Dialog Content
      | searchButton |
      | editButton   |

    And User sends the keys in the Dialog Content
      | nameInput | Physic101 |

    And Click on the element in the Dialog Content
      | saveButton |

    Then Success message should be displayed
  @Regression
  Scenario: Delete Subject Categories
    Given Click on the element in the Left Navigation Panel
      | educationMenu     |
      | setupFour         |
      | subjectCategories |

    When User searches for the desired item in the Dialog Content
      | searchInput | Physic101 |

    And Click on the element in the Dialog Content
      | searchButton        |
      | deleteButton        |
      | deleteDialogBtn |

    Then Success message should be displayed