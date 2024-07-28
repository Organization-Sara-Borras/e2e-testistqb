import {
    Given,
    When,
    Then,
  } from "@badeball/cypress-cucumber-preprocessor";

//const { find } = require("cypress/types/lodash");

When ("the user select answer {string} on question {string}", (selectedAnswer,questionnumber)=>{

    cy.visit("https://sarabor09.github.io/ISTQB-Online-Test/");
    cy.get('[data-cy="'+selectedAnswer+'"]').check();

});

When ("the user press correct button on question {string}", (questionnumber)=>{

    cy.visit("https://sarabor09.github.io/ISTQB-Online-Test/");
    cy.get('[data-cy="button'+questionnumber+'"]').click();
    
});

Then ("The user should see the message {string} on question {string}", (expectedMessage,questionnumber)=>{

    cy.visit("https://sarabor09.github.io/ISTQB-Online-Test/");
    cy.get('data-cy="answerText'+questionnumber+'"]').should('have.text',expectedMessage);

});
/*

When ("When the user answer questions", (datatable)=>{

    cy.visit("https://sarabor09.github.io/ISTQB-Online-Test/");
    datatable.hashes().forEach(element => {
    cy.get('[data-cy="question'+element.questionnumber+'"]').select(element.selectedAnswer);

    });
    
    
});
*/