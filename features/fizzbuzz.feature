@FizzBuzz
Feature: As a user, I want to play FizzBuzz
  
  Scenario: As a user, I want to know when a number is Fizz, Buzz or FizzBuzz
    Given I introduce the number 3
    When I press the FizzBuzz button
    Then I should see Fizz

  Scenario Outline: As a user, I want to know when a number is Fizz, Buzz or FizzBuzz
    Given I introduce the number <number to play>
    When I press the FizzBuzz button
    Then I should see <result>

    Examples:
    | number to play | result   |
    | 3              | Fizz     |
    | 5              | Buzz     |
    | 7              | 7        |
    | 15             | FizzBuzz |