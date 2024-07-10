import {
    Given,
    When,
    Then,
  } from "@badeball/cypress-cucumber-preprocessor";

  Given("the student visit istqb test page", () => {

    cy.visit("https://sarabor09.github.io/ISTQB-Online-Test/");

    cy.visit ("/");

  });