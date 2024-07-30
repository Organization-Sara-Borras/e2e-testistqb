Feature: Answer a question

Background:
    Given the student is on the ISTQB exam page


Scenario: Select a valid answer
When the user select answer "option1" on question "1"
And the user press correct button on question "1"
Then the user should see the message "Correct answer 2 points" on question "1"

Scenario Outline: Correct a question
When the user select answer <selectedAnswer> on question <questionNumber>
And the user press correct button on question <questionNumber>
Then the user should see the message <expectedMessage> on question <questionNumber>

Examples:
    | questionNumber     | selectedAnswer     | expectedMessage
    |"1"                 |"option2"           |"Wrong answer -1 points" |



Scenario: Answer multiple question 2
When the user answers questions:

    |questionNumber | selectedAnswer   |
    |1              | Respuesta B      |
    |2              | Respuesta A      |



/* en array sin comillas; hay que hacer 10 preguntas




