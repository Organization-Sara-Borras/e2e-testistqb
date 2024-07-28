import {
    Given,
    When,
    Then,
  } from "@badeball/cypress-cucumber-preprocessor";

  Given ("the student is on the ISTQB exam page", () => {
    
    cy.visit("https://sarabor09.github.io/ISTQB-Online-Test/");

  });
  