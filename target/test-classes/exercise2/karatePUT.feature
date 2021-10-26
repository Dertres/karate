Feature: API test

  Scenario: Test a PUT API
    Given url 'https://petstore.swagger.io/v2/pet/701'
    And request {"id": 701, "category": {"id": 0, "name": "string" }, "name": "Rex", "photoUrls": ["string"], "tags": [ {"id": 0, "name": "string" } ], "status": "available" }
    When method put
    Then status 405
    And print response
    And print responseStatus