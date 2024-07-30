import {
    When,
    Then
  } from "@badeball/cypress-cucumber-preprocessor";

//const { find } = require("cypress/types/lodash");

When("the user select answer {string} on question {string}", (selectedAnswer,questionnumber)=>{

    cy.get('[data-cy="'+selectedAnswer+'"]').check();

});

When("the user press correct button on question {string}", (questionnumber)=>{

    cy.get('[data-cy="button'+questionnumber+'"]').click();
    
});

Then("the user should see the message {string} on question {string}", (expectedMessage,questionnumber)=>{

    cy.get('[data-cy="answerText'+questionnumber+'"]').should('have.text',expectedMessage);

});


When ("When the user answer questions", (datatable)=>{

   
    datatable.hashes().forEach(element => {
        cy.get('[data-cy="option'+element.questionnumber+'"]').select(element.selectedAnswer);

    });
    
    
});
