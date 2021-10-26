Feature: API test

  Scenario: Test a POST API
    Given url 'https://petstore.swagger.io/v2/pet'
    And request {"id": 701, "category": {"id": 0, "name": "string" }, "name": "Rex", "photoUrls": ["string"], "tags": [ {"id": 0, "name": "string" } ], "status": "available" }
    When method POST
    Then status 200
    And print response
