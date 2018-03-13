Feature: Google shopping filters
  In order to find the products that I want
  As a user on google shopping
  I want to be able to filter my results

  Background:
    Given I am on the google shopping page
    And I search for "Marmite"
    Then I get "Marmite" results

  Scenario: I can find items less than £15
    When I click on up to £15
    Then None of the results are more that £15

  Scenario: I can find only books
    When I click on books
    Then the results are all books

  Scenario: I can find products sold by Tesco
    When I click on Ocado
    Then the results are for Ocado

  Scenario: I can find products sold by Eat big
    When I click more
    And I click on Eat big
    Then the results are for Eat big

  Scenario: I can find products between £20 and £30
    When I enter £20
    And I enter £30
    And I click go
    Then the results are all between £20 and £30
