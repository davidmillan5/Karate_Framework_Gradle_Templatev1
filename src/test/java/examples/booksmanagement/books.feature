Feature: Test API

  Background: Define URL
    Given url someUrlBase

  Scenario: Login
    Given path '/api/v1/users/login/admin'
    And request
      """
      {
        "email": "erwinsmith@gmail.com",
        "password": "99999"
      }
      """
    When method Post
    Then status 200
    * def token = response.token