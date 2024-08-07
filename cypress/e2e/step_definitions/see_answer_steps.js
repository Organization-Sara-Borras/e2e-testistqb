import {
    Given,
    When,
    Then,
  } from "@badeball/cypress-cucumber-preprocessor";

When ("the student enters the name {string}", (name) => {

  cy.get('[data-cy="input-nombre-bienvenido"]').type(name);

});

When ("the student click Enter button", () => {

  cy.get('[data-cy="button-start"]').click();
});

Then ("the student should see the message {string}", (message) => {

  cy.get('[data-cy="text-nombre-bienvenido"').should('have.text',message);
});

Then ("the student should see the error message {string}", (message) => {

  cy.get('[data-cy="error-welcome-message"').should('have.text',message);
});