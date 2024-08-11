import {
    When,
    Then
  } from "@badeball/cypress-cucumber-preprocessor";

//const { find } = require("cypress/types/lodash");

When ("the student answers questions:", (datatable)=>{

   
    datatable.hashes().forEach(element => {
        if (element.selectedAnswer === '') {
            cy.get('[data-cy="buttonReset'+element.questionNumber+'"]').click();
        } else {
            cy.get('[data-cy='+element.selectedAnswer+']').check();
        }

        cy.get('[data-cy="buttonSend'+element.questionNumber+'"]').click();

    });    
    
});

When("the student finishes the test and presses the button finish test", ()=>{

    cy.get('[data-cy="finishButton"]').click();

});

Then("the student final score is {string}", (score)=>{

    cy.get('[data-cy="result"]').should('have.text', "You're result is -1 points.");

});

