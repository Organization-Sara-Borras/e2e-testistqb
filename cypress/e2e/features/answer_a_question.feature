Feature: Answer a question

Background:
    Given the student is on the ISTQB exam page


Scenario: See welcome message

When the student enters the name "Sara"
And the student click Enter button
Then the student should see the message "Welcome to ISTQB Online Test Sara"

When the student enters the name " "
And the student click Enter button
Then the student should see the error message "This field is mandatory, length should be less than 10."


Scenario: See answer 

When the student clicks "Send answer"
And the student sees if the answer is correct or incorrect


Scenario Outline: Correct a question

When the student clicks "Send answer"
And the student answers incorrectly
Then the student see the message "Wrong answer -1 points"


When the student clicks "Send answer"
And the student answers correct
Then the student see the message "Correct answer 2 points"

When the student clicks "Send answer"
And the student answers is empty
Then the student see the message "Wrong answer 0 points"

Examples:

    |questionNumber |selectedAnswer            |expectedMessage
    |"1"            |"Option A"                |"Correct answer 2 points"
    |"2"            |"Option B"                |"Wrong answer -1 points"
    |"3"            |"Option C"                |"Wrong answer -1 points"
    |""             |""                        |"Wrong answer 0 points"



Scenario: Complete exam and see final answer

When the student finishes the test and presses the button "finish test"
Then the student wants to see his final score


    |questionNumber    |selectedAnswer           |expectedMessage
    |1                 |Option B                 |Wrong answer -1 points |
    |1                 |Option A                 |Correct answer 2 points|
    |1                 |Option C                 |Wrong answer -1 points |
    |1                 |--                       |Wrong answer 0 points  |


    |2                 |Option A                 |Wrong answer -1 points |
    |2                 |Option C                 |Correct answer 2 points|
    |2                 |Option B                 |Wrong answer -1 points |
    |2                 |--                       |Wrong answer 0 points  |

    
    |3                 |Option A                 |Wrong answer -1 points |
    |3                 |Option C                 |Correct answer 2 points|
    |3                 |Option B                 |Wrong answer -1 points |
    |3                 |--                       |Wrong answer 0 points  |

    |4                 |Option A                 |Wrong answer -1 points |
    |4                 |Option B                 |Correct answer 2 points|
    |4                 |Option C                 |Wrong answer -1 points |
    |4                 |--                       |Wrong answer 0 points  |

    |5                 |Option B                 |Wrong answer -1 points |
    |5                 |Option A                 |Correct answer 2 points|
    |5                 |Option C                 |Wrong answer -1 points |
    |5                 |--                       |Wrong answer 0 points  |

    |6                 |Option B                 |Wrong answer -1 points |
    |6                 |Option C                 |Correct answer 2 points|
    |6                 |Option A                 |Wrong answer -1 points |
    |6                 |--                       |Wrong answer 0 points  |

    
    |7                 |Option B                 |Wrong answer -1 points |
    |7                 |Option C                 |Correct answer 2 points|
    |7                 |Option A                 |Wrong answer -1 points |
    |7                 |--                       |Wrong answer 0 points  |

    
    |8                 |Option A                 |Wrong answer -1 points |
    |8                 |Option B                 |Correct answer 2 points|
    |8                 |Option C                 |Wrong answer -1 points |
    |8                 |--                       |Wrong answer 0 points  |

    |9                 |Option B                 |Wrong answer -1 points |
    |9                 |Option C                 |Correct answer 2 points|
    |9                 |Option A                 |Wrong answer -1 points |
    |9                 |--                       |Wrong answer 0 points  |

    |10                |Option C                 |Wrong answer -1 points |
    |10                |Option B                 |Correct answer 2 points|
    |10                |Option A                 |Wrong answer -1 points |
    |10                |--                       |Wrong answer 0 points  |


Scenario: See ranking

When the student finishes the test and presses the button "finish test"
Then the student will see what their score is
And the student clicks on "show ranking", he will see all the students ordered from highest to lowest

    |student Sara      |selectedAnswer           |expectedMessage
    |1                 |Option A                 |Correct answer 2 points|
    |2                 |Option C                 |Correct answer 2 points|
    |3                 |Option C                 |Correct answer 2 points|
    |4                 |Option B                 |Correct answer 2 points|
    |5                 |Option A                 |Correct answer 2 points|
    |6                 |Option C                 |Correct answer 2 points|
    |7                 |Option C                 |Correct answer 2 points|
    |8                 |Option B                 |Correct answer 2 points|
    |9                 |Option C                 |Correct answer 2 points|
    |10                |Option B                 |Correct answer 2 points|

    |student Kike      |selectedAnswer           |expectedMessage
    |1                 |Option A                 |Wrong answer -1 points|
    |2                 |Option C                 |Wrong answer -1 points|
    |3                 |Option C                 |Wrong answer -1 points|
    |4                 |Option B                 |Wrong answer -1 points|
    |5                 |Option A                 |Wrong answer -1 points|
    |6                 |Option C                 |Wrong answer -1 points|
    |7                 |Option C                 |Wrong answer -1 points|
    |8                 |Option B                 |Wrong answer -1 points|
    |9                 |Option C                 |Wrong answer -1 points|
    |10                |Option B                 |Wrong answer -1 points|

    |student Yago      |selectedAnswer           |expectedMessage
    |1                 |Option empty             |Wrong answer 0 points|
    |2                 |Option empty             |Wrong answer 0 points|
    |3                 |Option empty             |Wrong answer 0 points|
    |4                 |Option empty             |Wrong answer 0 points|
    |5                 |Option empty             |Wrong answer 0 points|
    |6                 |Option empty             |Wrong answer 0 points|
    |7                 |Option empty             |Wrong answer 0 points|
    |8                 |Option empty             |Wrong answer 0 points|
    |9                 |Option empty             |Wrong answer 0 points|
    |10                |Option empty             |Wrong answer 0 points|

    |Ranking|          |Result|   
    |Sara|             |20    |
    |Kike|             |-10   |
    |Yago|             |0     |