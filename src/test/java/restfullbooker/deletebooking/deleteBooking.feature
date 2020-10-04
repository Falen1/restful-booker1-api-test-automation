Feature: Delete Booking
  Este servicio es utilizado para poder
  eliminar las reservas de los clientes por Booking ID

  Background:
    * url baseUrl
    * header Content-Type = 'application/json'


  Scenario: Verificar petición correcta para eliminar una reserva reciba 201
    * def createTokenResponse = call read('classpath:common/createToken.feature')
    * def createBookingResponse = call read('classpath:common/createBooking.feature')
    * def accessToken = createTokenResponse.response.token
    * def bookingId = createBookingResponse.response.bookingid
    Given path '/booking/' + bookingId
    And cookie token = accessToken
    When method DELETE
    Then status 201
