Feature: deposit
    As a customer,
    I want to deposit from my account using ATM

    *** try-catch and throw new IllegalArgumentException
        in "Deposit Function" (Class ATM)                 ***

Background:
    Given a customer with id 1 and pin 111 with balance 0 exists
    And I login to ATM with id 1 and pin 111

Scenario: Normal Deposit
    When I deposit 50 from ATM
    Then my account balance is 50

Scenario: Deposit < 0
    When I deposit -50 from ATM
    Then my account balance is 0
