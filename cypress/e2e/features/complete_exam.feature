Feature: Complete exam

Background:
    Given the student is on the ISTQB exam page

Scenario: Complete exam

When the student enters the name "Sara"
And the student click Enter button
And the student answers questions:

    |questionNumber    |selectedAnswer           |expectedMessage               |
    |1                 |"option1"                |"Correct answer 2 points"     |
    |2                 |"option4"                |"Wrong answer -1 points"      |
    |3                 |"option7"                |"Wrong answer -1 points"      |
    |4                 |"option11"               |"Correct answer 2 points"     |
    |5                 |"option14"               |"Wrong answer -1 points"      |
    |6                 |"option16"               |"Wrong answer -1 points"      |
    |7                 |"option20"               |"Wrong answer -1 points"      |
    |8                 |"option22"               |"Wrong answer -1 points"      |
    |9                 |"option25"               |"Wrong answer -1 points"      |
    |10                |"option29"               |"Correct answer 2 points"     |
   
And the student finishes the test and presses the button finish test
And the student clicks on show ranking button
Then the student will see all the students ordered from highest to lowest