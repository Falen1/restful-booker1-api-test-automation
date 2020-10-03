Feature:
  Este servicio es utilizado para
  la obtencion de todos los booking Ids

  Background:
    * url baseUrl

  Scenario: Validar que al realizar una peticion obtenga todos los Booking Ids
    Given path '/booking'
    When method GET
    Then status 200
