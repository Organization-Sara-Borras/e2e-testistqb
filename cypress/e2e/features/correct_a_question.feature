Feature: Correct a question

Background:
    Given the student is on the ISTQB exam page

Scenario Outline: Correct a question

When the student select <selectedAnswer> on question <questionNumber>
And the student clicks Send answer button on question <questionNumber>
Then the student see the message <expectedMessage> on question <questionNumber>

Examples:

    |questionNumber |selectedAnswer |expectedMessage             |
    |"1"            |"option1"      |"Correct answer 2 points"   |
    |"2"            |"option5"      |"Wrong answer -1 points"    |
    |"3"            |"option8"      |"Wrong answer -1 points"    |
    |"4"            |""             |"Wrong answer 0 points"     |
    |"5"            |"option13"     |"Correct answer 2 points"   |