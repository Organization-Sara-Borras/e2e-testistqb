import {
    When,
    Then
  } from "@badeball/cypress-cucumber-preprocessor";

//const { find } = require("cypress/types/lodash");

When ("the student select {string} on question {string}", (selectedAnswer, questionNumber) => {

    if (selectedAnswer === '') {
        cy.get('[data-cy="buttonReset'+questionNumber+'"]').click();
    } else {
        cy.get('[data-cy="'+selectedAnswer+'"]').check();
    }
});

When("the student clicks Send answer button on question {string}", (questionNumber)=>{

    cy.get('[data-cy="buttonSend'+questionNumber+'"]').click();
    
});

Then("the student see the message {string} on question {string}", (expectedMessage, questionNumber)=>{

    cy.get('[data-cy="answerText'+questionNumber+'"]').should('have.text', expectedMessage);

});
