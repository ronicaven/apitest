Feature: Hello World Feature

Scenario: Hello World
    * print 'hello world'

Scenario: this scenario is for defining variables
    * def firstVariable = 12
    * def secondVariable = 'cakes'
    * print 'firstVariable -> ' + firstVariable, 'secondVariable -> ' + secondVariable

Scenario: defining JSON object and print it
    Given def jsonObject =
    """
        [
          {
            "name": "jack",
            "phone" : 15435667788
          },
          {
            "name": "jennie",
            "phone" : 13443567234
          }
        ]
      """
    * print jsonObject[0].name, jsonObject[1].phone
 
  Scenario: Get request
   Given url 'https://crudcrud.com/api/9a3f0d3abe5349239af4bd91373fc7ca/unicorns'
    When method GET
   Then status 200

  Scenario: Post request
    * def user =
    """
    {
      "name": "Jane",
      "age": 21,
      "colour": "Black"
      }
    }
    """
    Given url 'https://crudcrud.com/api/9a3f0d3abe5349239af4bd91373fc7ca/'
    And path 'unicorns'
    And request user
    When method POST
    Then status 201

