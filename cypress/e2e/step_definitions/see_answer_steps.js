import {
    Given,
    When,
    Then,
  } from "@badeball/cypress-cucumber-preprocessor";


When("the student click Show answer button", () => {
    cy.get('[data-cy="buttonShow1"]').click();
})

Then("the student sees the correct answer", () => {
    cy.get('[data-cy="answerText1"]').should('have.text', 'Correct answer is A');
})