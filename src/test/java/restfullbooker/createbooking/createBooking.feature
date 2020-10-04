Feature: Create Booking
  Este servicio es utilizado para poder
  crear reservas

  Background:
    * url baseUrl
    * header Content-Type = 'application/json'
    * header Accept = 'application/json'

  Scenario: Verificar petición correcta para crear una reserva reciba 200
    Given path '/booking'
    And request
    """
     {
        "firstname" : "Jim",
        "lastname" : "Brown",
        "totalprice" : 111,
        "depositpaid" : true,
        "bookingdates" : {
        "checkin" : "2018-01-01",
        "checkout" : "2019-01-01"
     },
        "additionalneeds" : "Breakfast"
     }
    """
    When method POST
    Then status 200

