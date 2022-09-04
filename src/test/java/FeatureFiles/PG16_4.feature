Feature: PG16-4 Feature

  Background:
    Given Navigate to basqar
    When Enter username and password and click login button
    Then User should login successfuly

  Scenario Outline: Add Fields
    Given user goes to page with LeftNav Menu
      | setupOneMenu      |
      | parametersSubMenu |
      | fieldsFunction    |

    When user clicks to Dialog Content
      | fieldsAddBtn |

    And user sends information to Dialog Content
      | nameInput | <nameInput> |
      | codeInput | <codeInput> |


    When user clicks to Dialog Content
      | saveButton |

    Then success message should display
      | successMessage | success |

    Examples:
      | nameInput | codeInput |
      | sample1   | 1010      |

  Scenario Outline: Edit Fields
    Given user goes to page with LeftNav Menu
      | setupOneMenu      |
      | parametersSubMenu |
      | fieldsFunction    |

    When user sends information to Dialog Content
      | inputSearch | <nameInput> |

    And user clicks to Dialog Content
      | searchButton |
      | editButton   |

    And user sends information to Dialog Content
      | nameInput | <editName> |

    And user clicks to Dialog Content
      | saveButton |

    Then success message should display
      | successMessage | success |

    Examples:
      | nameInput | editName |
      | sample1   | edit1    |

  Scenario Outline: Delete Fields

    Given user goes to page with LeftNav Menu
      | setupOneMenu      |
      | parametersSubMenu |
      | fieldsFunction    |

    When user sends information to Dialog Content
      | inputSearch | <editName> |

    And user clicks to Dialog Content
      | searchButton    |
      | deleteButton    |
      | deleteDialogBtn |

    Then success message should display
      | successMessage | success |

    Examples:
      | editName |
      | edit1    |
