
Feature 3: Take the test istqb and check my level

Scenario 1: Take the test istqb and check my level

    Given the student visit istqb test page
    When the student answers the question correctly
    Then the student receives a message indicating that the answer is correct and their score

Scenario 2: Take the test istqb and check my level

    Given the student visit istqb test page
    When the student answers the question incorrectly
    Then the student receives a message indicating that the answer is incorrect and their score

Scenario 3: Take the test istqb and check my level

    Given the student visit istqb test page
    When the student leaves the answer blank
    Then the student receives a message: "Wrong answer 0 points"
