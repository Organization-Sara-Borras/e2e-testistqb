Feature: Answer a question

Scenario: Select a valid answer

Given the student is on the ISTQB exam page
When the user select answer "option1" on question "1"
And the user select answer "Respuesta A" on question "2"
And the user check answer "A" on question "3"
And the user press correct button on question "1"
Then the user should see the message "Incorrect", -1 poitns. "on question "1"