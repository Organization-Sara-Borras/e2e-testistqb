Feature: Visit istqb Test Page

    As a student, I want to visit istqb test page, so I can practice for my exam

Scenario: Visit istqb test page

    Given the student visit istqb test page
    When the student enters their correct name
    Then the student receives a welcome message

Scenario 2: Visit istqb test page

    Given the student visit istqb test page
    When the student leaves their name empty
    Then the student sees the error message "This field is mandatory, length should be less than 10"


Feature 2: Take the test istqb

    As a student, I want to take the test to assess my level

Scenario 1: Visit istqb test page and start by answering the first question.

    Given the student visit istqb test page
    When the student clicks 'show answer' on the first question
    Then the answer must be the correct response


Feature 3: Take the test istqb and check my level

Scenario 1: The answer is correct

    Given the student visit istqb test page
    When the student answers the question correctly
    Then the student receives a message indicating that the answer is correct and their score

Scenario 2: The answer is incorrect

    Given the student visit istqb test page
    When the student answers the question incorrectly
    Then the student receives a message indicating that the answer is incorrect and their score

Scenario 3: The answer is empty

    Given the student visit istqb test page
    When the student leaves the answer blank
    Then the student receives a message: "Wrong answer 0 points"


Feature 4: Take an exam

Scenario 1:
    
    Given the student visit istqb test page
    When the student answers all the questions
    Then the student clicks 'Finish Test' to find out their final score

Feature 5: See the ranking

Scenario 1:
    
    Given the student visit istqb test page
    When the student 1 answers all the questions correctly
    When the student 2 answers all the questions empty
    When the student 3 answers all the questions incorrectly
    Then the students click the 'show rankine' button to find out their position on the list 

    

















