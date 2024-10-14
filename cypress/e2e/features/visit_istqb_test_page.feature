Feature: Visit istqb Test Page

    As a student, I want to visit istqb test page, so I can practice for my exam

Scenario: Visit istqb test page

    Given the student visit istqb test page
    When the student enters their correct name
    Then the student receives a welcome message

Scenario: Visit istqb test page

    Given the student visit istqb test page
    When the student leaves their name empty
    Then the student sees the error message "This field is mandatory, length should be less than 10"

























