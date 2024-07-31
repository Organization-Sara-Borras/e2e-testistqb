Feature: Answer a question

Background:
    Given the student is on the ISTQB exam page


Scenario: See welcome message

When the student enters the name "Reyes Mari"
Then the student should see the message "Welcome Reyes Mari"

When the student enters the name empty
Then the student should see the message "This field is mandatory, length should be less than 10"


Scenario Outline: Correct a question
When the user select answer <selectedAnswer> on question <questionNumber>
And the user press correct button on question <questionNumber>
Then the user should see the message <expectedMessage> on question <questionNumber>

Examples:
    | questionNumber     | selectedAnswer     | expectedMessage
    |"1"                 |"option2"           |"Wrong answer -1 points" |
    |"1"                 |"option1"           |"Correct answer 2 points"|
    |"1"                 |"option3"           |"Wrong answer -1 points" |
    |"1"                 |"--"                |"Wrong answer 0 points"  |



Scenario: Complete exam and see final answer

When the student finishes the test and presses the button "finish test"
Then the student wants to see his final score


    | questionNumber   | selectedAnswer          | expectedMessage
    |1                 |option2                  |Wrong answer -1 points |
    |1                 |option1                  |Correct answer 2 points|
    |1                 |option3                  |Wrong answer -1 points |
    |1                 |--                       |Wrong answer 0 points  |


    |2                 |option1                  |Wrong answer -1 points |
    |2                 |option3                  |Correct answer 2 points|
    |2                 |option2                  |Wrong answer -1 points |
    |2                 |--                       |Wrong answer 0 points  |

    
    |3                 |option1                  |Wrong answer -1 points |
    |3                 |option3                  |Correct answer 2 points|
    |3                 |option2                  |Wrong answer -1 points |
    |3                 |--                       |Wrong answer 0 points  |

    |4                 |option1                  |Wrong answer -1 points |
    |4                 |option2                  |Correct answer 2 points|
    |4                 |option3                  |Wrong answer -1 points |
    |4                 |--                       |Wrong answer 0 points  |

    |5                 |option2                  |Wrong answer -1 points |
    |5                 |option1                  |Correct answer 2 points|
    |5                 |option3                  |Wrong answer -1 points |
    |5                 |--                       |Wrong answer 0 points  |

    |6                 |option2                  |Wrong answer -1 points |
    |6                 |option3                  |Correct answer 2 points|
    |6                 |option1                  |Wrong answer -1 points |
    |6                 |--                       |Wrong answer 0 points  |

    
    |7                 |option2                  |Wrong answer -1 points |
    |7                 |option3                  |Correct answer 2 points|
    |7                 |option1                  |Wrong answer -1 points |
    |7                 |--                       |Wrong answer 0 points  |

    
    |8                 |option1                  |Wrong answer -1 points |
    |8                 |option2                  |Correct answer 2 points|
    |8                 |option3                  |Wrong answer -1 points |
    |8                 |--                       |Wrong answer 0 points  |

    |9                 |option2                  |Wrong answer -1 points |
    |9                 |option3                  |Correct answer 2 points|
    |9                 |option1                  |Wrong answer -1 points |
    |9                 |--                       |Wrong answer 0 points  |

    |10                 |option3                 |Wrong answer -1 points |
    |10                 |option2                 |Correct answer 2 points|
    |10                 |option1                 |Wrong answer -1 points |
    |10                 |--                      |Wrong answer 0 points  |