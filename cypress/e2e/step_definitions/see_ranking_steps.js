import {
    When,
    Then
  } from "@badeball/cypress-cucumber-preprocessor";

//const { find } = require("cypress/types/lodash");

When("the student clicks on show ranking button", ()=>{

    cy.get('[data-cy="showRankingButton"]').click();

});

Then("the student will see all the students ordered from highest to lowest", ()=>{

    cy.get('[data-cy="ranking"]').should('be.visible');

});

