Feature: Answer a question

Scenario: Select a valid answer

Given the student is on the ISTQB exam page
When the user select answer "option1" on question "1"
And the user press correct button on question "1"
Then the user should see the message "Correct answer 2 points" on question "1"

Scenario Outline: Correct a question
Given the student is on the ISTQB exam page
When the user select answer <selectedAnswer> on question <questionNumber>
And the user press correct button on question <questionNumber>
Then the user should see the message <expectedMessage> on question <questionNumber>

Examples:
    | questionNumber     | selectedAnswer     | expectedMessage
    |"1"                 |"option2"           |"Wrong answer -1 points" |
    |"1"                 |"opton1"            |"Correct answer 2 points"|
    |"1"                 !"option3"           |"Wrong answer -1 points" |
    |"1"                 |"--"                |"Wrong answer 0 points"  |







