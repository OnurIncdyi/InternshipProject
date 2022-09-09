Feature: PG16-4 Feature

  Background:
    Given Navigate to basqar
    When Enter username and password and click login button
    Then User should login successfuly
    Given user goes to page with LeftNav Menu
      | setupOneMenu      |
      | parametersSubMenu |
      | bankAccFunction   |

  Scenario Outline: Add Bank Account

    And wait

    When user clicks to Dialog Content
      | fieldsAddBtn |

    And user sends information to Dialog Content
      | nameInput   | <nameInput>   |
      | inputIban   | <inputIban>   |
      | bankAccCode | <bankAccCode> |

    When user clicks to Dialog Content
      | currencyBox |
      | currencyTRY |
      | saveButton  |

    Then success message should display
      | <Message> | <msgText> |

    Examples:
      | nameInput | inputIban                   | bankAccCode | Message        | msgText |
      | deneme1   | DD53 4343 4456 5656 5666 00 | 6767        | successMessage | success |
      | deneme2   | DD53 4343 4456 5656 5666 00 | 6767        | alreadyExist   | exist   |

  Scenario Outline: Edit Bank Account

    When user sends information to Dialog Content
      | inputSearch | <nameInput> |

    And user clicks to Dialog Content
      | searchButton |

    And wait

    And user clicks to Dialog Content
      | editButton |

    And user sends information to Dialog Content
      | inputIban | <editIban> |

    And user clicks to Dialog Content
      | saveButton |

    Then success message should display
      | <Message> | <msgText> |

    Examples:
      | nameInput | editIban                    | Message        | msgText |
      | deneme1   | DD53 4343 4456 5656 5666 11 | successMessage | success |
      | deneme1   | DD53 4343 4456 5656 0000 00 | alreadyExist   | exist   |

  Scenario Outline: Delete Bank Account

    When user sends information to Dialog Content
      | inputSearch | <nameInput> |

    And user clicks to Dialog Content
      | searchButton    |
      | deleteButton    |
      | deleteDialogBtn |

    Then success message should display
      | successMessage | success |

    Examples:
      | nameInput |
      | deneme1   |