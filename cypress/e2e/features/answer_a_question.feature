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

    |questionNumber |selectedAnswer  |expectedMessage
    |"1"            |"Respuesta A"             |"Correct answer 2 points"
    |"2"            |"Respuesta B"             |"Wrong answer -1 points"
    |"3"            |"Respuesta C"             |"Wrong answer -1 points"
    |""             |""                        |"Wrong answer 0 points"






