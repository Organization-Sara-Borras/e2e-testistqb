Feature: Answer a question

Scenario: Select a valid answer

Given the student is on the ISTQB exam page
When the user select answer "option1" on question "1"
And the user press correct button on question "1"
Then the user should see the message "Correct answer 2 points" on question "1"