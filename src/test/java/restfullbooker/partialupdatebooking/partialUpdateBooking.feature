Feature: Partial Update Booking
  Este servicio es utilizado para poder
  actualizar de manera parcial las reservas del cliente

  Background:
    * url baseUrl
    * header Content-Type = 'application/json'
    * header Accept = 'application/json'

  Scenario: Verificar petición correcta para actualizar una reserva reciba 200
    * def createTokenResponse = call read('classpath:common/createToken.feature')
    * def accessToken = createTokenResponse.response.token
    Given path '/booking/' + 9
    * cookie token = accessToken
    And request
      """
      {
    "firstname" : "Carlitaa",
    "lastname" : "Brown"
      }
      """
    When method PATCH
    Then status 200
