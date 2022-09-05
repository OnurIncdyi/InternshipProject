Feature: PG16-4 Feature

  Background:
    Given Navigate to basqar
    When Enter username and password and click login button
    Then User should login successfuly
    Given user goes to page with LeftNav Menu
      | setupOneMenu      |
      | parametersSubMenu |
      | fieldsFunction    |

  Scenario Outline: Add Fields

    When user clicks to Dialog Content
      | fieldsAddBtn |

    And user sends information to Dialog Content
      | nameInput | <nameInput> |
      | codeInput | <codeInput> |


    When user clicks to Dialog Content
      | saveButton |

    Then success message should display
      | <Message> | <msgText> |

    Examples:
      | nameInput | codeInput | Message        | msgText |
      | sample1   | 9867      | successMessage | success |
      | sample1   | 3321      | alreadyExist   | exist   |
      | sample2   | 9867      | alreadyExist   | exist   |

  Scenario Outline: Edit Fields

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
      | <Message> | <msgText> |

    Examples:
      | nameInput | editName   | Message        | msgText |
      | sample1   | edit2      | successMessage | success |
      | edit2     | denemePG16 | alreadyExist   | exist   |

  Scenario Outline: Delete Fields

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
      | edit2    |
