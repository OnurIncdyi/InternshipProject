Feature: PG16-8 Feature

  Background:
    Given Navigate to basqar
    When Enter username and password and click login button
    Then User should login successfuly
    Given user goes to page with LeftNav Menu
      | setupOneMenu    |
      | schoolSetupMenu |
      | departmentsMenu |

  Scenario Outline: Add Departments

    When user clicks to Dialog Content
      | addButton |

    And user sends information to Dialog Content
      | nameInput | <nameInput> |
      | codeInput | <codeInput> |

    When user goes to page with LeftNav Menu
      | sectionMenu |

    And wait

    And user sends information to Dialog Content
      | nameInput      | <nameInput> |
      | shortNameInput | <shortName> |

    When user clicks to Dialog Content
      | saveButton |

    Then Success message should be displayed

    Examples:
      | nameInput | codeInput | shortName |
      | test07    | test08    | test2     |

  Scenario Outline: Edit Departments

    When user clicks to Dialog Content
      | editButton |

    And user sends information to Dialog Content
      | nameInput | <nameInput> |
      | codeInput | <codeInput> |

    When user goes to page with LeftNav Menu
      | sectionMenu |

    And wait

    And user sends information to Dialog Content
      | nameInput      | <nameInput> |
      | shortNameInput | <shortName> |

    When user clicks to Dialog Content
      | saveButton |


    Then Success message should be displayed

    Examples:
      | nameInput | codeInput | shortName |
      | test08    | test09    | test5     |

  Scenario: Delete Departments

    And user clicks to Dialog Content
      | deleteButton    |
      | deleteDialogBtn |

    Then Success message should be displayed

  Scenario: Delete Departments

    And user clicks to Dialog Content
      | deleteButton    |
      | deleteDialogBtn |

    Then Success message should be displayed




