Feature: Specialities

    @SP001 @MYD-150 @Regression @NotAutomated @Specialities
    Scenario Outline: Checking the functionality of specialities card
        Given user navigates to the "<Page Type>" page
        When user clicks on the "<Cards>" field
        Then the corresponding page appears with the expected elements: "<Item>"
        Examples:
            | Page Type    | Cards           | Item                                           |
            | Specialities | Dermatology     | Dr. Ola Mohr                                   |
            | Specialities | Cardiac Surgery | Dr. Wava Grant,Dr. Eden Dach,Dr. Vaughn Ernser |

    @SP002 @MYD-150 @Regression @NotAutomated @Sanity @Search @Specialities
    Scenario Outline: Checking the functionality of search bar
        Given user navigates to the "<Page Type>" page
        When user enters value "<Data>" in the "Search a Speciality-placeholder" input field
        And user clicks on the "search Button"
        Then the corresponding page appears with the expected elements: "<Item>"
        Examples:
            | Page Type    | Data   | Item                                              |
            | Specialities | Dental | Dental                                            |
            | Specialities | Car    | Cardiac Surgery,Cardiology,Critical Care Medicine |
            | Specialities | virus  | 0+ Specialities,No specialities found             |

    # @SP003 @MYD-150 @Regression @NotAutomated @Pagination @Specialities
    Scenario Outline: Checking the functionality of side navigation buttons
        Given user navigates to the "<Page Type>" page
        And "<First Navigation Button>" button is "disabled"
        And "<Second Navigation Button>" button is "enabled"
        When user clicks on the "enabled" button
        Then user is on "enabled" button
        Then "<First Navigation Button>" button is "enabled"
        Examples:
            | Page Type    | Second Navigation Button | First Navigation Button |
            | Specialities | Next                     | Previous                |
            | Specialities | Previous                 | Next                    |

    # @SP004 @MYD-150 @Regression @NotAutomated @Pagination @Specialities
    Scenario Outline: Checking the functionality of number navigation buttons
        Given user navigates to the "<Page Type>" page
        And "<First Navigation Button>" button is "disabled"
        And "<Second Navigation Button>" button is "enabled"
        When user clicks on the "enabled" button
        Then user is on "enabled" button
        Examples:
            | Page Type    | Page Number | Second Navigation Button | First Navigation Button |
            | Specialities | 2           | Previous                 | Next                    |

    # @SP005 @MYD-150 @Regression @NotAutomated @Filter @Specialities
    Scenario Outline: Checking the functionality of speciality filter
        Given user navigates to the "<Page Type>" page
        When user clicks on the "speciality filter field"
        And user clicks on the "speciality filter"
        Then the corresponding page appears with the expected elements: "<Item>"
        Examples:
            | Page Type    | speciality filter | Item                                                                                            |
            | Specialities | 8                 | Breast & Oncoplastic - Oncology,Endocrinology & Diabetology,Cardiac Surgery,Clinical Psychology |