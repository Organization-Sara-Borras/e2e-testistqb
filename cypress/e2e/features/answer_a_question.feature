Feature: Answer a question

Scenario: Select a valid answer
Given the student is on the ISTQB exam page
When the user select answer "Respuesta B" on question "1"
And the user select answer "Respuesta A" on question "2"
And the user check answer "A"   on question "3"
And the user press correct button on question "1"
Then the user should see the message "Incorrect", -1 poitns. "on question "1"

Scenario Outline: Correct a question 
Given the student is on the ISTQB exam page
When the user select answer <selectedAnswer> on question <questionNumber>

Examples:
    | questionNumber   | selectedAnswer   | expectedMessage
    |"1"|              |"Respuesta B"     |"Incorrect, -1 points."|
    |"1"|              |"Respuesta A"     |"Correct, 2 points."|
    |"1"|              |"--"              |"Incorrect, 0 points."|

Scenario : Answer multiple questions 
Given the student is on the ISTQB exam page
When the user answer questions:

    | questionNumber   | selectedAnswer   
    |"1"|              |"Respuesta B"     
    |"2"|              |"Respuesta A"     
     
