Feature: Get Booking
  Este servicio es utilizado para poder
  consultar la reserva por booking id

  Background:
    * url baseUrl
    * header Accept = 'application/json'

    Scenario: Verificar petición correcta con una reserva id reciba cod 200
      Given path '/booking/' + 13
      When method GET
      Then status 200


      