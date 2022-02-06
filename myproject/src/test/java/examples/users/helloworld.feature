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

Scenario: using karate-config
    * print baseUrl
    * print myVarName

Scenario: Get request
    Given url 'https://www.kloia.com/'
    And path 'blog'
    When method GET
    Then status 400