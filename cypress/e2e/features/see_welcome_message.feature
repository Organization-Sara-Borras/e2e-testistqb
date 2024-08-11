Feature: Welcome the student

Background:
    Given the student is on the ISTQB exam page
    
Scenario: See welcome message

When the student enters the name "Sara"
And the student click Enter button
Then the student should see the message "Welcome to ISTQB Online Test Sara"

When the student enters the name " "
And the student click Enter button
Then the student should see the error message "This field is mandatory, length should be less than 10."
