Feature: Complete exam 2

Background:
    Given the student is on the ISTQB exam page

Scenario: Complete exam 2

When the student enters the name "Kike"
And the student click Enter button
And the student answers questions:

    |questionNumber    |selectedAnswer           |expectedMessage               |
    |1                 |"option3"                |"Wrong answer -1 points"      |
    |2                 |"option4"                |"Wrong answer -1 points"      |
    |3                 |"option8"               |"Wrong answer -1 points"      |
    |4                 |"option10"               |"Correct answer 2 points"     |
    |5                 |"option13"               |"Wrong answer -1 points"      |
    |6                 |"option16"               |"Wrong answer -1 points"      |
    |7                 |"option19"               |"Wrong answer -1 points"      |
    |8                 |"option22"               |"Wrong answer -1 points"      |
    |9                 |"option25"               |"Wrong answer -1 points"      |
    |10                |"option28"               |"Correct answer 2 points"     |
   
And the student finishes the test and presses the button finish test
And the student clicks on show ranking button
Then the student will see all the students ordered from highest to lowest