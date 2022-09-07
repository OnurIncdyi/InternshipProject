Feature: Add-Edit-Delete Discounts under Parameters Setup

  Background:
    Given Navigate to basqar
    When Enter username and password and click login button
    Then User should login successfuly

  Scenario: Add Discounts
    Given Click on the element in the Left Navigation Panel
      | setupOneMenu      |
      | parametersSubMenu |
      | discounts         |

    When Click on the element in the Dialog Content
      | addButton |

    And User sends the keys in the Dialog Content
      | descriptionInput | 15% for 2nd child |
      | codeInput        | Dis2              |
      | priorityInput    | 2                 |

    And Click on the element in the Dialog Content
      | saveButton |

    Then Success message should be displayed

  Scenario: Edit Discounts
    Given Click on the element in the Left Navigation Panel
      | setupOneMenu      |
      | parametersSubMenu |
      | discounts         |

    When User searches for the desired item in the Dialog Content
      | searchInput | 15% for 2nd child |

    And Click on the element in the Dialog Content
      | searchButton |
      | editButton   |

    And User sends the keys in the Dialog Content
      | descriptionInput | Welcome for 20% for 2nd child |

    And Click on the element in the Dialog Content
      | saveButton |

    Then Success message should be displayed

  Scenario: Delete Discounts
    Given Click on the element in the Left Navigation Panel
      | setupOneMenu      |
      | parametersSubMenu |
      | discounts         |

    When User searches for the desired item in the Dialog Content
      | searchInput | Welcome for 20% for 2nd child |

    And Click on the element in the Dialog Content
      | searchButton    |
      | deleteButton    |
      | deleteDialogBtn |

    Then Success message should be displayed