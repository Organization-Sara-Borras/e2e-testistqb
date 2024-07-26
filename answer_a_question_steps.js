const { find } = require("cypress/types/lodash");

When ("the user select answer {string} on question {string}", (selectedAnswer,questionnumber)=>{

    cy.get('[data-cy="question'+questionnumber+'"]').select(selectedAnswer);
});

When ("the user select answer {string} on question {string}", (selectedAnswer,questionnumber)=>{

    cy.get('[data-cy="question'+questionnumber+'"]').find('input').check(selectedAnswer);

});


When ("the user press correct button on question {string}", (questionnumber)=>{

    cy.get('[data-cy="button-correct-question'+questionnumber+'"]').click();
    
});

Then ("The user should see the message {string} on question {string}", (expectedMessage,questionnumber)=>{

    cy.get('data-cy="messagequestion'+questionnumber+'"]').should('have.text',expectedMessage);

});

When ("When the user answer questions", (datatable)=>{

    datatable.hashes().forEach(element => {
    cy.get('[data-cy="question'+element.questionnumber+'"]').select(element.selectedAnswer);

    });
    
    
});