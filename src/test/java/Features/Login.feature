Feature: Login Functionality Testing

  Scenario: Validate login with valid credentials
    Given User is on the login page
    When User enters valid username "standard_user" and password "secret_sauce"
    And User clicks on the login button
    Then User should be redirected to the inventory page

  Scenario Outline: Validate login with different scenarios
    Given User is on the login page
    When User enters username "<username>" and password "<password>"
    And User clicks on the login button
    Then User should see "<expectedResult>" message

    Examples:
      | username      | password      | expectedResult      |
      | standard_user | secret_sauce  | BothCorrect          |
      | standard_user | Admin123      | User                 |
      | tct           | secret_sauce  | Password             |
      | admin         | admin         | BothIncorrect        |
